<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>成绩统计</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="top.jsp"%>
<div id="count-contain">
<div id="count-left">
    <div id="left-top">
        <div id="top-label"><label>班级列表</label></div>
        <div id="top-content">
            <ul>
                <li><a href=""><div class="left-class">
                        <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><div class="class-name"><span>计算机161</span></div>
                </div></a></li>
                <li><a href=""><div class="left-class">
                    <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><div class="class-name"><span>计算机161</span></div>
                </div></a></li>
                <li><a href=""><div class="left-class">
                    <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><div class="class-name"><span>计算机161</span></div>
                </div></a></li>
                <li><a href=""><div class="left-class">
                    <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><div class="class-name"><span>计算机161</span></div>
                </div></a></li>
                <li><a href=""><div class="left-class">
                    <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><div class="class-name"><span>计算机161</span></div>
                </div></a></li>
                <li><a href=""><div class="left-class">
                    <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><div class="class-name"><span>计算机161</span></div>
                </div></a></li>
                <li><a href=""><div class="left-class">
                    <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><div class="class-name"><span>计算机161</span></div>
                </div></a></li>
            </ul>
        </div>
    </div>
</div>
<div id="count-mid">
    <div id="mid-top"></div>
    <div id="mid-label"><label>成绩统计信息(样例)</label></div>
    <div id="mid-content"></div>
    <%--<div id="mid-label2"><label>趋势图(样例)</label></div>
    <div id="mid-content2"></div>--%>
</div>
<div id="count-right">
    <div id="right-top">
        <span><label>预警信息</label></span>
        <p>根据多项教学质量数据完成教学评估</p>
    </div>
        <%--<div id="right-bottom">
        </div>--%>
</div>

</div>
<div id="bottom">
    <div id="Terms">Terms</div>
    <div id="Privacy">Privacy</div>
    <div id="cpy">© 2020 ChenChen, Inc.</div>

</div>
<script type="text/javascript">

    function getPost() {
        var s=document.getElementById("name");
        $.ajax({
            type: 'POST',
            url: "${pageContext.request.contextPath}/count/byCourse",
            contentType: "application/json",
            data: {"userName":"haha"},//JSON.stringify({"userName":"haha"}),JSON.stringify()必须有,否则只会当做表单的格式提交
            dataType: "json",//期待返回的数据类型
            success: function(){
                alert("success:");
            },
            error:function(data){
                alert("error"+data);
            }
        });
    }

    var myChart = echarts.init(document.getElementById('mid-content'));

    setTimeout(function () {

        option = {
            legend: {},
            tooltip: {
                trigger: 'axis',
                showContent: false
            },
            dataset: {
                source: [
                    ['product', '2015', '2016', '2017', '2018', '2019', '2020'],
                    ['Matcha Latte', 41.1, 30.4, 65.1, 53.3, 83.8, 98.7],
                    ['Milk Tea', 86.5, 92.1, 85.7, 83.1, 73.4, 55.1],
                    ['Cheese Cocoa', 24.1, 67.2, 79.5, 86.4, 65.2, 82.5],
                    ['Walnut Brownie', 55.2, 67.1, 69.2, 72.4, 53.9, 39.1]
                ]
            },
            xAxis: {type: 'category'},
            yAxis: {gridIndex: 0},
            grid: {top: '55%'},
            series: [
                {type: 'line', smooth: true, seriesLayoutBy: 'row'},
                {type: 'line', smooth: true, seriesLayoutBy: 'row'},
                {type: 'line', smooth: true, seriesLayoutBy: 'row'},
                {type: 'line', smooth: true, seriesLayoutBy: 'row'},
                {
                    type: 'pie',
                    id: 'pie',
                    radius: '30%',
                    center: ['50%', '25%'],
                    label: {
                        formatter: '{b}: {@2012} ({d}%)'
                    },
                    encode: {
                        itemName: 'product',
                        value: '2012',
                        tooltip: '2012'
                    }
                }
            ]
        };

        myChart.on('updateAxisPointer', function (event) {
            var xAxisInfo = event.axesInfo[0];
            if (xAxisInfo) {
                var dimension = xAxisInfo.value + 1;
                myChart.setOption({
                    series: {
                        id: 'pie',
                        label: {
                            formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                        },
                        encode: {
                            value: dimension,
                            tooltip: dimension
                        }
                    }
                });
            }
        });

        myChart.setOption(option);

    });
</script>
</body>
</html>