layui.use(['element','table','form','jquery','layer'],function () {
    var element = layui.element, $ = layui.jquery;
    var form = layui.form;
    var layer = layui.layer;
    var table = layui.table;

    //第一个实例
    table.render({
        elem: '#fire-table'
        ,height: 300
        //,url: 'https://www.layui.com/test/table/demo3.json' //数据接口
        //,cellMinWidth: 60 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
        ,skin: 'line ' //表格风格 line （行边框风格）row （列边框风格）nob （无边框风格）
        ,even: true    //隔行换色
        ,page: true //开启分页
        ,cols: [
            [ //表头
            {type: 'checkbox', fixed: 'left'}
            ,{field: 'id', title: 'ID', align:'center',  unresize: true, sort: true}
            ,{field: 'username', align:'center', title: '单位'}
            ,{field: 'sex', align:'center',title: '名称'}
            ,{field: 'city', align:'center', title: '设备ID'}
            ,{field: 'sign', align:'center', title: '所属建筑'}
            ,{field: 'experience', align:'center', title: '楼层(区域)'}
            ,{field: 'score', align:'center', title: '安装位置'}
            ,{field: 'classify', align:'center', title: '设备状态 告警时间'}
            ,{field: 'wealth', align:'center', title: '操作'}
         ]
        ]
        ,response: {
            statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
        }
        ,parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
            return {
                "code": res.status, //解析接口状态
                "msg": res.message, //解析提示文本
                "count": res.total, //解析数据长度
                "data": res.rows.item //解析数据列表
            };
        }
    });


    //监听开关提交
    form.on('switch(switchTest)', function (data) {
        console.log(data.elem); //得到checkbox原始DOM对象
        console.log(data.elem.checked); //开关是否开启，true或者false
        console.log(data.value); //开关value值，也可以通过data.elem.value得到
        console.log(data.othis); //得到美化后的DOM对象
      /*  开关是否开启*/
        var x=data.elem.checked;

        layer.open({
            content: 'test'
            ,btn: ['确定', '取消']
            ,yes: function(index, layero){
                data.elem.checked=x;
                form.render();
                layer.close(index);
                //按钮【按钮一】的回调
                alert('按钮【按钮一】的回调');
            }
            ,btn2: function(index, layero){
                //按钮【按钮二】的回调
                data.elem.checked=!x;
                form.render();
                layer.close(index);
                //return false 开启该代码可禁止点击该按钮关闭
                alert('按钮【按钮二】的回调');
            }
            ,cancel: function(){
                //右上角关闭回调
                data.elem.checked=!x;
                form.render();
                //return false 开启该代码可禁止点击该按钮关闭
                alert('右上角关闭回调');
            }
        });
        return false;
    });


    //调转到指定的选项卡
    //获取url中id的参数
    var test = getQueryString("id");

    test = test.replace(".shtml","");
    //跳转到id为test的页面

    alert('选项卡的testId: '+test);
    element.tabChange('docDemoTabBrief', test)
    //…

    function getQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var reg_rewrite = new RegExp("(^|/)" + name + "/([^/]*)(/|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        var q = window.location.pathname.substr(1).match(reg_rewrite);
        if (r != null) {
            return unescape(r[2]);
        } else if (q != null) {
            return unescape(q[2]);
        } else {
            return null;
        }
    }
});
