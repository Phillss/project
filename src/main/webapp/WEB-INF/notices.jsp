<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/4/6
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>消息</title>
    <%@include file="head.jsp"%>
</head>
<body>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top"></div>
</span>
<%@include file="top.jsp"%>
<div id="notice-container">
    <div id="notice-left">
        <a href=""><div class="notice-button">最近通知</div></a>
        <a href=""><div class="notice-button">收到反馈</div></a>
        <a href=""><div class="notice-button">未读公告</div></a>
        <a href=""><div class="notice-button">系统消息</div></a>
    </div>
    <div id="notice-content">
        <div id="notice-content-top"><span>XX消息</span></div>
        <div id="notice-content-section"><button class="sec-button notice-left">全部</button> <button class="sec-button">已读</button> <button class="sec-button notice-right">未读</button></div>
        <ul>
            <c:forEach items="${messageNotices}" var="notices">
                <li><div class="text-box" onclick="f()"><div class="notice-img"><img src="${pageContext.request.contextPath}/static/img/公告.svg"></div><div class="content-t"><div class="content-topic">${notices.messageType}</div><div class="content-bre"><p>${notices.messageContent}</p></div><div class="content-time"><fmt:formatDate value="${notices.messageTime}"
                                                                                                                                                                                                                                                                                                                                                                   pattern="yyyy-MM-dd" /></div></div></div></li>
            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>
