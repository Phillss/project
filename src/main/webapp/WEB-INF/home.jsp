<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>总览</title>
    <%@include file="head.jsp"%>
    <script type="application/javascript">
        window.onload=function () {
            var so=document.getElementById("notice");
            var b=document.getElementsByClassName("boradcast");
            var s=document.getElementsByClassName("homework-more");
            if(so.value=='undone'){
                f();
            }
        }
        function getPost() {
            var s=document.getElementById("name");
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath}/log/home",
                contentType: "application/json",
                data: {"userName":"haha"},//JSON.stringify({"userName":"haha"}),JSON.stringify()必须有,否则只会当做表单的格式提交
                dataType: "json",//期待返回的数据类型
                success: function(){
                    alert("success:");
                },
                error:function(data){
                    alert("error"+data);
                }
            });
        }
    </script>
</head>
<body>

<input value="${notice}" id="notice" style="display: none"/>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top"><div id="sys">系统公告</div></div>
    <div id="sys-content">
        <p class="notice-p">${message.get(1).noticeTitle}</p>
        <p class="notice-p">${message.get(1).noticeContent}</p>
        <p class="notice-pf"><div class="notice-file"><img src="${pageContext.request.contextPath}/static/img/WORD.svg"/><a href="" style="text-decoration: none">教学文件.doc</a> </div></p>
        <p class="notice-pf"><div class="notice-file"><img src="${pageContext.request.contextPath}/static/img/ECEL.svg"/><a href="" style="text-decoration: none">课件.xlsx</a> </div></p>
        <p class="notice-pf"><div class="notice-file"><img src="${pageContext.request.contextPath}/static/img/synfile.svg"/><a href="" style="text-decoration: none">压缩文件.zip</a> </div></p>
    </div>
    <div id="sys-bottom"><button onclick="f()">已阅</button></div>
</span>
<%@include file="top.jsp" %>
<div id="home-container">
    <div id="home-container-left">
        <div id="main-1">
            <div class="main-title">最近已批阅：</div>
            <div class="main-homework">
                <table>
                    <tr>
                        <td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkDone.svg"></a></td>
                        <td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkDone.svg"></a></td>
                        <td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkDone.svg"></a></td>
                        <td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkDone.svg"></a></td>
                        <td><img style="width: 30px;height: 30px" src="${pageContext.request.contextPath}/static/img/more.svg"/></td>
                    </tr>
                    <tr>
                        <td>计算机161</td>
                        <td>计算机162</td>
                        <td>软件162</td>
                        <td>网络162</td>
                    </tr>
                </table>
            </div>
            <a onclick="f()"><div class="main-button"><label>进入</label></div></a>
            <a href=""><div class="main-button-cancel"><label>取消</label></div></a>
        </div>


        <div id="main-2">
            <div class="main-title">新增未批阅：</div>
            <div class="main-homework">
                <table>
                    <tr>
                        <td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"></a></td>
                        <td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"></a></td>
                        <td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"></a></td>
                        <td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"></a></td>
                        <td><img style="width: 30px;height: 30px" src="${pageContext.request.contextPath}/static/img/more.svg"/></td>
                    </tr>
                    <tr>
                        <td>给排水161</td>
                        <td>造价162</td>
                        <td>材料162</td>
                        <td>信科161</td>
                    </tr>
                </table>
            </div>
            <a href=""><div class="main-button"><label>进入</label></div></a>
            <a href=""><div class="main-button-cancel"><label>取消</label></div></a>
        </div>
    </div>
    <div id="home-container-right">
        <div id="main-homework-one">
            <div class="main-homework-lable">动态消息</div>
            <ul>
                <c:forEach items="${message}" var="m">
                    <li><a href=""><span>${m.noticeTitle}</span></a></li>
                </c:forEach>
                <a href=""><span class="homework-more">更多</span></a>
            </ul>
        </div>

        <div id="main-homework-two">
            <div class="main-homework-lable">历史公告</div>
            <ul>
                <c:forEach items="${systemMessage}" var="m">
                <li><a href=""><span class="broadcast">${m.noticeTitle}</span></a></li>
            </c:forEach>
                <a href=""><span class="homework-more">更多</span></a>
            </ul>
        </div>
    </div>
</div>

<%--<div id="over-bottom">
    <div id="mid">
        <label>按钮用作展示动态请求对话框！(效果兼容Chrome、Firefox、Safari、Opera、Edge浏览器)</label><br/>
        <button onclick="nn('log')"><lable>模拟通知</lable></button>
        <button onclick="nn('success')">模拟成功通知</button>
        <button onclick="nn('warn')">警告test</button>
        <button onclick="nn('error')">错误test</button>
    </div>
</div>--%>
<div id="bottom">
    <div id="Terms">Terms</div>
    <div id="Privacy">Privacy</div>
    <div id="cpy">© 2020 ChenChen, Inc.</div>
</div>
</body>
</html>
