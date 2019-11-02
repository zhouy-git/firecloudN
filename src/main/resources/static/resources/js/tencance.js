//准备视图对象
window.viewObj = {
    tbData: [{
        tempId: new Date().valueOf(),
        type: 2,
        name: '测试项名称',
        company: '东风测试',
        state: 1,
        creatTime: getDate(),
    }],
    typeData: [
        {id: 1, name: '日报告'},
        {id: 2, name: '周报告'},
        {id: 3, name: '月报告'}
    ],
    renderSelectOptions: function(data, settings){
        settings =  settings || {};
        var valueField = settings.valueField || 'value',
            textField = settings.textField || 'text',
            selectedValue = settings.selectedValue || "";
        var html = [];
        for(var i=0, item; i < data.length; i++){
            item = data[i];
            html.push('<option value="');
            html.push(item[valueField]);
            html.push('"');
            if(selectedValue && item[valueField] == selectedValue ){
                html.push(' selected="selected"');
            }
            html.push('>');
            html.push(item[textField]);
            html.push('</option>');
        }
        return html.join('');
    }
};

//layui 模块化引用
layui.use(['jquery', 'table', 'layer', 'laydate'], function(){
    var $ = layui.$, table = layui.table, form = layui.form, layer = layui.layer, laydate = layui.laydate;

    //数据表格实例化
    var tbWidth = $("#tableRes").width();
    var layTableId = "layTable";
    var tableIns = table.render({
        elem: '#dataTable',
        id: layTableId,
        data: viewObj.tbData,
        width: tbWidth,
        page: true,
        loading: true,
        even: false, //不开启隔行背景
        cols: [[
            {title: 'ID', type: 'numbers'},
            {field: 'type', title: '报告属性', templet: function(d){
                    var options = viewObj.renderSelectOptions(viewObj.typeData, {valueField: "id", textField: "name", selectedValue: d.type});
                    return '<a lay-event="type"></a><select name="type" lay-filter="type">' +
                        '<option value="">请选择分类</option>' + options + '</select>';
                }},
            {field: 'name', title: '报告名称', edit: 'text'},
            {field: 'company', title: '维保公司', edit: 'text'},
            {field: 'creatTime', title: '创建时间'},
            {field: 'state', title: '是否已备案', event: 'state', templet: function(d){
                    var html = ['<input type="checkbox" name="state" lay-skin="switch" lay-text="是|否"'];
                    html.push(d.state > 0 ? 'checked' : '');
                    html.push('/>');
                    return html.join('');
                }},
            {field: 'tempId', title: '操作', align:"center" , templet: function(d){
                    return '<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del" lay-id="'+ d.tempId +'">' +
                        '<i class="layui-icon layui-icon-delete"></i>移除</a>'+'<a class="layui-btn layui-btn-xs layui-btn-normal" lay-event="detail" lay-id="'+ d.tempId +'">' +
                        '<i class="layui-icon layui-icon-about"></i>详情</a>';
            }},
        ]],
        done: function(res, curr, count){
            viewObj.tbData = res.data;
        }
    });


    //日期时间选择器
    laydate.render({
        elem: '#creatTime'
        ,type: 'datetime'
        ,format: 'yyyy:MM:dd HH:mm:ss'
        ,value: new Date
    });

    //自定义格式
    laydate.render({
        elem: '#startTime'
        ,type: 'datetime'
    });

    //自定义格式
    laydate.render({
        elem: '#endTime'
        ,type: 'datetime'
    });


    //定义事件集合
    var active = {
        addRow: function(){	//添加一行
            var oldData = table.cache[layTableId];
            console.log(oldData);
            var newRow = {tempId: new Date().valueOf(), type: null, name: '请填写数据', company:'', state: 0, creatTime: getDate()};
            oldData.push(newRow);
            tableIns.reload({
                data : oldData
            });
        },
        updateRow: function(obj){
            var oldData = table.cache[layTableId];
            console.log(oldData);
            for(var i=0, row; i < oldData.length; i++){
                row = oldData[i];
                if(row.tempId == obj.tempId){
                    $.extend(oldData[i], obj);
                    return;
                }
            }
            tableIns.reload({
                data : oldData
            });
        },
        removeEmptyTableCache: function(){
            var oldData = table.cache[layTableId];
            for(var i=0, row; i < oldData.length; i++){
                row = oldData[i];
                if(!row || !row.tempId){
                    oldData.splice(i, 1);    //删除一项
                }
                continue;
            }
            tableIns.reload({
                data : oldData
            });
        },
        save: function(){
            var oldData = table.cache[layTableId];
            alert(JSON.stringify(oldData));
            for(var i=0, row; i < oldData.length; i++){
                row = oldData[i];
                if(!row.type){
                    layer.msg("检查每一行，请选择分类！", { icon: 5 }); //提示
                    return;
                }
            }
            document.getElementById("jsonResult").innerHTML = JSON.stringify(table.cache[layTableId], null, 2);	//使用JSON.stringify() 格式化输出JSON字符串
        }
    }

    //激活事件
    var activeByType = function (type, arg) {
        if(arguments.length === 2){
            active[type] ? active[type].call(this, arg) : '';
        }else{
            active[type] ? active[type].call(this) : '';
        }
    }

    //注册按钮事件
    $('.layui-btn[data-type]').on('click', function () {
        var type = $(this).data('type');
        activeByType(type);
    });

    //监听select下拉选中事件
    form.on('select(type)', function(data){
        var elem = data.elem; //得到select原始DOM对象
        $(elem).prev("a[lay-event='type']").trigger("click");
    });

    //监听工具条
    table.on('tool(dataTable)', function (obj) {
        var data = obj.data, event = obj.event, tr = obj.tr; //获得当前行 tr 的DOM对象;
        console.log(data);
        switch(event){
            case "type":
                //console.log(data);
                var select = tr.find("select[name='type']");
                if(select){
                    var selectedVal = select.val();
                    if(!selectedVal){
                        layer.tips("请选择一个分类", select.next('.layui-form-select'), { tips: [3, '#FF5722'] }); //吸附提示
                    }
                    console.log(selectedVal);
                    $.extend(obj.data, {'type': selectedVal});
                    activeByType('updateRow', obj.data);	//更新行记录对象
                }
                break;
            case "state":
                var stateVal = tr.find("input[name='state']").prop('checked') ? 1 : 0;
                $.extend(obj.data, {'state': stateVal})
                activeByType('updateRow', obj.data);	//更新行记录对象
                break;
            case "del":
                layer.confirm('真的删除行么？', function(index){
                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    layer.close(index);
                    activeByType('removeEmptyTableCache');
                });
                break;
            case "detail":
                layer.open({
                    type: 2 //Page层类型
                    ,area: ['75%', '73%']
                    ,title: '建筑基本信息'
                    ,shade: 0.6 //遮罩透明度
                    ,maxmin: true //允许全屏最小化
                    ,anim: 1 //0-6的动画形式，-1不开启
                    ,skin: 'layui-layer-rim'
                    ,content: '/api/getPage?pageName=statistical/buildInfo-detail'
                });
                break;
        }
    });

});

function getDate(){
    var today = new Date();
    var date;
    date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate() + "-" + today.toLocaleTimeString();
    return date;
}

