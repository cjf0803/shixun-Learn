<%--
  Created by IntelliJ IDEA.
  User: wangwei
  Date: 2020/5/28
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <%--<script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts-en.common.js"></script>--%>
</head>
<body>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>

    </body>
    <script>
        $(document).ready(function() {

            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));
            // 指定图表的配置项和数据
            var names=[];
            var values=[];
            //数据加载完之前先显示一段简单的loading动画
            myChart.showLoading();
            $.ajax({
                type : "post",
                async : true,      //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
                url : "echars/EcharsShow",  //请求发送到dataActiont处
                data : {},
                dataType : "json",    //返回数据形式为json
                success : function(result) {
                    //请求成功时执行该函数内容，result即为服务器返回的json对象
                    if (result) {
                        for(var i=0;i<result.length;i++){
                            names.push(result[i].name);
                            values.push(result[i].value);
                        }
                        myChart.hideLoading();  //隐藏加载动画
                        myChart.setOption(
                            {
                                title: {
                                    text: '水果销售统计',
                                    x: 'center'
                                },
                                tooltip: {
                                    trigger: 'item',
                                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                                },
                                legend: {
                                    orient: 'vertical',
                                    left: 'left',
                                    data: names
                                },
                                series: [
                                    {
                                        name: '物料来源',
                                        type: 'pie',
                                        radius: '55%',
                                        center: ['50%', '60%'],
                                        data: result,
                                        itemStyle: {
                                            emphasis: {
                                                shadowBlur: 10,
                                                shadowOffsetX: 0,
                                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                                            }
                                        }
                                    }
                                ]
                            }
                        );
                    }
                },
                error : function(errorMsg) {
                    //请求失败时执行该函数
                    alert("图表请求数据失败!");
                    myChart.hideLoading();
                }
            });//end ajax

        });//刷新方法结束

    </script>
</html>
