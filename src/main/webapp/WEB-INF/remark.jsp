<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>班级详情</title>
   <%@include file="head.jsp"%>
    <script type="application/javascript">

    </script>
</head>
<body>
<span id="big-hidden" style="display: none" onclick="f()">
</span>
<span id="mid-hidden"  style="display: none">
    <div id="hidden-top"></div>
</span>
<div class="container">
    <%@include file="top.jsp"%>
    <div id="remark-top-section">
        <div class="process-stage" id="process-left"><a href="${pageContext.request.contextPath}/remark/">班级详情</a></div>
        <div class="process"><img src="${pageContext.request.contextPath}/static/img/arrow.svg"></div>
    </div>
    <div id="content">
        <div id="remark-left">
            <div id="left-top">
                <div id="top-label"><label>班级列表</label></div>
                <div id="top-content">
                    <ul>
                        <c:forEach items="${classlist}" var="clist" varStatus="shi">
                            <li class="lis ${shi.index}"><a onclick="gotosecond('${clist}','${shi.index}')"><div class="left-class">
                                <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name" title="${clist}">${clist}</span><div class="doneImg">
                            </div>
                            </div></a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <div id="remark-mid">

            <div id="home-title"><span id="home-title-inner">已发布作业</span><span id="home-count">· ${workcount}</span></div>
            <div id="overview-question">
                <c:forEach items="${worklist}" var="worklist" >
                    <a href="${pageContext.request.contextPath}/workdetail/p?aid=${worklist.assignmentID}&atitle=${worklist.assignmentName}"><div class="work-outer">
                        <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                        <span class="work-bottom">${worklist.assignmentName}</span>
                    </div></a>
                </c:forEach>
            </div>


            <div class="remark-section" id="chose1" style="display: none"><span>选择题</span><span class="remark-count" id="remarkcount1"></span><a href="${pageContext.request.contextPath}/insert/complete?type=c" class="complete">&ensp;查看全部&ensp;</a></div>
            <div id="outer-choose-box" style="display: none">
                <div class="percent"><span class="submits">提交率</span><div class="longback"><div id="innerchoose"></div></div><span class="numbSum" id="numbSum1"></span></div>
                <div class="question-box" id="questionb1">
                    <%--<a href=""><div class="outer"><div class="num-co">1</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>--%>
                    <%--<a href=""><div class="outer"><div class="num-co">2</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>--%>

                </div>
            </div>
            <div class="remark-section" id="write2" style="display: none"><span>简答题</span><span class="remark-count" id="remarkcount2"></span><a href="${pageContext.request.contextPath}/insert/complete?type=s" class="complete">&ensp;批阅全部&ensp;</a></div>
            <div id="outer-writer-box" style="display: none">
                <div class="percent"><span class="submits">提交率</span><div class="longback"><div id="innerWriter"></div></div><span class="numbSum" id="numbSum2"></span></div>
                <div class="question-box" id="questionb2">
                    <%--<a href="${pageContext.request.contextPath}/insert/">
                        <div class="outere-writerquest">
                            <div class="count-number">1</div>
                            <div class="writerquestion-box"><div class="writer-top"><span>10%</span>正确</div><div class="writer-bottom">批改</div></div>
                        </div>
                    </a>--%>
                </div>
            </div>
        </div>
    </div>

    <div id="bottom">
        <div id="Terms">Terms</div>
        <div id="Privacy">Privacy</div>
        <div id="cpy">© 2020 ChenChen, Inc.</div>
    </div>
</div>
<script type="application/javascript">

    function goremark(id,name) {
        document.getElementById("home-title").style.display='none';
        document.getElementById("overview-question").style.display='none';
        document.getElementById("chose1").style.display='';
        document.getElementById("write2").style.display='';
        document.getElementById("outer-choose-box").style.display='';
        document.getElementById("outer-writer-box").style.display='';
        var url=document.getElementsByClassName("complete")[0].getAttribute("href");
        var nurl=url+'&gclass='+name;
        for(var i=0;i<2;++i){
            document.getElementsByClassName("complete")[i].setAttribute("href",nurl);
        }
        var vc=document.getElementsByClassName("work-bottom")[0].innerHTML;
        $.ajax({
            type: 'POST',
            url: "${pageContext.request.contextPath}/insert/overview",
            data: {selid:id,pname:name},
            dataType: "json",
            success: function (list) {
                $("#questionb1").empty();
                $("#questionb2").empty();
                document.getElementById("remarkcount1").innerText="· "+list.countc+" 题";
                document.getElementById("remarkcount2").innerText="· "+list.counts+" 题";
                document.getElementById("numbSum1").innerText=list.subnm+"/"+list.sumnum;
                document.getElementById("numbSum2").innerText=list.subnm+"/"+list.sumnum;
                var is;
                var js;
                for(var i=0;i<list.questQc.length;++i){
                    is=i+1;
                    $("#questionb1").append('<a href="${pageContext.request.contextPath}/insert/single?type=c&pid='+list.questQc[i]+'&pname='+name+'&pcs='+vc+'"><div class="outer"><div class="num-co">'+is+'</div><div class="chooseQuestion"><div class="inner">'+list.corrateC[i]+'</div></div></div></a>');
                }
                for(var j=0;j<list.questQs.length;++j){
                    js=j+1;
                    $("#questionb2").append('<a href="${pageContext.request.contextPath}/insert/single?type=s&pid='+list.questQs[j]+'&pname='+name+'&pcs='+vc+'"><div class="outere-writerquest">' +
                        '<div class="count-number">'+js+'</div>' +
                        '<div class="writerquestion-box"><div class="writer-top"><span>'+list.corrateS[j]+'</span>正确</div><div class="writer-bottom">批改</div></div>' +
                        '</div>');
                }
            },
        });
    }

    function gotosecond(name,index) {
        document.getElementById("home-title").style.display='';
        document.getElementById("overview-question").style.display='';
        document.getElementById("chose1").style.display='none';
        document.getElementById("write2").style.display='none';
        document.getElementById("outer-choose-box").style.display='none';
        document.getElementById("outer-writer-box").style.display='none';

        var len=document.getElementsByClassName("lis").length;
        var it=document.getElementsByClassName("lis");
        for(var i=0;i<len;i++){
            it[i].classList.remove("classhove");
        }
        document.getElementsByClassName(index)[0].classList.add("classhove");
        $("#home-title-inner").empty();
        $("#home-count").empty();
        document.getElementById("home-title-inner").innerText=name;
        $("#overview-question").empty();
        $.ajax({
            type: 'POST',
            url: "${pageContext.request.contextPath}/remark/classwlist",
            data: {classname:name},
            dataType: "json",
            success: function (list) {
                document.getElementById("home-count").innerText="·  "+list.length;
                $(list).each(
                    function (i,values) {
                        $("#overview-question").append('<a onclick="goremark('+'\''+values.classAssoAssiID+'\''+','+'\''+name+'\''+')"><div class="work-outer">' +
                            '<div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div><span class="work-bottom">'+values.classAssoAssiWorkName+'</span>' +
                            '</div></a>');
                    }
                )
            },
            error:function(){
                $("#overview-question").empty();
                $("#overview-question").append('<div style="height: 100px;width:100px;margin-left: auto;margin-right: auto;">' +
                    '                    <span><img src="${pageContext.request.contextPath}/static/img/link.svg" width="80%" height="80%"></span>' +
                    '                    <span>请稍后再试！</span>' +
                    '                </div>');
            }
        });
    }

window.onload=function () {
        var url=document.getElementsByClassName("complete")[0].getAttribute("href");

}

</script>
</body>
</html>