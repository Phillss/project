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
    <title>个人主页</title>
    <link rel="stylesheet" type="text/css" href="static/css/default.css" />
    <script  src="static/lib/naranja.min.js"></script>
    <link rel="stylesheet" href="static/lib/naranja.min.css">
    <link rel="icon" href="static/img/mark.svg" type="image/x-icon"/>
    <script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="static/js/script.js"></script>

</head>
<body>
<div id="top-line">
    <div id="top-bend">
        <a href=""><img src="static/img/icons.svg"></a>
    </div>
    <div id="top-search"><form action="remark.html"><input id="top-search-input" type="text" placeholder="快速检索文档……" autocomplete="off"></form>
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
    <div id="top-profile"><a href="" ><img src="static/img/用户.svg" alt=""/></a></div>
</div>
<div id="profile-top"><img src="static/img/profile.svg" alt=""/><div id="name"><label>我的信息</label></div></div>
<div id="profile-img"><img src="static/img/classmate1.svg" alt=""/></div>
<div id="profile-left">
    <div id="profile-text">
        <div class="profile-line"><label>用户名:   陈大年</label></div>
        <div class="profile-line"><label>用户昵称:   大年</label></div>
        <div class="profile-line"><label>性别:   男</label></div>
        <div class="profile-line"><label>用户类型:   教师</label></div>
        <div class="profile-line"><div id="profile-user"><label>用户认证:   通过</label></div><div id="profile-pass"><img src="static/img/成功.svg"></div></div>
        <div class="profile-line"><label>注册日期:   2020-2-2</label></div>
        <div class="profile-line"><label>批阅数量:   100k</label></div>
    </div>
</div>
<div id="profile-content">
    <div class="contents"></div>
    <div class="contents"></div>
</div>
<!-- <div id="bottom">
     <div id="Terms">Terms</div>
     <div id="Privacy">Privacy</div>
     <div id="cpy">© 2020 ChenChen, Inc.</div>

 </div>-->
</body>
</html>
