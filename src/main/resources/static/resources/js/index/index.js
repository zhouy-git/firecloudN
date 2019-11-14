//进度条
layui.use(['element','jquery', 'layer'], function() {

    var $ = layui.jquery, layer = layui.layer

        , element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
//触发事件
    var active = {
        setPercent: function () {
//设置50%进度
            element.progress('demo', '50%')
        }
        , loading: function (othis) {

            var DISABLED = 'layui-btn-disabled';

            if (othis.hasClass(DISABLED)) return;
        }
    }

    $(document).ready(function() {

        //首页报警数据
        $.ajax({
            url: "/main/mainMapRes",
            type: "post",
            data: {},
            success : function (data) {
                $("#bjTotal").text(data.bj);
                $("#fireTotal").text(data.hj);
                $('#ycTotal').text(data.yc);
                $('#gzTotal').text(data.gz);
            }
        });

        //获取近一周的统计图
        $.ajax({
            url: "/main/week",
            type: "post",
            data: {},
            success : function (data) {
                //一周报警次数
                var option = {
                    tooltip:{
                        trigger: 'axis'
                    },
                    legend:{
                        data:['一周报警次数']
                    },
                    //折线图的大小，和显示y轴和x轴数据
                    grid: {
                        left: '2%',right: '2%', bottom: '1%', top: '5%', containLabel: true
                    },
                    xAxis:{
                        type: 'category',
                        data: data.data.categories
                    },
                    yAxis:{
                        type: 'value'
                    },
                    series:[{
                        name:'报警次数',
                        type:'line',
                        data: data.data.datas
                    }]
                };
                //初始化echarts实例
                var myChartoneweek = echarts.init(document.getElementById('echarts-dwtype'));

                //使用制定的配置项和数据显示图表
                myChartoneweek.setOption(option);

            }
        })

        //获取近四个月柱状图
        $.ajax({
            url : "/main/month",
            type: "post",
            data: {},
            success : function (data) {
                // 基于准备好的dom，初始化echarts实例
                var myChartN4m = echarts.init(document.getElementById('echarts-n4m'));
                // 指定图表的配置项和数据
                var option = {
                    /*title: {
                        text: 'ECharts 入门示例'
                    },*/
                    tooltip: {},
                    /*legend: { 图标展示
                        data:['销量']
                    },*/
                    //折线图的大小，和显示y轴和x轴数据
                    grid: {
                        left: '2%',right: '2%', bottom: '3%', top: '5%', containLabel: true
                    },
                    xAxis: {
                        data: data.data.categories
                    },
                    yAxis: {},
                    series: [{
                        name: '报警次数',
                        type: 'bar',
                        data: data.data.data
                    }]
                };

                // 使用刚指定的配置项和数据显示图表。
                myChartN4m.setOption(option);
            }
        });

        $('#bj_total').click(function () {

        });

        $('#fire').click(function () {
            clearInterval(dangIfo);
            layerOpen('火警','fire');

        });

        $('#yc').click(function () {
            clearInterval(ycInfo);
            layerOpen('异常','hideDan');


        });
        $('#gz').click(function () {
            clearInterval(gzInfo);
            layerOpen('故障','trouble');
        });

        var dangIfo;
        var ycInfo;
        var gzInfo;




    function layerOpen(title,id) {
        layer.open({
            type: 2 //Page层类型
            ,area: ['90%', '90%']
            ,title: title
            ,shade: 0.6 //遮罩透明度
            ,maxmin: true //允许全屏最小化
            ,anim: 1 //0-6的动画形式，-1不开启
            ,skin: 'layui-layer-rim'
            ,content: 'dealAlarmReport?id='+id
        });
    }

    var websocket = null;

    //判断当前浏览器是否支持WebSocket
    if('WebSocket' in window){
        websocket = new WebSocket("ws://39.104.16.168:8182/websocket/1234");
    }
    else{
        alert('Not support websocket')
    }

    //连接发生错误的回调方法
    websocket.onerror = function(){
        console.log('Socket错误！！！');
    };

    //连接成功建立的回调方法
    websocket.onopen = function(event){
        send();
        console.log("建立连接成功：")
    }

    //接收到消息的回调方法
    websocket.onmessage = function(data){
        var res = data.data;
        var json = eval('(' + res + ')');
        var bjTotal = $('#bjTotal').text();
        if (bjTotal==''|| bjTotal==null || bjTotal != json.bj) {$("#bjTotal").text(json.bj);}
        var hjVal = $("#fireTotal").text();
        if (hjVal == '' || hjVal==null) {$("#fireTotal").text(json.hj);}
        if (hjVal < json.hj) { $("#fireTotal").text(json.hj);dangIfo = setInterval(function () {
                var div=$("#fire");div.animate({height:'80%',opacity:'0.2'},"fast");div.animate({width:'25%',opacity:'0.9'},"fast");
            },1000);
        }
        var yc = $('#ycTotal').text();
        if (yc == '' || yc == null) {
            $('#ycTotal').text(json.yc);
        }
        if (yc < json.yc) {
            $('#ycTotal').text(json.yc);
            ycInfo = setInterval(function () {
                var div=$("#yc");
                div.animate({height:'80%',opacity:'0.2'},"fast");
                div.animate({width:'25%',opacity:'0.9'},"fast");
            },1000);
        }
        var gz = $('#gzTotal').text();
        if (gz == '' || gz == null) {
            $('#gzTotal').text(json.gz);
        }
        if (gz < json.gz) {
            $('#gzTotal').text(json.gz);
            gzInfo = setInterval(function () {
                var div=$("#gz");
                div.animate({height:'80%',opacity:'0.2'},"fast");
                div.animate({width:'25%',opacity:'0.9'},"fast");
            },1000);
        }
    }
    //连接关闭的回调方法
    websocket.onclose = function(){
        console.log('Socket连接关闭')
    }
    //关闭连接
    function closeWebSocket(){
        websocket.close();
    }
    //发送消息
    function send(){
        var message = $('#fireTotal').text();
        websocket.send(message);
    }
    });
    // 基于准备好的dom，初始化echarts实例
    var myChartN4m = echarts.init(document.getElementById('echarts-dayTotal'));
    // 指定图表的配置项和数据
    var option = {
        backgroundColor: '#FFF0F5',
        title: {
            text: '折线图',
            subtext: '模拟数据',
            x: 'center'
        },
        legend: {
            // orient 设置布局方式，默认水平布局，可选值：'horizontal'（水平） ¦ 'vertical'（垂直）
            orient: 'horizontal',
            // x 设置水平安放位置，默认全图居中，可选值：'center' ¦ 'left' ¦ 'right' ¦ {number}（x坐标，单位px）
            x: 'left',
            // y 设置垂直安放位置，默认全图顶端，可选值：'top' ¦ 'bottom' ¦ 'center' ¦ {number}（y坐标，单位px）
            y: 'top',
            data: ['预期','实际','假设']
        },
        //  图表距边框的距离,可选值：'百分比'¦ {number}（单位px）
        grid: {
            top: '16%',   // 等价于 y: '16%'
            left: '3%',
            right: '8%',
            bottom: '3%',
            containLabel: true
        },
        // 提示框
        tooltip: {
            trigger: 'axis'
        },
        //工具框，可以选择
        toolbox: {
            feature: {
                saveAsImage: {} //下载工具
            }
        },
        xAxis: {
            name: '周几',
            type: 'category',
            axisLine: {
                lineStyle: {
                    // 设置x轴颜色
                    color: '#912CEE'
                }
            },
            // 设置X轴数据旋转倾斜
            axisLabel: {
                rotate: 30, // 旋转角度
                interval: 0  //设置X轴数据间隔几个显示一个，为0表示都显示
            },
            // boundaryGap值为false的时候，折线第一个点在y轴上
            boundaryGap: false,
            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        },

        yAxis: {
            name: '数值',
            type: 'value',
            min:0, // 设置y轴刻度的最小值
            /*max:1800,  // 设置y轴刻度的最大值
            splitNumber:9,  // 设置y轴刻度间隔个数*/
            axisLine: {
                lineStyle: {
                    // 设置y轴颜色
                    color: '#87CEFA'
                }
            },
        },

        series: [
            {
                name: '预期',
                data: [820, 932, 301, 1434, 1290, 1330, 1320],
                type: 'line',
                symbolSize:8,  // 设置折线上圆点大小

                // 设置小圆点消失
                // 注意：设置symbol: 'none'以后，拐点不存在了，设置拐点上显示数值无效
                //symbol: 'none',
                // 设置折线弧度，取值：0-1之间
                smooth: 0.3,
            },

            {
                name: '实际',
                data: [620, 732, 941, 834, 1690, 1030, 920],
                type: 'line',
                // 设置折线弧度，取值：0-1之间
                smooth: 0.3,
                // 设置折线上圆点大小
                symbolSize:8,
                itemStyle:{
                    normal:{
                        // 拐点上显示数值
                        label : {
                            show: true
                        },
                        borderColor:'red',  // 拐点边框颜色
                        lineStyle:{
                            width:5,  // 设置线宽
                            type:'solid'  //'dotted'虚线 'solid'实线
                        }
                    }
                }
            },

            {
                name: '假设',
                data: [120, 232, 541, 134, 290, 130, 120],
                type: 'line',
                // 设置折线上圆点大小
                symbolSize:10,
                // 设置拐点为实心圆
                symbol:'circle',
                itemStyle: {
                    normal: {
                        // 拐点上显示数值
                        label : {
                            show: true
                        }/*,
                        lineStyle:{
                            // 使用rgba设置折线透明度为0，可以视觉上隐藏折线
                            color: 'rgba(0,0,0,0)'
                        }*/
                    }
                }
            }
        ],

        color: ['#00EE00', '#FF9F7F','#FFD700']
    };
    // 使用刚指定的配置项和数据显示图表。
    myChartN4m.setOption(option);


    /**
     * 画饼图，动态饼图统计
     * @param container 容器
     * @param legendData 菜单
     * @param seriesData 图表数据
     */
    function drawPie(container, legendData, seriesData) {
        var pieChart = echarts.init(document.getElementById(container));
        pieChartOption = {
            tooltip : {
                trigger : 'item',
                formatter : "{a} <br/>{b} : {c} ({d}%)"
            },
            legend : {
                show : true,
                type : 'scroll',
                orient : 'horizontal',
                left : 120,
                top : 20,
                bottom : 20,
                data : legendData,
                textStyle : {
                    color : 'white'
                }
            },
            //设置饼状图每个颜色块的颜色
            color : [ 'white', 'orange', 'yellow', 'green', 'blue', 'indigo', 'purple' ],
            series : [ {
                name : '占比',
                type : 'pie',
                radius: ['60%', '50%'],
                center:['40%','55%'],
                avoidLabelOverlap: true,
                label : {
                    normal : {
                        //饼形图显示格式
                        formatter : '{b} : {c} ({d}%) ',
                        rich : {
                            b : {
                                color : 'white',
                                fontSize : 20,
                                lineHeight : 33
                            },
                            //设置百分比数字颜色
                            per : {
                                color : '#9966FF',
                                fontSize : 20,
                                borderRadius : 2
                            }
                        }
                    }
                },
                data : seriesData,
                itemStyle : {
                    emphasis : {
                        shadowBlur : 20,
                        shadowOffsetX : 0,
                        shadowColor : 'rgba(0, 0, 0, 0.5)'
                    }
                }
            } ]
        };
        pieChart.setOption(pieChartOption);
        var app = {};
        app.currentIndex = -1;
        var myTimer = setInterval(
            function() {
                var dataLen = pieChartOption.series[0].data.length;
                if ((app.currentIndex < dataLen - 1)
                    && pieChartOption.series[0].data[app.currentIndex + 1].value == 0) {
                    pieChart.dispatchAction({
                        type : 'downplay',
                        seriesIndex : 0,
                        dataIndex : app.currentIndex
                    });
                    app.currentIndex = (app.currentIndex + 1) % dataLen;
                } else {
                    // 取消之前高亮的图形
                    pieChart.dispatchAction({
                        type : 'downplay',
                        seriesIndex : 0,
                        dataIndex : app.currentIndex
                    });
                    app.currentIndex = (app.currentIndex + 1) % dataLen;
                    // 高亮当前图形
                    pieChart.dispatchAction({
                        type : 'highlight',
                        seriesIndex : 0,
                        dataIndex : app.currentIndex
                    });
                    // 显示 tooltip
                    pieChart.dispatchAction({
                        type : 'showTip',
                        seriesIndex : 0,
                        dataIndex : app.currentIndex
                    });
                }
            }, 5000);
    }
    var legendData = [];
    var seriesData = [
        {name: "高风险", value: 12},
        {name: "低风险", value: 6},
        {name: "无风险", value: 4},

    ];
    drawPie("echarts-dwfxdj", legendData, seriesData);

    /**
     * 联网单位top10跑马灯效果
     * @param parentDom
     * @param childDom
     * @param speedParam
     * @param stayTime
     */

    $(function () {
        var index = 0;
        //每隔三秒进行一次滚动
        var timing =setInterval(function () {
            info();
        },3000);

        /* $(parent).hover(
             function(){clearInterval(timing);},
             function(){timing = setInterval("info()",2000);}
         )*/
        function info() {
            var ul =  $(".lwdwbj ul>li:eq(0)");
//复制第一个li
            var li = ul.clone();
//使用animate对li的外边距进行调整从而达到向上滚动的效果
            ul.animate({marginTop: "-44px"}, 1000, function () {
//对已经消失的li进行删除
                ul.remove();
//把复制后的li插入到最后
                $(".lwdwbj ul").append(li);
                ++index;
            })
        }
    })




    //地图
    var map = new BMap.Map("div-mapinfo");
    map.centerAndZoom(new BMap.Point(114.51808,38.051267), 11);

    //添加控件
    map.addControl(new BMap.NavigationControl());
    map.addControl(new BMap.NavigationControl());
    map.addControl(new BMap.ScaleControl());
    map.addControl(new BMap.OverviewMapControl());
    map.addControl(new BMap.MapTypeControl());
    map.setCurrentCity("石家庄市"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用

    //超过两秒钟自动回到定位点
    /*window.setTimeout(function(){
        map.panTo(new BMap.Point(116.409, 39.918));
    }, 2000);*/
    function showInfo() {
        map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放,默认禁用
    }
    map.addEventListener("click", showInfo);
    var a = $("#mapController");

    a.on("mouseover",function(){
        //鼠标移入事件
        //地图点击时间

    });

　　a.on("mouseout",function(){
      map.disableScrollWheelZoom(); //关闭鼠标滚轮缩放
      return false;
    });

    var local = new BMap.LocalSearch(map, {
        renderOptions:{map: map}
    });
    local.search("政府");

    var local = new BMap.LocalSearch(map,
        { renderOptions:{map: map, autoViewport: true}});
    local.searchNearby("商场");

    var local = new BMap.LocalSearch(map,
        { renderOptions:{map: map}});
    local.searchInBounds("银行", map.getBounds());

});





