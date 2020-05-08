<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/log.css" />
    <link rel="icon" href="${pageContext.request.contextPath}/static/img/mark.svg" type="image/x-icon"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/script.js"></script>
    <script type="text/javascript">
        function login(){
            var u=document.getElementById("us");
            var p=document.getElementById("pass");
            var mess=document.getElementById("message");
            if(u.value==""){
                mess.innerText="用户名不能为空！";
            }else if(p.value==""){
                mess.innerText="密码不能为空！";
            }else{
                var log=document.getElementById("loadings");
                log.style.display="block";
                document.getElementById("submit").value="登陆中……";
                var va=document.getElementsByClassName("form-control-sub");
                va[0].classList.add("disabledStatus");
                va[0].classList.remove("form-control-sub");
            }
        }
    </script>
    <style type="text/css">
        #loadings{
            display: none;
            margin-left: 47%;
            margin-top: 18%;
            position: fixed;
            width: 60px;
            height: 60px;
            z-index: 999;
            animation:relove 1s linear infinite;
        }
        #loadings img{
            width: 100%;
            height: 100%;
        }
        @keyframes relove{
            0%{
                transform: rotate(0deg);
            }
            100%{
                transform: rotate(360deg);
            }
        }
    </style>
</head>
<body>

<div id="loadings"><img src="${pageContext.request.contextPath}/static/img/load.svg" /></div>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top"></div>
</span>
<div id="top-none-line"></div>
<div id="icon"><img src="${pageContext.request.contextPath}/static/img/mark.svg"></div>
<div id="lable"><label>登录评阅网</label></div>
<div id="login-box">
    <form action="${pageContext.request.contextPath}/log/in" method="post">
        <div class="form-group">
            <div class="form-group-label"><label>用户名</label></div>

            <input type="text" id="us" name="userCount" class="form-control" placeholder="Email/职工号/手机号"/></div>
        <div class="form-group">
            <div class="form-group-label"><label>密码</label></div>

            <input type="password" id="pass" name="userPassword" class="form-control" placeholder="密码"/></div>
        <div class="form-message"><label id="message">${message}</label></div>
        <div class="form-group-bottom">
            <input type="submit" id="submit" class="form-control-sub" value="登录/注册" onclick="login()"/>
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

