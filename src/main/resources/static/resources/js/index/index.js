//进度条
layui.use(['element','jquery'], function() {

    var $ = layui.jquery

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
                console.log(data);
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
        })
    });




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

    //应用地图样式
   /* map.setMapStyleV2({
        styleId: '9234504bff2646441650cc95fa200efa'
    });*/

    //定位
   /* function myFun(result){
        var cityName = result.name;
        map.setCenter(cityName);
        alert("当前定位城市:"+cityName);
    }

    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function(r){
        if(this.getStatus() == BMAP_STATUS_SUCCESS){
            var mk = new BMap.Marker(r.point);
            map.addOverlay(mk);
            map.panTo(r.point);
            alert('您的位置：'+r.point.lng+','+r.point.lat);
            var myCity = new BMap.LocalCity();
            myCity.get(myFun);
        }
        else {
            alert('failed'+this.getStatus());
        }
    },{enableHighAccuracy: true})*/

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





