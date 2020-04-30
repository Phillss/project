<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/4/29
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>哎呀</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div id="refresh">
    <div id="releft">
        <div id="five"><img src="${pageContext.request.contextPath}/static/img/POP_500px.svg"></div>
        <div>哎呀！失去连接…… 刷新试试吧(；′⌒`)~</div>
        <div>或<a href="${pageContext.request.contextPath}/log/home">回到首页</a></div>
    </div>
</div>
</body>
</html>
