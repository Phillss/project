<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/4/25
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@include file="head.jsp"%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>作业批改</title>

</head>
<body>
<%@include file="top.jsp" %>

<div id="remark-top-section">
    <div class="process-stage" id="process-left"><a href="${pageContext.request.contextPath}/remark/">班级详情</a></div>
    <div class="process"><img src="${pageContext.request.contextPath}/static/img/arrow.svg"></div>
    <div class="process-stage"><a href="${pageContext.request.contextPath}/insert/">作业批改</a></div>
    <div class="process"><img src="${pageContext.request.contextPath}/static/img/arrow.svg"></div>
    <div class="insertlr" id="insmid" title="上一个"><img src="${pageContext.request.contextPath}/static/img/arrleft.svg" onclick="befores()"></div>
    <div class="insertlr"><span id="cuin">1</span>/${fn:length(stuNumList)}</div>
    <div class="insertlr" title="下一个"><img src="${pageContext.request.contextPath}/static/img/arrright.svg" onclick="nexts()"></div>
</div>
<div id="insert-content">
    <div id="insert-left">
        <div class="right-first">
            <div id="remark-lable"><span>批阅情况</span></div>
            <div id="remark-details">
                <c:forEach var="ll" items="${clback}" varStatus="vasi">
                        <a href="#{vasi.index+1}"><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>${vasi.index+1}</span></div></a>
                </c:forEach>
            </div>
        </div>
        <div id="modeA-like">
            <div id="modelA-likename">相似情况</div>
            <div class="likecondi">
                <div class="like-left">题目2</div>
                <div class="like-right">
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                </div>
            </div>
            <div class="likecondi">
                <div class="like-left">题目6</div>
                <div class="like-right">
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                </div>
            </div>
            <div class="likecondi">
                <div class="like-left">题目6</div>
                <div class="like-right">
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                </div>
            </div>

            <div class="likecondi">
                <div class="like-left">题目6</div>
                <div class="like-right">
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                </div>
            </div>
        </div>
    </div>

    <div id="itemscount" style="display: none">${lists.size()}</div>
    <div id="cls" style="display: none">${cla}</div>
    <div id="insert-mid">
        <div id="paper-name"><span>——${paper}——</span></div>
        <div class="paper-studentn" ><span>· ${cla} · ${name}</span></div>
        <c:forEach var="ll" items="${clback}" varStatus="lls">
                <div class="model-A" >
                    <a id="${lls.index}"></a>
                    <div class="questionOption">${lls.index+1}、简答题：</div>
                    <div class="modelA-title">&ensp;${ll.shortQuestionTitle}</div>
                    <div class="modelA-lti">回答：</div>
                    <div class="modelA-answer" id="${ll.sanswerID}">
                        &ensp;&ensp;&ensp;${ll.sanswerContent}
                    </div>
                    <div class="modelA-exam">
                        <span class="pigai" id="pi" style="">
                            <span onclick="rer()"><img src="${pageContext.request.contextPath}/static/img/recor.svg" alt=""/></span>
                            <span><img src="${pageContext.request.contextPath}/static/img/success.svg" alt=""/></span>
                        </span>
                        <span class="pigai" id="pis" style="display: none">
                            <span onclick="rew()"><img src="${pageContext.request.contextPath}/static/img/recor.svg" alt=""/></span>
                            <span><img src="${pageContext.request.contextPath}/static/img/alert.svg" alt=""/></span>
                        </span>
                        <span class="correct" id="rig" style="display: none" onclick="ri()">正确</span><span class="wrong" id="wro" style="display: none" onclick="wr()">错误</span>
                        <span class="modelsave" onclick="sho()"><img src="${pageContext.request.contextPath}/static/img/adin.svg"></span>
                        <span class="star" style="display: none" id="st" onclick="st()"><img src="${pageContext.request.contextPath}/static/img/star.svg"></span>
                        <span class="star" id="uns" onclick="unst()"><img src="${pageContext.request.contextPath}/static/img/unstar.svg"></span>
                    </div>
                </div>

            <div class="insed" style="display: none"></div>
            <div class="instext" style="display: none">
                <input class="neert" type="" name="">
                <button class="nus" onclick="addandshow()">添加</button>
            </div>
        </c:forEach>

        <div id="obj" style="display: none">${fn:length(stuNumList)}</div>
    </div>
    <div id="insert-right">
        <div id="hidden-show"></div>
        <div id="insertlist" style="display: none">
            <label class="recuse">最常使用</label>
            <c:forEach var="publics" items="${publicMarkList}" varStatus="vas">
                <div class="publicre" id="${publics.publicRemarkId}" onclick="ins(this,'pub','${publics.publicRemark}')">${vas.index+1}、${publics.publicRemark}</div>
            </c:forEach>

            <label class="recuse">最近使用</label>
            <c:forEach var="privates" items="${privateMarklist}" varStatus="vas">
                <div class="publicre" id="${privates.privateRemarkId}" onclick="ins(this,'pri','${privates.privateRemark}')">${vas.index+1}、${privates.privateRemark}</div>
            </c:forEach>
            <input id="inserts" type="text"/>
            <button id="inserbu" onclick="same(this,'pub','inserts')">插入</button>
            <button id="" onclick="canceli()">取消</button>
        </div>

        <div id="marks">
            <%--<div class="markdiv" style="display: none"></div>--%>
        </div>

        <div id="right-option">
            <div class="insertMark">
                <span class="penimg"><img src="${pageContext.request.contextPath}/static/img/greypen.svg" onclick="inss()"></span>
                <span>工具</span>
            </div>
            <div class="insertMark" id="insertMarkh"  onclick="insertmarkh()">
                <span class="penimg"><img src="${pageContext.request.contextPath}/static/img/hidden.svg"></span>
                <span>隐藏</span>
            </div>
            <div class="insertMark" id="insertMarks" style="display: none"  onclick="insertmarks()">
                <span class="penimg"><img src="${pageContext.request.contextPath}/static/img/show.svg"></span>
                <span>显示</span>
            </div>
            <div class="insertMark"  onclick="bysel()">
                <span class="penimg"><img src="${pageContext.request.contextPath}/static/img/auto.svg"></span>
                <span>自定义</span>
            </div>
            <div class="insertMark" >
                <span class="penimg"><img src="${pageContext.request.contextPath}/static/img/gantan.svg"></span>
                <span>反馈</span>
            </div>
        </div>
    </div>
</div>
<%--<div id="line">
    <div id="line-l"></div>
    <div id="line-c"></div>
</div>--%>

<script type="application/javascript">
    var curranid;
    var sta;
    var bool="f";
    var posix;
    var curindex=0;
    var reallen;
    var count;
    var ngclass;
    var papname;
    function get(date){
        document.getElementById("marks").style.display='none';
        var curr=document.getElementById(date.id);
        posix=date.id;
        if(curr.innerHTML.indexOf("sup")>=0){
        }else{
            var so=document.createElement("sup");
            so.classList.add("ffo");
            so.innerText=date.id;
            var fc=curr.lastChild;
            if(fc.nodeName!="SUP"){
                bool="t";
                curr.appendChild(so);
                document.getElementById("insertlist").style.display='';
                sta=date.id;
                curranid=date.parentNode.id;
            }
        }
    }
    function csss() {
        document.getElementById("insertlist").style.display='';
    }

    function ins(ids,ty,mark){
        document.getElementById("insertlist").style.display='none';
        if(bool=="t"){
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath}/insert/upd",
                data: {type:ty,mid:ids.id,posi:sta,currid:curranid,pmark:mark},
                dataType: "json",
                success: function (data) {
                },
            });
            alert("添加成功");
            bool="f";
        }else{
            alert("添加失败");
        }
    }

    function same(mids,tt,fromi) {
        document.getElementById("insertlist").style.display='none';
        var sues=document.getElementById(fromi).value;
        if(bool=="t"){
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath}/insert/upd",
                data: {type:tt,mid:"1",posi:sta,currid:curranid,pmark:sues},
                dataType: "json",
                success: function (data) {
                },
            });
            alert("添加成功");
            bool="f";
        }else{
            alert("添加失败");
        }
    }

    function insertmarkh(){
        var h=document.getElementById("insertMarkh");
        h.style.display='none';
        document.getElementById("insertMarks").style.display='';
        document.getElementById("marks").style.display='none';
        var l=document.getElementsByClassName("ffo").length;
        for(var i=0;i<l;++i){
            document.getElementsByClassName("ffo")[i].classList.add("marknone");
        }
    }
    function insertmarks(){
        var h=document.getElementById("insertMarks");
        h.style.display='none';
        document.getElementById("insertMarkh").style.display='';
        document.getElementById("insertlist").style.display='none';
        document.getElementById("marks").style.display='';
        var l=document.getElementsByClassName("ffo").length;
        for(var i=0;i<l;++i){
            document.getElementsByClassName("ffo")[i].classList.remove("marknone");
        }

        $.ajax({
            type: 'POST',
            url: "${pageContext.request.contextPath}/insert/upd",
            data: {type:ty,mid:ids.id,posi:sta,currid:curranid,pmark:mark},
            dataType: "json",
            success: function (data) {
            },
        });
    }

    function inss(){
        if(document.getElementById("insertlist").style.display==''){
            document.getElementById("insertlist").style.display='none';
            document.getElementById("marks").style.display='';
        }else{
            document.getElementById("insertlist").style.display='';
            document.getElementById("marks").style.display='none';
        }
    }

    function canceli() {
        if(bool=='t'){
            var tep=document.getElementById(posix);
            tep.removeChild(tep.lastChild);
            bool='f';
        }
    }

    window.onload=function () {
        var lli=document.getElementsByClassName("modelA-answer");
        count=document.getElementById("obj").innerText;
        ngclass=document.getElementById("cls").innerText;
        papname=document.getElementById("paper-name").innerText;
        for(var i=0;i<lli.length;++i){
            var na=lli[i].getAttribute("id");
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath}/insert/syns",
                data: {sanid:na},
                dataType: "json",
                success: function (lis) {
                    var $hu=$('<div class="markdiv"></div>')
                    for(var j=0;j<lis.length;++j){
                        $hu.append('<div class="rightmark">['+lis[j].privateReferIndex+'] '+lis[j].privateRemark+'</div>');
                    }
                    $("#marks").append($hu);
                },
            });
        }
    }
    function befores() {
        if(curindex>0){
            --curindex;
            document.getElementById("cuin").innerText=curindex+1;
            $("#insert-mid").empty();
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath}/insert/sycompl",
                data: {gclass:ngclass,count:curindex},
                dataType: "json",
                success: function (list) {
                    $("#paper-name").append('<div id="paper-name"><span>'+papname+'</span></div>');
                    $("#paper-name").append('<div class="paper-studentn" ><span>· '+list[0].stuClass+' · '+list[0].stuName+'</span></div>');
                    for(var j=0;j<count;++j){
                        $("#insert-mid").append('<div class="model-A" >' +
                            '<a id=""></a>' +
                            '<div class="questionOption">、简答题：</div>' +
                            '<div class="modelA-title">&ensp;'+list[j].shortQuestionTitle+'</div><div class="modelA-lti">回答：</div>' +
                            '<div class="modelA-answer" id="">' +
                            '&ensp;&ensp;&ensp;'+list[j].sanswerContent+'</div> <div class="modelA-exam"><span class="correct">正确</span><span class="wrong">错误</span><span class="star"><img src="${pageContext.request.contextPath}/static/img/star.svg"></span></div></div>');
                    }
                },
            });
        }else{
            alert("这是第一道题！");
        }
    }
    function nexts() {
        if(curindex<count-1){
            ++curindex;
            document.getElementById("cuin").innerText=curindex+1;
            $("#insert-mid").empty();
            $.ajax({
                type: 'POST',
                url: "${pageContext.request.contextPath}/insert/sycompl",
                data: {gclass:ngclass,count:curindex},
                dataType: "json",
                success: function (list) {
                    $("#paper-name").append('<div id="paper-name"><span>'+papname+'</span></div>');
                    $("#paper-name").append('<div class="paper-studentn" ><span>· '+list[0].stuClass+' · '+list[0].stuName+'</span></div>');
                    for(var j=0;j<count;++j){
                        $("#insert-mid").append('<div class="model-A" >' +
                            '<a id=""></a>' +
                            '<div class="questionOption">、简答题：</div>' +
                            '<div class="modelA-title">&ensp;'+list[j].shortQuestionTitle+'</div><div class="modelA-lti">回答：</div>' +
                            '<div class="modelA-answer" id="">' +
                            '&ensp;&ensp;&ensp;'+list[j].sanswerContent+'</div> <div class="modelA-exam"><span class="correct">正确</span><span class="wrong">错误</span><span class="star"><img src="${pageContext.request.contextPath}/static/img/star.svg"></span></div></div>');
                    }
                },
            });
        }else{
            alert("已是最后一道题了！");
        }
    }

    function sho() {
        var ins=document.getElementsByClassName("instext");
        if(ins[0].style.display=='none'){
            ins[0].style.display='';
        }else{
            ins[0].style.display='none';
        }
    }

    function addandshow() {
        var e=document.getElementsByClassName("insed");
        document.getElementsByClassName("instext")[0].style.display='none';
        e[0].innerHTML=document.getElementsByClassName("neert")[0].value;
        e[0].style.display='';
        document.getElementsByClassName("neert")[0].value='';
    }

    function ri() {
        document.getElementById("rig").style.display='none';
        document.getElementById("wro").style.display='none';
        document.getElementById("pi").style.display='';
        document.getElementById("pis").style.display='none';
    }
    function wr() {
        document.getElementById("rig").style.display='none';
        document.getElementById("wro").style.display='none';
        document.getElementById("pi").style.display='none';
        document.getElementById("pis").style.display='';
    }
    function rer() {
        document.getElementById("rig").style.display='';
        document.getElementById("wro").style.display='';
        document.getElementById("pi").style.display='none';
        document.getElementById("pis").style.display='none';
    }
    function rew() {
        document.getElementById("rig").style.display='';
        document.getElementById("wro").style.display='';
        document.getElementById("pi").style.display='none';
        document.getElementById("pis").style.display='none';
    }
    function st() {
        document.getElementById("st").style.display='none';
        document.getElementById("uns").style.display='';
    }
    function unst() {
        document.getElementById("st").style.display='';
        document.getElementById("uns").style.display='none';
    }
</script>

<script type="text/javascript">
    document.getElementById("hidden-show").addEventListener("mouseenter",function(){
        document.getElementById("right-option").style.right="0";
    },false);
    document.getElementById("insert-right").addEventListener("mouseenter",function(){
        document.getElementById("right-option").style.right="-50px";
    },false);

</script>
</body>
</html>
