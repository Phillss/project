<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>小组</title>
    <script  src="static/lib/naranja.min.js"></script>
    <link rel="stylesheet" href="static/lib/naranja.min.css">
    <link rel="icon" href="static/img/mark.svg" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="static/css/default.css" />
    <script type="application/javascript">
        function f() {
            var d=document.getElementById("big-hidden");
            var ds=document.getElementById("mid-hidden");
            if(d.style.display=="block"){
                d.style.display="none";
                ds.style.display="none";
            }else{
                d.style.display="block";
                ds.style.display="block";
            }
        }
    </script>
</head>
<body>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top"></div>
</span>
<!--<div class="container">-->
<div id="top-line">
    <div id="top-bend">
        <a href=""><img src="static/img/icons.svg"></a>
    </div>
    <div id="top-search"><form action=""><input id="top-search-input" type="text" placeholder="快速检索文档……" autocomplete="off"/></form>
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
<!--</div>-->
<div id="group-left"></div>
<div id="group-right">
    <div class="user-a">我的小组</div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
</div>
<div id="bottom">
    <div id="Terms">Terms</div>
    <div id="Privacy">Privacy</div>
    <div id="cpy">© 2020 ChenChen, Inc.</div>

</div>
</body>
</html>
