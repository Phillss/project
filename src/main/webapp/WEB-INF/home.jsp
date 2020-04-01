<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>总览</title>
    <link rel="stylesheet" type="text/css" href="static/css/default.css" />
    <script  src="static/lib/naranja.min.js"></script>
    <link rel="stylesheet" href="static/lib/naranja.min.css">
    <link rel="icon" href="static/img/mark.svg" type="image/x-icon"/>
    <script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="static/js/script.js"></script>

</head>
<body>
<div id="top-line">
    <div id="top-bend">
        <a href=""><img src="static/img/icons.svg"></a>
    </div>
    <div id="top-search"><form action="remark.html"><input id="top-search-input" type="text" placeholder="快速检索文档……" autocomplete="off"></form>
    </div>
    <div id="top-section">
        <ul>
            <li><a href="home">总 览</a></li>
            <li><a href="remark">班 级</a></li>
            <li><a href="group">小 组</a></li>
            <li><a href="count">统 计</a></li>
            <li><a href="profile">设 置</a></li>
        </ul>
    </div>
    <div id="top-notice">
        <details class="details-over">
            <summary><img src="static/img/通知.svg"/></summary>
            <div class="notice-box">
                <div class="notice-line"><a href="">最近消息</a><div class="sups">2</div></div>
                <div class="notice-line"><a href="">最近通知</a><div class="sups">20</div></div>
                <div class="notice-line"><a href="">收到私信</a><div class="sups">12</div></div>
                <div class="notice-line"><a href="">系统通知</a><div class="sups">18</div></div>
            </div>
        </details>
    </div>
    <div id="top-add">
        <details class="details-over">
            <summary><img src="static/img/添加.svg" /></summary>
            <div class="notice-box">
                <div class="notice-line"><a href="">新建XX</a><div class="sups">2</div></div>
                <div class="notice-line"><a href="">新增XX</a><div class="sups">20</div></div>
                <div class="notice-line"><a href="">新增XX</a><div class="sups">12</div></div>
                <div class="notice-line"><a href="">新增XX</a><div class="sups">18</div></div>
            </div>
        </details>

    </div>
    <div id="top-profile"><a href="profile.html" ><img src="static/img/用户.svg" alt=""/></a></div>
</div>

<div id="main-1">
    <div class="main-title">最近已批阅：</div>
    <div class="main-homework">
        <table>
            <tr>
                <td><a href=""><img src="static/img/homeworkDone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkDone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkDone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkDone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkDone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkDone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkDone.svg"></a></td>
                <td>……</td>
            </tr>
            <tr>
                <td>一班</td>
                <td>二班</td>
                <td>三班</td>
                <td>四班</td>
                <td>五班</td>
                <td>六班</td>
                <td>七班</td>
            </tr>
        </table>
    </div>
    <a href=""><div class="main-button"><label>进入</label></div></a>
    <a href=""><div class="main-button-cancel"><label>取消</label></div></a>
</div>


<div id="main-2">
    <div class="main-title">新增未批阅：</div>
    <div class="main-homework">
        <table>
            <tr>
                <td><a href=""><img src="static/img/homeworkUndone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkUndone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkUndone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkUndone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkUndone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkUndone.svg"></a></td>
                <td><a href=""><img src="static/img/homeworkUndone.svg"></a></td>
                <td>……</td>
            </tr>
            <tr>
                <td>一班</td>
                <td>二班</td>
                <td>三班</td>
                <td>四班</td>
                <td>五班</td>
                <td>六班</td>
                <td>七班</td>
            </tr>
        </table>
    </div>
    <a href=""><div class="main-button"><label>进入</label></div></a>
    <a href=""><div class="main-button-cancel"><label>取消</label></div></a>
</div>

<div id="main-3">
    <div class="main-title">放置通知公告或历史公告</div>
    <div class="main-homework">

    </div>
    <a href=""><div class="main-button"><label>进入</label></div></a>
    <a href=""><div class="main-button-cancel"><label>取消</label></div></a>
</div>

<div id="over-bottom">
    <div id="mid">
        <label>按钮用作展示动态请求对话框！(效果兼容Chrome、Firefox、Safari、Opera、Edge浏览器)</label><br/>
        <button onclick="nn('log')"><lable>模拟通知</lable></button>
        <button onclick="nn('success')">模拟成功通知</button>
        <!--        <button onclick="nn('warn')">警告test</button>-->
        <!--        <button onclick="nn('error')">错误test</button>-->
    </div>


</div>
<div id="bottom">
    <div id="Terms">Terms</div>
    <div id="Privacy">Privacy</div>
    <div id="cpy">© 2020 ChenChen, Inc.</div>

</div>
</body>
</html>
