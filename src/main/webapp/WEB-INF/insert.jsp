<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/4/25
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
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
</div>

<div id="insert-content">
    <div id="insert-left">
        <div class="right-first">
            <div id="remark-lable"><span>批阅情况</span></div>
            <div id="remark-details">
                <a href="#1"><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>1</span></div></a>
                <a href="#2"><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>2</span></div></a>
                <a onclick="fu(3)"><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>3</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>4</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>5</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>6</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>7</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>8</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>9</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>10</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>11</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>12</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>13</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>15</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>16</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>17</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>18</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>19</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>20</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>21</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>22</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>23</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>24</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>25</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>26</span></div></a>
                <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>27</span></div></a>
            </div>
        </div>
        <div id="modeA-like">
            <div id="modelA-likename">相似情况</div>
            <div class="likecondi">
                <div class="like-left">题目2</div>
                <div class="like-right">
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                </div>
            </div>
            <div class="likecondi">
                <div class="like-left">题目6</div>
                <div class="like-right">
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                </div>
            </div>
            <div class="likecondi">
                <div class="like-left">题目6</div>
                <div class="like-right">
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                </div>
            </div>

            <div class="likecondi">
                <div class="like-left">题目6</div>
                <div class="like-right">
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                    <div class="likeuser"><img src="${pageContext.request.contextPath}/static/img/singleUser.svg"></div>
                </div>
            </div>
        </div>
    </div>

    <div id="insert-mid">
        <div id="paper-name"><span>——2020-2期中测验——</span></div>
        <div id="paper-studentn"><span>· 计算机161 · 川建国</span></div>
        <div class="model-A">
            <a id="1"></a>
            <div class="questionOption">1、简答题：</div>
            <div class="modelA-title">&ensp;&ensp;&ensp;几点看法和艰苦大师傅上课时间地点和反抗封建时代回复点看法和艰苦大师傅上课时间地点和反抗封建时代回复点看法和艰苦大师傅傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反上课时间地点和傅上课时间地点和傅上课时间地点和反抗封建时代回复点看法和艰。</div>
            <div class="modelA-lti">回答：</div>
            <div class="modelA-answer">
                &ensp;&ensp;&ensp;是冬季房交会第三方上课时间大家发挥科技上的上的回复上课是假的回复空间苦大师傅上课时间地点和反抗封建时代回复大师傅上课时间地点和反抗封建时代回大师傅上傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反课时间傅傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反上课时间地点和反傅上课时间地点和间地点和反抗封建时代回复大师傅上课时间地点和反傅上课时间地
            </div>
            <div class="modelA-exam"><span class="correct">正确</span><span class="wrong">错误</span><span class="star"><img src="${pageContext.request.contextPath}/static/img/star.svg"></span></div>
        </div>

        <div class="model-A">
            <a id="2"></a>
            <div class="questionOption">2、简答题：</div>
            <div class="modelA-title">&ensp;&ensp;&ensp;几点看法和艰苦大师傅上课时间地点和反抗封建时代回复点看法和艰苦大师傅上课时间地点和反抗封建时代回复点看法和艰苦大师傅傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反上课时间地点和傅上课时间地点和反反抗封建时代回复点看法和艰苦大师傅上课时间地点和反抗封建时代回复点看法和艰。</div>
            <div class="modelA-lti">回答：</div>
            <div class="modelA-answer">
                &ensp;&ensp;&ensp;是冬季房交会第三方上课时间大家发挥科技上的上的回复上课是假的回复空间苦大师傅上课时间地点和反抗封建时代回复大师傅上课时间地点和反傅上傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反课时间地点和反抗封建时代回苦间地点和反傅上课时间地点和反傅上课时间地点和反上课时间地点和反傅上课时间地点和反师傅上课时间地点和反抗封建时代回复大师傅上课时间地点和反傅上课时间地
            </div>
            <div class="modelA-exam"><span class="correct">正确</span><span class="wrong">错误</span><span class="star"><img src="${pageContext.request.contextPath}/static/img/unstar.svg"></span></div>
        </div>

        <div class="model-A">
            <a id="3"></a>
            <div class="questionOption">3、简答题：</div>
            <div class="modelA-title">&ensp;&ensp;&ensp;几点看法和艰苦大师傅上课时间地点和反抗封建时代回复点看法和艰苦大师傅上课时间地点和反抗封建时代回复点看法和艰苦大师傅傅上课时间地点和看法和艰苦大师傅上课时间地点和反抗封建时代回复点看法和艰。</div>
            <div class="modelA-lti">回答：</div>
            <div class="modelA-answer">
                &ensp;&ensp;&ensp;是冬季房交会第三方上课时间大家发挥科技上的上的回复上课是假的回复空间苦大师傅上课时间地点和反抗封建时代回复大师傅上课时课时间地点和反傅上课时间地点和反傅上课时间地点和反傅上课时间地点和反上课时间地点和反傅上课时间地点和反师傅上课时间地点和反抗封建时代回复大师傅上课时间地点和反傅上课时间地
            </div>
            <div class="modelA-exam"><span class="correct">正确</span><span class="wrong">错误</span><span class="star"><img src="${pageContext.request.contextPath}/static/img/star.svg"></span></div>
        </div>

    </div>
    <div id="insert-right">
        <div id="right-option">
            <!-- <div id="model-box"><button id="paper-modul">按试卷批改</button><button id="question-model">按题目批改</button></div> -->
        </div>
    </div>
</div>
</body>
</html>
