<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="static/css/log.css" />
    <link rel="icon" href="static/img/mark.svg" type="image/x-icon"/>
    <script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="static/js/script.js"></script>
    <script type="application/javascript">
    </script>
</head>
<body>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top">${user.userName}</div>
</span>
<div id="top-none-line"></div>
<div id="icon"><img src="static/img/mark.svg"></div>
<div id="lable"><label>登录评阅网</label></div>
<div id="login-box">
    <form action="login" method="post">
        <div class="form-group">
            <div class="form-group-label"><label>用户名</label></div>

            <input type="text" name="userName" class="form-control" placeholder="Email/职工号/手机号"/></div>
        <div class="form-group">
            <div class="form-group-label"><label>密码</label></div>

            <input type="password" name="userPassword" class="form-control" placeholder="密码"/></div>
        <div class="form-message"><label id="message">${message}</label></div>
        <div class="form-group-bottom">
            <input type="submit" class="form-control-sub" value="登录/注册"/>
        </div>
        <div id="forgot"><label><a href="">忘记密码？</a></label></div>
    </form>
</div>
<div id="over-bottom"></div>
<div id="bottom">
    <div id="cpy">© 2020 ChenChen, Inc.</div>

</div>
</body>
</html>

