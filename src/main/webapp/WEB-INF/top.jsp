<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/4/5
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="top-line">
    <div id="top-bend">
        <a href=""><img src="${pageContext.request.contextPath}/static/img/icons.svg"></a>
    </div>
    <div id="top-search"><form action="remark.html"><input id="top-search-input" type="text" placeholder="快速检索文档……" autocomplete="off"></form>
    </div>
    <div id="top-section">
        <ul>
            <li><a href="${pageContext.request.contextPath}/views/home">总 览</a></li>
            <li><a href="${pageContext.request.contextPath}/views/remark">班 级</a></li>
            <li><a href="${pageContext.request.contextPath}/views/group">小 组</a></li>
            <li><a href="${pageContext.request.contextPath}/views/count">统 计</a></li>
            <li><a href="">设 置</a></li>
        </ul>
    </div>
    <div id="top-notice">
        <details class="details-over">
            <summary><img src="${pageContext.request.contextPath}/static/img/notice.svg"/></summary>
            <div class="notice-box">
                <div class="notice-line"><a href="${pageContext.request.contextPath}/message/allNotices"><div class="notice-a">最近通知</div></a><div class="sups" id="recent">${count}</div></div>
                <div class="notice-line"><a href="${pageContext.request.contextPath}/message/allFeedback"><div class="notice-a">收到反馈</div></a><div class="sups">${count}</div></div>
                <div class="notice-line"><a href="${pageContext.request.contextPath}/message/allBroadcast"><div class="notice-a">未读公告</div></a><div class="sups">${count}</div></div>
                <div class="notice-line"><a href="${pageContext.request.contextPath}/message/allSystem"><div class="notice-a">系统消息</div></a><div class="sups">${count}</div></div>
            </div>
        </details>
    </div>
    <div id="top-add">
        <details class="details-over">
            <summary><img src="${pageContext.request.contextPath}/static/img/add.svg" /></summary>
            <div class="notice-box">
                <div class="notice-line"><a href=""><div class="notice-a">新建作业</div></a></div>
                <div class="notice-line"><a href=""><div class="notice-a">发布通知</div></a></div>
                <div class="notice-line"><a href=""><div class="notice-a">新增XX</div></a></div>
                <div class="notice-line"><a href=""><div class="notice-a">新增XX</div></a></div>
            </div>
        </details>

    </div>
    <div id="top-profile"><a href="${pageContext.request.contextPath}/views/profile" ><img src="${pageContext.request.contextPath}/static/img/user.svg" alt=""/></a></div>
</div>