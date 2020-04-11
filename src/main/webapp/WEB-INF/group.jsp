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
    <title>小组</title>
    <%@include file="head.jsp"%>
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
<%@include file="top.jsp"%>
<!--</div>-->
<div id="group-left"></div>
<div id="group-right">
    <div class="user-a">我的小组</div>
    <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
    <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/登录账号.svg"></div><div class="user-name">用户</div><div class="user-mess-1"><img src="img/消息.svg"></div><div class="user-mess-2"><img src="img/发送.svg"></div></div>
</div>
<div id="bottom">
    <div id="Terms">Terms</div>
    <div id="Privacy">Privacy</div>
    <div id="cpy">© 2020 ChenChen, Inc.</div>

</div>
</body>
</html>
