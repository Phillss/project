<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/4/18
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>嘤嘤嘤</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div id="mains">
    <div id="mains-left">
        <div id="left-font">oops</div>
        <div class="content-font">页面状态404</div>
        <div class="content-font">您找的页面不存在 ::>_<::</div>
        <div class="content-font"><a href="${pageContext.request.contextPath}/log/home">返回首页吧</a></div>
    </div>
    <div id="mains-right">
        <img src="${pageContext.request.contextPath}/static/img/404.gif">
    </div>
</div>
</body>
</html>
