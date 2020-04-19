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
    <div id="top-search"><form action=""><input id="top-search-input" type="text" placeholder="快速检索文档……" autocomplete="off"></form>
    </div>
    <div id="top-section">
        <ul>
            <li><a href="${pageContext.request.contextPath}/log/home">总 览</a></li>
            <li><a href="${pageContext.request.contextPath}/remark/">班 级</a></li>
            <li><a href="${pageContext.request.contextPath}/group/">小 组</a></li>
            <li><a href="${pageContext.request.contextPath}/count/showDetail">统 计</a></li>
            <li><a href="font">设 置</a></li>
        </ul>
    </div>
    <div id="top-notice">
        <details class="details-over">
            <summary><img src="${pageContext.request.contextPath}/static/img/notice.svg"/></summary>
            <div class="notice-box">
                <a href="${pageContext.request.contextPath}/message/allNotices"><div class="notice-line"><div class="notice-a">最近通知</div><div class="sups" id="recent">${count.noticesCount}</div></div></a>
                <a href="${pageContext.request.contextPath}/message/allFeedback"><div class="notice-line"><div class="notice-a">收到反馈</div><div class="sups">${count.feedBackCount}</div></div></a>
                <a href="${pageContext.request.contextPath}/message/allBroadcast"><div class="notice-line"><div class="notice-a">未读公告</div><div class="sups">${count.broadcastCount}</div></div></a>
                <a href="${pageContext.request.contextPath}/message/allSystem"><div class="notice-line"><div class="notice-a">系统消息</div><div class="sups">${count.systemCount}</div></div></a>
            </div>
        </details>
    </div>
    <div id="top-add">
        <details class="details-over">
            <summary><img src="${pageContext.request.contextPath}/static/img/add.svg" /></summary>
            <div class="notice-box">
                <a href=""><div class="notice-line"><div class="notice-a">新建作业</div></div></a>
            <a href=""><div class="notice-line"><div class="notice-a">发布通知</div></div></a>
                <a href=""><div class="notice-line"><div class="notice-a">新增XX</div></div></a>
                    <a href=""><div class="notice-line"><div class="notice-a">新增XX</div></div></a>
            </div>
        </details>

    </div>
    <div id="top-profile">
        <details class="details-over">
            <summary><img src="${pageContext.request.contextPath}/static/img/user.svg" /></summary>
            <div class="notice-box" id="profiles">
                <a href="${pageContext.request.contextPath}/profile/"><div class="notice-line"><div class="notice-a">个人信息</div></div></a>
                <a href="${pageContext.request.contextPath}/log/out"><div class="notice-line"><div class="notice-a">退出登录</div></div></a>
            </div>
        </details>
    </div>
    <%--<a href="${pageContext.request.contextPath}/profile/" ><img src="${pageContext.request.contextPath}/static/img/user.svg" alt=""/></a>--%>
</div>