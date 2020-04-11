<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人主页</title>
    <%@include file="head.jsp"%>

</head>
<body>
<%@include file="top.jsp"%>
<div id="profile-top"><img src="${pageContext.request.contextPath}/static/img/profile.svg" alt=""/><div id="name"><label>我的信息</label></div></div>
<div id="profile-img"><img src="${pageContext.request.contextPath}/static/img/classmate1.svg" alt=""/></div>
<div id="profile-left">
    <div id="profile-text">
        <div class="profile-line"><label>用户名:   陈大年</label></div>
        <div class="profile-line"><label>用户昵称:   大年</label></div>
        <div class="profile-line"><label>性别:   男</label></div>
        <div class="profile-line"><label>用户类型:   教师</label></div>
        <div class="profile-line"><div id="profile-user"><label>用户认证:   通过</label></div><div id="profile-pass"><img src="${pageContext.request.contextPath}/static/img/成功.svg"></div></div>
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
