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
        function fa() {
            var alls=document.getElementsByClassName("textli");
            for(var i=0;i<alls.length;i++){
                alls[i].style.display='block';
            }
            var va=document.getElementsByClassName("readStatus");
            va[0].classList.remove("readStatus");
            var rleft=document.getElementsByClassName("rleft");
            rleft[0].classList.add("readStatus");
        }
        function faf() {
            var befores=document.getElementsByClassName("before");
            var afters=document.getElementsByClassName("after");
            for(var i=0;i<befores.length;i++){
                befores[i].style.display='none';
            }
            for(var i=0;i<afters.length;i++){
                afters[i].style.display='block';
            }
            var va=document.getElementsByClassName("readStatus");
            va[0].classList.remove("readStatus");
            var rmid=document.getElementsByClassName("rmid");
            rmid[0].classList.add("readStatus");
        }
        function fab() {
            var afters=document.getElementsByClassName("after");
            var befores=document.getElementsByClassName("before");
            for(var i=0;i<afters.length;i++){
                afters[i].style.display='none';
            }
            for(var i=0;i<befores.length;i++){
                befores[i].style.display='block';
            }
            var va=document.getElementsByClassName("readStatus");
            va[0].classList.remove("readStatus");
            var rright=document.getElementsByClassName("rright");
            rright[0].classList.add("readStatus");
        }

    </script>
</head>
<body>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top"><lable>详细内容</lable></div>
    <div id="mid-contents"></div>
</span>
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
            <li class="${notices.messageStatus} textli"><div class="text-box" onclick="f()"><div class="notice-img"><img src="${pageContext.request.contextPath}/static/img/公告.svg"></div><div class="content-t"><div class="content-topic">${notices.messageTypeName}</div><div class="content-bre"><p>${notices.messageContent}</p></div><div class="content-time"><fmt:formatDate value="${notices.messageTime}"/>

            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>
