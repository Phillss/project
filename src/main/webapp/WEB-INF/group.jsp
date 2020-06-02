<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>小组</title>
    <%@include file="head.jsp"%>

</head>
<body>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top"></div>
</span>
<%@include file="top.jsp"%>
<div id="group-left">
    <div id="mygroup">我的好友</div>
    <div id="grouplist">
        <c:forEach var="list" items="${tlist}">
            <div class="user-a"><div class="user-img"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div><div class="user-name" onclick="sho()">${list.teaName}</div><div class="user-mess-1"><img src="${pageContext.request.contextPath}/static/img/qurmessage.svg"></div><div class="user-mess-2" onclick="uploads()"><img src="${pageContext.request.contextPath}/static/img/send.svg"></div></div>
        </c:forEach>
    </div>
</div>
<div id="group-right">
    <div id="right-detail">
        <div id="pop"><img src="${pageContext.request.contextPath}/static/img/img_wubanqun.png"><span>还没有创建任何文件呦</span>
            <span><input type="file"/></span></div>
        <div id="share" style="display: none">
            <a href="${pageContext.request.contextPath}/static/file/princple.pdf"><div class="sfile">
                <span class="fimg"><img src="${pageContext.request.contextPath}/static/img/pdf.svg"></span>
                <span>二维码原理</span>
            </div></a>
            <a href="${pageContext.request.contextPath}/static/file/primary.pdf"><div class="sfile">
                <span class="fimg"><img src="${pageContext.request.contextPath}/static/img/pdf.svg"></span>
                <span>比赛样题</span>
            </div></a>
            <a href="${pageContext.request.contextPath}/static/file/Day.xlsx"><div class="sfile">
                <span class="fimg"><img src="${pageContext.request.contextPath}/static/img/ECEL.svg"></span>
                <span>统计表格</span>
            </div></a>
            <a href="${pageContext.request.contextPath}/static/file/os.doc"><div class="sfile">
                <span class="fimg"><img src="${pageContext.request.contextPath}/static/img/WORD.svg"></span>
                <span>《计算机操作系统》</span>
            </div></a>
            <a href="${pageContext.request.contextPath}/static/file/osp.doc"><div class="sfile">
                <span class="fimg"><img src="${pageContext.request.contextPath}/static/img/WORD.svg"></span>
                <span>试题</span>
            </div></a>
        </div>

    </div>
</div>

<div id="bottom">
    <div id="Terms">Terms</div>
    <div id="Privacy">Privacy</div>
    <div id="cpy">© 2020 ChenChen, Inc.</div>
</div>
</body>
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
    function sho() {
            document.getElementById("pop").style.display='none';
            document.getElementById("share").style.display='';
    }
    function uploads() {
        alert("上传文件");
    }
</script>
</html>
