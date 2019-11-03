layui.use('table', function(){
    var table = layui.table;

    //第一个实例
    table.render({
        elem: '#sysUserInfo'
        ,height: 'full-220'
       /* ,url: '../../json/pInfo.json' //数据接口*/
        /*,cellMinWidth: 80*/ //全局定义常规单元格的最小宽度，layui 2.2.1 新增
        ,skin: 'line ' //表格风格 line （行边框风格）row （列边框风格）nob （无边框风格）
        ,even: true    //隔行换色
        /*,page: true //开启分页*/
        ,cols: [[ //表头
            {field: 'id', title: 'ID', sort: true, fixed: 'left'}
            ,{field: 'username', title: '用户名'}
            ,{field: 'sex', title: '性别'}
            ,{field: 'loginname', title: '登录名'}
            ,{field: 'city', title: '地址'}
            ,{field: 'experience', title: '职务'}
            ,{field: 'score', title: '部门'}
            ,{field: 'classify', title: '上级经理'}
            ,{field: 'wealth', title: '账号状态'}
            ,{field: 'peoplestatus', title: '人员状态'}
            , {field: 'operate', title: '操作', fixed: 'right',toolbar: '#barDemo'}
        ]]
        ,data: [{
            "id": "10001"
            ,"username": "杜甫"
            ,"email": "xianxin@layui.com"
            ,"sex": "男"
            ,"loginname": 'system'
            ,"city": "浙江杭州"
            ,"experience": "程序员"
            ,"score": "192.168.0.8"
            ,"classify": "108"
            ,"wealth": "2016-10-14"
            ,"peoplestatus" : "在职"
        }, {
            "id": "10002"
            ,"username": "李白"
            ,"email": "xianxin@layui.com"
            ,"sex": "男"
            ,"loginname": 'ls'
            ,"city": "浙江杭州"
            ,"experience": "程序员"
            ,"score": "192.168.0.8"
            ,"classify": "108"
            ,"wealth": "2016-10-14"
            ,"peoplestatus" : "在职"
        }, {
            "id": "10003"
            ,"username": "王勃"
            ,"email": "xianxin@layui.com"
            ,"sex": "男"
            ,"loginname": 'ww'
            ,"city": "浙江杭州"
            ,"experience": "程序员"
            ,"score": "192.168.0.8"
            ,"classify": "108"
            ,"wealth": "2016-10-14"
            ,"peoplestatus" : "在职"
        }, {
            "id": "10004"
            ,"username": "李清照"
            ,"email": "xianxin@layui.com"
            ,"sex": "女"
            ,"loginname": 'lqz'
            ,"city": "浙江杭州"
            ,"experience": "程序员"
            ,"score": "192.168.0.8"
            ,"classify": "108"
            ,"wealth": "2016-10-14"
            ,"peoplestatus" : "在职"
        }, {
            "id": "10005"
            ,"username": "冰心"
            ,"email": "xianxin@layui.com"
            ,"sex": "女"
            ,"loginname": 'bx'
            ,"city": "浙江杭州"
            ,"experience": "程序员"
            ,"score": "192.168.0.8"
            ,"classify": "108"
            ,"wealth": "2016-10-14"
            ,"peoplestatus" : "在职"
        }, {
            "id": "10006"
            ,"username": "贤心"
            ,"email": "xianxin@layui.com"
            ,"sex": "男"
            ,"loginname": 'xx'
            ,"city": "浙江杭州"
            ,"experience": "程序员"
            ,"score": "192.168.0.8"
            ,"classify": "108"
            ,"wealth": "2016-10-14"
            ,"peoplestatus" : "在职"
        }, {
            "id": "10007"
            ,"username": "赵六"
            ,"email": "xianxin@layui.com"
            ,"sex": "男"
            ,"loginname": 'zl'
            ,"city": "浙江杭州"
            ,"experience": "程序员"
            ,"score": "192.168.0.8"
            ,"classify": "108"
            ,"wealth": "2016-10-14"
            ,"peoplestatus" : "在职"
        }, {
            "id": "10008"
            ,"username": "刘八"
            ,"email": "xianxin@layui.com"
            ,"sex": "男"
            ,"loginname": 'lb'
            ,"city": "浙江杭州"
            ,"experience": "程序员"
            ,"score": "192.168.0.8"
            ,"classify": "108"
            ,"wealth": "2016-10-14"
            ,"peoplestatus" : "在职"
        }]
       /* ,response: {
            statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
        }*/
       /* ,parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
            return {
                "code": res.status, //解析接口状态
                "msg": res.message, //解析提示文本
                "count": res.total, //解析数据长度
                "data": res.rows.item //解析数据列表
            };
        }*/
    });

    /*九小场所数据表格*/
    table.render({
        elem: '#jxcsTable'
        ,height: 300
        ,url: 'https://www.layui.com/demo/table/user/' //数据接口
        ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
        ,skin: 'line ' //表格风格 line （行边框风格）row （列边框风格）nob （无边框风格）
        ,even: true    //隔行换色
        /*,page: true //开启分页*/
        , cols: [[ //表头
            {field: 'id', title: '序号', sort: true, fixed: 'left'}
            , {field: 'companyname', title: '单位名称',width: 550}
            , {field: 'time', title: '接入时间'}
            , {field: 'companyaddress', title: '单位地址',width: 550}
            , {field: 'sign', title: '操作'}

        ]]
    });
});

/*分页*/
layui.use(['laypage','layer'],function () {
    var laypage = layui.laypage;
    //完整功能
    laypage.render({
        elem: 'firemen'
        ,count: 20
        ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
        ,jump: function(obj){
            console.log(obj)
        }
    });

    laypage.render({
        elem: 'jxcs'
        ,count: 20
        ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
        ,jump: function(obj){
            console.log(obj)
        }
    });
});

layui.use('element',function () {
    var element = layui.element;
    var $ = layui.jquery;

    $('#search-company').click(function () {
        $('#search-company').style.backgroundImage = 'none';
})
});

