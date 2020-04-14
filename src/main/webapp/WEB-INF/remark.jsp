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
    <title>批阅</title>
   <%@include file="head.jsp"%>
</head>
<body>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top"></div>
</span>
<div class="container">
    <%@include file="top.jsp"%>

    <div id="content">
        <div id="remark-left">
            <div id="left-top">
                <div id="top-label"><label>班级列表</label></div>
                <div id="top-content">
                    <ul>
                        <li><a href=""><div class="left-class">
                                <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div>
                </div></a></li>
                        <li><a href=""><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div>
                        </div></a></li>
                        <li><a href=""><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div>
                        </div></a></li>
                        <li><a href=""><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div>
                        </div></a></li>
                        <li><a href=""><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div>
                        </div></a></li>
                        <li><a href=""><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div>
                        </div></a></li>
                        <li><a href=""><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div>
                        </div></a></li>
                        <li><a href=""><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/作业批改.svg"/></div><div class="class-name"><span>计算机161</span></div>
                        </div></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="remark-mid">
            <ul>
                <li><div class="question-box"><div class="answer-content"></div></div></li>
                <li><div class="question-box"><div class="answer-content"></div></div></li>
                <li><div class="question-box"><div class="answer-content"></div></div></li>
                <li><div class="question-box"><div class="answer-content"></div></div></li>
            </ul>
        </div>
        <div id="remark-right">
            <div class="right-first">
                <button id="test" onclick="f()">提示框</button>
                <button id="test2" onclick="f()">提示框</button>
            </div>
            <div id="right-second"></div>
        </div>

    </div>

    <div id="bottom">
        <div id="Terms">Terms</div>
        <div id="Privacy">Privacy</div>
        <div id="cpy">© 2020 ChenChen, Inc.</div>
    </div>
</div>

</body>
</html>