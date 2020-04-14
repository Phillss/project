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
    <div id="mid-label2"><label>趋势图(样例)</label></div>
    <div id="mid-content2"></div>
</div>
<div id="count-right">
    <div id="right-top">
        <span><label>预警信息</label></span>
        <p>还是大家纷纷快捷回复技术的好方法会计恒等式
            的设计手法和监控数据返回数据上看地方九分的
            大家发挥科技大厦附近扣税的活动经费打发打发
            的机会房价开始打电话附近的合肥京东方对方的
            点击恢复阶段和佛教的护法几号放假的肌肤</p>
    </div>
    <div id="right-bottom">
    </div>
</div>
<div id="bottom">
    <div id="Terms">Terms</div>
    <div id="Privacy">Privacy</div>
    <div id="cpy">© 2020 ChenChen, Inc.</div>

</div>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('mid-content2'));
    var option = {
        title: {
            text: ''
        },
        tooltip: {},
        legend: {
            data:['销量']
        },
        xAxis: {
            data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
        },
        yAxis: {},
        series: [{
            name: '销量',
            type: 'bar',
            data: [5, 20, 36, 10, 10, 20]
        }]
    };
    myChart.setOption(option);

    var myChart2 = echarts.init(document.getElementById('mid-content'));
    var option2 = {
        series : [
            {
                name: '访问来源',
                type: 'pie',
                radius: '55%',
                roseType: 'angle',
                itemStyle: {
                    // 设置扇形的颜色
                    // color: '#c23531',
                    /*shadowBlur: 200,*/
                    /*shadowColor: 'rgba(0, 0, 0, 0.5)'*/
                },
                data:[
                    {value:235, name:'视频广告'},
                    {value:274, name:'联盟广告'},
                    {value:310, name:'邮件营销'},
                    {value:335, name:'直接访问'},
                    {value:400, name:'搜索引擎'}
                ]
            }
        ]
    };
    myChart.showLoading();
    myChart2.setOption(option2);
</script>
</body>
</html>