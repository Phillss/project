<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人主页</title>
    <%@include file="head.jsp"%>

</head>
<body>
<%@include file="top.jsp"%>
<div id="profile-top"><div id="name"><label>我的信息</label></div></div>
<div id="profile-img"><img src="${pageContext.request.contextPath}/static/img/classmate1.svg" alt=""/></div>
<div id="profile-left">
    <div id="profile-text">
        <div class="profile-line"><label>身&ensp;&ensp;&ensp;&ensp;份:&ensp;&ensp;教师</label></div>
        <div class="profile-line"><label>学&ensp;&ensp;&ensp;&ensp;号:&ensp;&ensp;202002123</label></div>
        <div class="profile-line"><label>学&ensp;&ensp;&ensp;&ensp;校:&ensp;&ensp;吉林建筑大学</label></div>
        <div class="profile-line"><label>学&ensp;&ensp;&ensp;&ensp;院:&ensp;&ensp;电气与计算机</label></div>
        <div class="profile-line"><label>加入年份:&ensp;&ensp;2020-2-2</label></div>
        <div class="profile-line"><label>批阅数量:&ensp;&ensp;100k</label></div>
    </div>
</div>
<div id="profile-content">
    <div class="contents">
        <div class="inner-detail"><span>用户名：</span>cjg_6538374887</div>
        <div class="inner-detail"><span>用户状态：</span>正常</div>
        <div class="inner-detail"><span>姓&ensp;&ensp;名：</span>川建国<span id="identity">认证通过</span></div>
        <div class="inner-detail"><span>性&ensp;&ensp;别：</span>男</div>
        <div class="inner-detail"><span>邮&ensp;&ensp;箱：</span><input type="text" name=""><span class="changex"><a href="">更换邮箱</a></span></div>
        <div class="inner-detail"><span>手&ensp;&ensp;机：</span><input type="text" name=""><span class="changex"><a href="">更换手机</a></span></div>
    </div>
</div>
<!-- <div id="bottom">
     <div id="Terms">Terms</div>
     <div id="Privacy">Privacy</div>
     <div id="cpy">© 2020 ChenChen, Inc.</div>

 </div>-->
</body>
</html>
