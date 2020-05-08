<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/4/25
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@include file="head.jsp"%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>作业详情</title>
</head>
<body>
<%@include file="top.jsp" %>

<div id="remark-top-section">
    <div class="process-stage" id="process-left"><a href="${pageContext.request.contextPath}/remark/">班级详情</a></div>
    <div class="process"><img src="${pageContext.request.contextPath}/static/img/arrow.svg"></div>
    <div class="process-stage"><a href="#">作业详情</a></div>
    <div class="process"><img src="${pageContext.request.contextPath}/static/img/arrow.svg"></div>
    <div class="process-stage"><a href="#">${assiname}</a></div>
    <div id="top-ques-count">· 共${optionList.size()+shortList.size()}题</div>
</div>

<div id="work-contain">
    <c:forEach var="options" items="${optionList}" varStatus="op">
        <div class="worklist">
            <div class="work-count-name">${op.index+1}、题目：</div>
            <div class="worklist-title">${options.themeOfOptionTitle}</div>
            <div class="worklist-content">
                <div class="choose"><span>A :&ensp;</span><span>${options.themeOfOptionsA}</span></div>
                <div class="choose"><span>B :&ensp;</span><span>${options.themeOfOptionsB}</span></div>
                <div class="choose"><span>C :&ensp;</span><span>${options.themeOfOptionsC}</span></div>
                <div class="choose"><span>D :&ensp;</span><span>${options.themeOfOptionsD}</span></div>
            </div>
            <div class="worklist-an"><details>
                <summary class="sumtitle">查看解析</summary>
                <summary class="sumcon">A</summary>
            </details></div>
        </div>
    </c:forEach>

    <%--<div class="worklist">
        <div class="work-count-name">2、题目：</div>
        <div class="worklist-title">数据完整性指的是()</div>
        <div class="worklist-content">
            <div class="choose"><span>A :&ensp;</span><span>保护网络中各系统之间交换的数据，防止因数据被截获而造成泄密</span></div>
            <div class="choose"><span>B :&ensp;</span><span>提供连接实体身份的鉴别</span></div>
            <div class="choose"><span>C :&ensp;</span><span>防止非法实体对用户的主动攻击，保证数据接受方收到的信息与发送方发送的信息完全一致</span></div>
            <div class="choose"><span>D :&ensp;</span><span>确保数据数据是由合法实体发出的</span></div>
        </div>
        <div class="worklist-an"><details>
            <summary class="sumtitle">查看解析</summary>
            <summary class="sumcon">B</summary>
        </details></div>
    </div>--%>
   <%-- <div class="worklist">
        <div class="work-count-name">3、题目：</div>
        <div class="worklist-title">以下算法中属于非对称算法的是()</div>
        <div class="worklist-content">
            <div class="choose"><span>A :&ensp;</span><span>DES</span></div>
            <div class="choose"><span>B :&ensp;</span><span>RSA算法</span></div>
            <div class="choose"><span>C :&ensp;</span><span>IDEA</span></div>
            <div class="choose"><span>D :&ensp;</span><span>三重DES</span></div>
        </div>
        <div class="worklist-an"><details>
            <summary class="sumtitle">查看解析</summary>
            <summary class="sumcon">C</summary>
        </details></div>
    </div>--%>
    <%--<div class="worklist">
        <div class="work-count-name">4、题目：</div>
        <div class="worklist-title">在混合加密方式下，真正用来加解密通信过程中所传输数据（明文）的密钥是()</div>
        <div class="worklist-content">
            <div class="choose"><span>A :&ensp;</span><span>非对称算法的公钥</span></div>
            <div class="choose"><span>B :&ensp;</span><span>对称算法的密钥</span></div>
            <div class="choose"><span>C :&ensp;</span><span>非对称算法的私钥</span></div>
            <div class="choose"><span>D :&ensp;</span><span>CA中心的公钥</span></div>
        </div>
        <div class="worklist-an"><details>
            <summary class="sumtitle">查看解析</summary>
            <summary class="sumcon">D</summary>
        </details></div>
    </div>--%>
    <c:forEach var="shorts" items="${shortList}" varStatus="sh">

        <div class="worklist">
            <div class="work-count-name">${optionList.size()+sh.index+1}、题目：</div>
            <div class="worklist-title">${shorts.shortQuestionTitle}</div>
            <div class="worklist-content">
            </div>
            <div class="worklist-an"><details>
                <summary class="sumtitle">查看解析</summary>
                <summary class="sumcon">DNS 为了提高查询效率，采用了缓存机制，把用户查询过的最新记录存放在缓存中，并设置生
                    存周期（Time To Live，TTL） 。在记录没有超过 TTL 之前，DNS 缓存中的记录一旦被客户端查询，DNS 服务器（包括各级名字服务器）将把缓存区中的记录直接返回给客户端，而不需要进行逐级查询，提高了查询速率。 （2 分）DNS 缓存中毒利用了 DNS 缓存机制，在 DNS 服务器的缓存中存入大量错误的数据记录主动供用户查询。由于缓存中大量错误的记录是攻击者伪造的，而伪造者可能会根据不同的意图伪造不同的记录。由于 DNS 服务器之间会进行记录的同步复制，所以在 TTL 内，缓存中毒的 DNS 服务器有可能将错误的记录发送给其他的 DNS 服务器， 导致更多的 DNS 服务器中毒。
                </summary>
            </details></div>
        </div>
    </c:forEach>


    <%--<div class="worklist">
        <div class="work-count-name">6、题目：名词解释</div>
        <div class="worklist-title">根据实际应用，以个人防火墙为主，简述防火墙的主要功能及应用特点</div>
        <div class="worklist-content">
        </div>
        <div class="worklist-an"><details>
            <summary class="sumtitle">查看解析</summary>
            <summary class="sumcon">防火墙是指设置在不同网络（如可信赖的企业内部局域网和不可信赖的公共网络）之间或网络
                安全域之间的一系列部件的组合，通过监测、限制、更改进入不同网络或不同安全域的数据流，尽
                可能地对外部屏蔽网络内部的信息、结构和运行状况，以防止发生不可预测的、潜在破坏性的入侵，
                实现网络的安全保护。
            </summary>
        </details></div>
    </div>--%>
</div>
</body>
</html>
