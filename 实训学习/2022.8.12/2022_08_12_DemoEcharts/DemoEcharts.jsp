<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" ></meta>
    <script type="text/javascript" src="js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/echarts.min.js"></script>
</head>
<body>
<div id="chartmain" style="width: 600px;height: 400px"></div>

<script type="text/javascript">

    $(function(){
        var myCharts=echarts.init(document.getElementById('chartmain'));
        myCharts.setOption({
            color: ['#3398DB'],
            title:{
                text:'ECharts 班级年龄排行榜'
            },
            tooltip : {
                trigger: 'axis',
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            legend: {
                data: ['年龄']
            },

            xAxis : {
                data : []
            },
            yAxis : {

            },
            series : [
                {
                    name:'年龄',
                    type:'bar',
                    data:[]
                }
            ]
        });

        //加载时显示loading动画
        myCharts.showLoading();
        //放x轴值得数组
        var gradeName=[];
        //放y轴值得数组
        var score=[];

        //写ajax给数组存值
        $.ajax({
            type: "post",
            url :"person/findAll",
            dataType: "json",        //返回数据形式为json
            success: function (data) {
                //请求成功时执行该函数内容，result即为服务器返回的json对象
                $(data).each(function(i,e){
                    gradeName.push(e.name);    //挨个取出班别放数组
                    score.push(e.age);     //挨个取出分数放数组
                });
                myCharts.hideLoading();    //隐藏加载动画
                myCharts.setOption({        //加载数据图表
                    xAxis: {
                        data: gradeName
                    },
                    series: [{
                        // 根据名字对应到相应的系列
                        name: '年龄',
                        type:'bar',
                        barWidth: '60%',
                        data: score,
                        itemStyle: {
                            normal: {
                                label: {
                                    show: true,       //开启显示
                                    position: 'top',  //在上方显示
                                    textStyle: {      //数值样式
                                        color: 'red',
                                        fontSize: 12
                                    }
                                }
                            }
                        }

                    }]
                });

            },
            error: function (errorMsg) {
                //请求失败时执行该函数
                alert("图表请求数据失败!");
                myCharts.hideLoading();
            }
        })
    });
</script>

</body>
</html>
