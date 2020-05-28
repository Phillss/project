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

        function recent() {
            document.getElementsByClassName("re2")[0].classList.remove("remcho");
            document.getElementsByClassName("re1")[0].classList.add("remcho");
            document.getElementById("tbs").style.display='';
            document.getElementById("mh").style.display='none';
        }
        function newadd(){
            document.getElementsByClassName("re1")[0].classList.remove("remcho");
            document.getElementsByClassName("re2")[0].classList.add("remcho");
            document.getElementById("tbs").style.display="none";
            document.getElementById("mh").style.display='';
        }
        function working() {
            document.getElementsByClassName("cl2")[0].classList.remove("bucho");
            document.getElementsByClassName("cl1")[0].classList.add("bucho");
            $("#tr1").empty();
            $("#tr2").empty();
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath}/log/workoverview",
                data: {overview:"undone"},
                dataType: "json",
                success: function (list) {
                    $(list).each(
                        function (i,values) {
                            $("#tr1").append('<td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkDone.svg"></a></td>');
                            $("#tr2").append('<td>'+values.classAssoAssiClass+'</td>');
                        }
                    )
                }
            });
        }
        function workdone() {
            document.getElementsByClassName("cl1")[0].classList.remove("bucho");
            document.getElementsByClassName("cl2")[0].classList.add("bucho");
            $("#tr1").empty();
            $("#tr2").empty();
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath}/log/workoverview",
                data: {overview:"done"},
                dataType: "json",
                success: function (list) {
                $(list).each(
                        function (i,values) {
                            $("#tr1").append('<td><a href=""><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"></a></td>');
                            $("#tr2").append('<td>'+values.classAssoAssiClass+'</td>');
                        }
                    )
                }
            });
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
            <div id="main-topl">
                <div class="rema re1 remcho" id="recrema" onclick="recent()">近期批阅</div>
                <div class="rema re2" id="addrema" onclick="newadd()">新增批阅</div>
            </div>
            <div id="main-section">
                <div id="myhome">我的作业</div>
                <div class="bucl cl1 bucho" onclick="working()">进行中</div>
                <div class="bucl cl2" onclick="workdone()">已完成</div>
            </div>
            <!-- <div class="main-title">最近已批阅：</div> -->
            <div class="main-homework">
                <div class="main-homework" id="mh" style="display: none">
                    <div id="emptys"><img src="${pageContext.request.contextPath}/static/img/null.svg"></div>
                </div>
                <table id="tbs">
                    <tr id="tr1">
                        <c:forEach items="${undonework}" var="undone">
                            <td><a href="${pageContext.request.contextPath}/insert/complete?type=sc&gclass=${undone.classAssoAssiClass}"><img src="${pageContext.request.contextPath}/static/img/homeworkDone.svg"></a></td>
                        </c:forEach>
                        <c:if test="${undonework.size()>=5}"><td><img style="width: 30px;height: 30px" src="${pageContext.request.contextPath}/static/img/more.svg"/></td></c:if>
                    </tr>
                    <tr id="tr2">
                        <c:forEach items="${undonework}" var="undone">
                            <td>${undone.classAssoAssiClass}</td>
                        </c:forEach>
                    </tr>
                </table>
            </div>
            <div id="main-sec2"><div id="chocurr">选修课</div></div>
            <div class="main-homework">
                <div id="empty"><img src="${pageContext.request.contextPath}/static/img/null.svg"></div>
            </div>
            <!-- <a onclick="f()"><div class="main-button"><label>进入</label></div></a>
            <a href=""><div class="main-button-cancel"><label>取消</label></div></a> -->
        </div>

        <%--<div id="main-1">
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
        </div>--%>


        <%--<div id="main-2">
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
        </div>--%>
    </div>
    <div id="home-container-right">

        <div id="person">
            <div id="personimg">
                <div id="perpo"><img src="${pageContext.request.contextPath}/static/img/classmate1.svg"></div>
                <div id="perna">
                    <span id="pn">${uname}</span>
                    <span id="wel">欢迎回来！</span>
                </div>
            </div>
            <div id="persondeta">
                <div class="persondiv">
                    <span class="personcount">${classCount}</span>
                    <span class="personsay">我的班级</span>
                </div>
                <div class="persondiv">
                    <span class="personcount">${assiCount}</span>
                    <span class="personsay">我的作业</span>
                </div>
            </div>
        </div>
        <div id="userp">
            <div id="userp-i">
                <img src="${pageContext.request.contextPath}/static/img/userp.svg">
            </div>
            <div id="userp-r">
                <span id="userp-w">用户手册</span>
                <span id="user-s">您的平台操作小助手</span>
            </div>
        </div>
        <div id="notices-sum">
            <div class="main-homework-lable">通知</div>
            <ul>
                <c:forEach var="notices" items="${moticelist}">
                    <li><a href="${pageContext.request.contextPath}/message/allBroadcast"><span>${notices.noticeTitle}</span></a></li>
                </c:forEach>
               <c:if test="${moticelist.size()>=5}"><a href="${pageContext.request.contextPath}/message/allBroadcast"><span class="homework-more">更多</span></a></c:if>
            </ul>
        </div>

        <%--<div id="main-homework-one">
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
        </div>--%>
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
<script type="application/javascript">
</script>
</body>
</html>
