<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>成绩统计</title>
    <link rel="stylesheet" type="text/css" href="static/css/default.css" />
    <script  src="static/lib/naranja.min.js"></script>
    <link rel="stylesheet" href="static/lib/naranja.min.css">
    <link rel="icon" href="static/img/mark.svg" type="image/x-icon"/>
</head>
<body>
<div id="top-line">
    <div id="top-bend">
        <a href=""><img src="static/img/icons.svg"></a>
    </div>
    <div id="top-search"><form action=""><input id="top-search-input" type="text" placeholder="快速检索文档……" autocomplete="off"></form>
    </div>
    <div id="top-section">
        <ul>
            <li><a href="home">总 览</a></li>
            <li><a href="remark">班 级</a></li>
            <li><a href="group">小 组</a></li>
            <li><a href="count">统 计</a></li>
            <li><a href="profile">设 置</a></li>
        </ul>
    </div>
    <div id="top-notice">
        <details class="details-over">
            <summary><img src="static/img/通知.svg"/></summary>
            <div class="notice-box">
                <div class="notice-line"><a href="">最近消息</a><div class="sups">2</div></div>
                <div class="notice-line"><a href="">最近通知</a><div class="sups">20</div></div>
                <div class="notice-line"><a href="">收到私信</a><div class="sups">12</div></div>
                <div class="notice-line"><a href="">系统通知</a><div class="sups">18</div></div>
            </div>
        </details>
    </div>
    <div id="top-add">
        <details class="details-over">
            <summary><img src="static/img/添加.svg" /></summary>
            <div class="notice-box">
                <div class="notice-line"><a href="">新建XX</a><div class="sups">2</div></div>
                <div class="notice-line"><a href="">新增XX</a><div class="sups">20</div></div>
                <div class="notice-line"><a href="">新增XX</a><div class="sups">12</div></div>
                <div class="notice-line"><a href="">新增XX</a><div class="sups">18</div></div>
            </div>
        </details>

    </div>
    <div id="top-profile"><a href="profile.html" ><img src="static/img/用户.svg" alt=""/></a></div>
</div>
<div id="count-left">
    <div id="left-top">
        <div id="top-label"><label>班级列表</label></div>
        <div id="top-content">
            <ul>

                <li><div class="left-class">
                    <a href="">
                        <div class="class-img"><img src="static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div></a>
                </div></li>
                <li><div class="left-class">
                    <a href="">
                        <div class="class-img"><img src="static/img/作业批改.svg"/></div><div class="class-name"><span>计算机162</span></div></a>
                </div></li>
                <li><div class="left-class">
                    <a href="">
                        <div class="class-img"><img src="static/img/作业批改.svg"/></div><div class="class-name"><span>网络161</span></div></a>
                </div></li>
                <li><div class="left-class">
                    <a href="">
                        <div class="class-img"><img src="static/img/作业批改.svg"/></div><div class="class-name"><span>网络162</span></div></a>
                </div></li>
                <li><div class="left-class">
                    <a href="">
                        <div class="class-img"><img src="static/img/作业批改.svg"/></div><div class="class-name"><span>软件161</span></div></a>
                </div></li>
                <li><div class="left-class">
                    <a href="">
                        <div class="class-img"><img src="static/img/作业批改.svg"/></div><div class="class-name"><span>软件161</span></div></a>
                </div></li>
                <li><div class="left-class">
                    <a href="">
                        <div class="class-img"><img src="static/img/作业批改.svg"/></div><div class="class-name"><span>软件161</span></div></a>
                </div></li>
            </ul>
        </div>
    </div>
</div>
<div id="count-mid">
    <div id="mid-top"></div>
    <div id="mid-label"><label>成绩统计信息(样例)</label></div>
    <div id="mid-content"><img src="static/img/remarkDemo.png"></div>
    <div id="mid-label2"><label>趋势图(样例)</label></div>
    <div id="mid-content2"><img src="static/img/remarkDemo2.png"></div>
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
        <img src="static/img/remarkDemo3.png">
    </div>
</div>
<div id="bottom">
    <div id="Terms">Terms</div>
    <div id="Privacy">Privacy</div>
    <div id="cpy">© 2020 ChenChen, Inc.</div>

</div>
</body>
</html>