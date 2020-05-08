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
    <script type="application/javascript">
        function fm(name,content,tim) {
            var d=document.getElementById("big-hidden-back");
            var ds=document.getElementById("mid-hidden-center");
            if(d.style.display=="block"){
                d.style.display="none";
                ds.style.display="none";
            }else{
                document.getElementById("hidden-top-title").innerText=name;
                document.getElementById("mid-contents").innerText=content;
                document.getElementById("inner-time").innerText=tim;
                d.style.display="block";
                ds.style.display="block";
            }
        }
    </script>
</head>
<body>
<div id="big-hidden-back" style="display: none;" onclick="fm()">
</div>
<div id="mid-hidden-center"  style="display: none;">
    <div id="hidden-top-t"><label>消息详情</label><div id="shut" onclick="fm()"><img src="${pageContext.request.contextPath}/static/img/shutdown.svg"></div></div>
    <div id="hidden-top-title"></div>
    <div id="mid-contents"></div>
    <div id="hidden-bottom-time"><span id="inner-time"></span></div>
    <div id="gotit"><button id="knowbutton" onclick="fm()">知道了</button></div>
</div>
<%@include file="top.jsp"%>
<div id="notice-container">
    <div id="notice-left">
<a href="${pageContext.request.contextPath}/message/allNotices"><div class="notice-button <c:if test="${type=='notice'}" ><c:out value="noticeTypeChoosen"/></c:if>">最近通知</div></a>
<a href="${pageContext.request.contextPath}/message/allFeedback"><div class="notice-button <c:if test="${type=='feedback'}" ><c:out value="noticeTypeChoosen"/></c:if>">收到反馈</div></a>
<a href="${pageContext.request.contextPath}/message/allBroadcast"><div class="notice-button <c:if test="${type=='broadcast'}" ><c:out value="noticeTypeChoosen"/></c:if>">未读公告</div></a>
<a href="${pageContext.request.contextPath}/message/allSystem"><div class="notice-button <c:if test="${type=='system'}" ><c:out value="noticeTypeChoosen"/></c:if>">系统消息</div></a>
    </div>
    <div id="notice-content">
        <div id="notice-content-top"><span>${typename}</span></div>
        <div id="notice-content-section">
            <button onclick="fa()" id="all" class="rleft sec-button notice-left <c:if test="${status=='all'}" ><c:out value="readStatus"/></c:if>">全部</button>
            <button onclick="faf()" id="after" class="rmid sec-button <c:if test="${status=='after'}" ><c:out value="readStatus"/></c:if>">已读</button>
            <button onclick="fab()" id="before" class="rright sec-button notice-right <c:if test="${status=='before'}" ><c:out value="readStatus"/></c:if>">未读</button>
        </div>
        <ul>
            <c:forEach items="${messageNotices}" var="notices">
            <li class="${notices.messageStatus} textli"><div class="text-box" onclick="fm('${notices.messageTypeName}','<%--${notices.messageContent}--%>','<fmt:formatDate value='${notices.messageTime}'/>')"><div class="notice-img"><img src="${pageContext.request.contextPath}/static/img/broadcast.svg"></div><div class="content-t"><div class="content-topic">${notices.messageTypeName}</div><div class="content-bre">${notices.messageContent}</div><div class="content-time"><fmt:formatDate value="${notices.messageTime}"/>

            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>
