<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/4/23
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <%@include file="head.jsp"%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>题库</title>
</head>
<body>
<%@include file="top.jsp" %>
<div id="remark-top-section">
    <div class="repositorymodul" id="repository-begain">课本</div>
    <div class="repositorymodul">知识点</div>
    <div class="repositorymodul">试卷</div>
    <div class="repositorymodul">我的</div>
    <div id="repositorysub">出题</div>
</div>
<div id="repositorycon">
    <div id="repository-left">
        <div class="repo-left-con">
            <ul class="menu">
                <li class="fmenu">电子工业出版社</li>
                <li class="fmenu">人民邮电出版</li>
                <li class="fmenu">上海交通大学出版社</li>
                <li class="fmenu">清华大学出版社</li>
                <li class="fmenu">北京大学出版社</li>
                <li class="fmenu">商务大学出版社</li>
                <li class="fmenu">南京出版社</li>
                <li class="fmenu">北京邮电大学出版社</li>
                <li class="fmenu">清华大学出版社</li>
            </ul>
        </div>
    </div>
    <div id="repository-right">
        <div id="repository-top"><span id="repo-rec">当前></span><span id="repo-titl">时代公共政策</span><span id="repo-count">&ensp;·&ensp;共400题</span></div>
        <div id="repository-con">
            <div id="repo-op">
                <span class="op" id="alls">全部题型</span>
                <span class="op">选择题</span>
                <span class="op">填空题</span>
                <span class="op">解答题</span>
                <span id="option-count">共选中&ensp;10&ensp;道题</span>
            </div>
            <div class="repo-ques">
                <span class="ques-ti">1、和军队和反抗精神的看见的手段和方法可接受的()</span>
                <span class="ques-co">
                    <span>A:&ensp;搭建开发环境看到回复艰苦的地方</span>
                    <span>B:&ensp;搭建开发环境看到回复艰苦的地方</span>
                    <span>C:&ensp;搭建开发环境看到回复艰苦的地方</span>
                    <span>D:&ensp;搭建开发环境看到回复艰苦的地方</span>
                </span>
                <span class="ques-op">
                    <span class="op-bo-op">收&ensp;藏</span>
                    <span class="op-bo-op" class="op-an">解&ensp;析</span>
                    <span class="cho"><img src="${pageContext.request.contextPath}/static/img/choose.svg"></span>
                </span>
            </div>

            <div class="repo-ques">
                <span class="ques-ti">2、和军队和反抗精神的看见的手段和方法可接受的()</span>
                <span class="ques-co">
                    <span>A:&ensp;搭建开发环境看到回复艰苦的地方</span>
                    <span>B:&ensp;搭建开发环境看到回复艰苦的地方</span>
                    <span>C:&ensp;搭建开发环境看到回复艰苦的地方</span>
                    <span>D:&ensp;搭建开发环境看到回复艰苦的地方</span>
                </span>
                <span class="ques-op">
                    <span class="op-bo-op">收&ensp;藏</span>
                    <span class="op-bo-op" class="op-an">解&ensp;析</span>
                    <span class="cho"><img src="${pageContext.request.contextPath}/static/img/choose.svg"></span>
                </span>
            </div>
        </div>
    </div>
</div>
</body>
</html>
