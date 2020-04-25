<%--
  Created by IntelliJ IDEA.
  User: woota
  Date: 2020/3/30
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>班级详情</title>
   <%@include file="head.jsp"%>
    <script type="application/javascript">
        function gotosecond() {
            document.getElementById("home-title").style.display='none';
            document.getElementById("overview-question").style.display='none';
            document.getElementById("chose1").style.display='block';
            document.getElementById("write2").style.display='block';
            document.getElementById("outer-choose-box").style.display='block';
            document.getElementById("outer-writer-box").style.display='block';

        }
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
                <div id="top-label"><label>班级列表(已批阅5/10)</label></div>
                <div id="top-content">
                    <ul>
                        <li><a onclick="gotosecond()"><div class="left-class">
                                <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/success.svg"></div>
                </div></a></li>
                        <li><a onclick="gotosecond()"><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/success.svg"></div>
                        </div></a></li>
                        <li><a onclick="gotosecond()"><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/success.svg"></div>
                        </div></a></li>
                        <li><a onclick="gotosecond()"><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/hint.svg"></div>
                        </div></a></li>
                        <li><a onclick="gotosecond()"><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/hint.svg"></div>
                        </div></a></li>
                        <li><a onclick="gotosecond()"><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/success.svg"></div>
                        </div></a></li>
                        <li><a onclick="gotosecond()"><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/hint.svg"></div>
                        </div></a></li>
                        <li><a ><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/alert.svg"></div>
                        </div></a></li>
                        <li><a ><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/hint.svg"></div>
                        </div></a></li>
                        <li><a ><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/success.svg"></div>
                        </div></a></li>
                        <li><a ><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/success.svg"></div>
                        </div></a></li>
                        <li><a ><div class="left-class">
                            <div class="class-img"><img src="${pageContext.request.contextPath}/static/img/homeworkUndone.svg"/></div><span class="class-name">计算机161</span><div class="doneImg"><img src="${pageContext.request.contextPath}/static/img/success.svg"></div>
                        </div></a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div id="remark-mid">

            <div id="home-title"><span id="home-title-inner">已发布作业</span><span id="home-count">· 25</span></div>
            <div id="overview-question">
                <a href="${pageContext.request.contextPath}/workdetail/"><div class="work-outer">
                    <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                    <span class="work-bottom">2020-4期中总结测试</span>
                </div></a>
                <a href="${pageContext.request.contextPath}/workdetail/"><div class="work-outer">
                    <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                    <span class="work-bottom">2020-4期中总结测试</span>
                </div></a>
                <a href="${pageContext.request.contextPath}/workdetail/"><div class="work-outer">
                    <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                    <span class="work-bottom">2020-4期中总结测试</span>
                </div></a>
                <a href=""><div class="work-outer">
                    <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                    <span class="work-bottom">2020-4期中总结测试</span>
                </div></a>
                <a href=""><div class="work-outer">
                    <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                    <span class="work-bottom">2020-4期中总结测试</span>
                </div></a>
                <a href=""><div class="work-outer">
                    <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                    <span class="work-bottom">2020-4期中总结测试</span>
                </div></a><a href=""><div class="work-outer">
                <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                <span class="work-bottom">2020-4期中总结测试</span>
            </div></a>
                <a href=""><div class="work-outer">
                    <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                    <span class="work-bottom">2020-4期中总结测试</span>
                </div></a>
                <a href=""><div class="work-outer">
                    <div class="work-top"><img src="${pageContext.request.contextPath}/static/img/assign3.svg"></div>
                    <span class="work-bottom">2020-4期中总结测试</span>
                </div></a>

            </div>


            <div class="remark-section" id="chose1" style="display: none"><span>选择题</span><span class="remark-count">·12题</span></div>
            <div id="outer-choose-box" style="display: none">
                <div class="percent"><span class="submits">提交率</span><div class="longback"><div id="innerchoose"></div></div><span class="numbSum">50/100</span></div>
                <div class="question-box">
                    <a href=""><div class="outer"><div class="num-co">1</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">2</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">3</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">4</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">5</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">6</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">7</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">8</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">9</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">10</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">11</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                    <a href=""><div class="outer"><div class="num-co">12</div><div class="chooseQuestion"><div class="inner">100%</div></div></div></a>
                </div>
            </div>
            <div class="remark-section" id="write2" style="display: none"><span>简答题</span><span class="remark-count">·5题</span></div>
            <div id="outer-writer-box" style="display: none">
                <div class="percent"><span class="submits">提交率</span><div class="longback"><div id="innerWriter"></div></div><span class="numbSum">2/5</span></div>
                <div class="question-box">
                    <a href="${pageContext.request.contextPath}/insert/">
                        <div class="outere-writerquest">
                            <div class="count-number">1</div>
                            <div class="writerquestion-box"><div class="writer-top"><span>10%</span>正确</div><div class="writer-bottom">批改</div></div>
                        </div>
                    </a>
                    <a href="${pageContext.request.contextPath}/insert/">
                        <div class="outere-writerquest">
                            <div class="count-number">2</div>
                            <div class="writerquestion-box"><div class="writer-top"><span>10%</span>正确</div><div class="writer-bottom">批改</div></div>
                        </div>
                    </a>
                    <a href="">
                        <div class="outere-writerquest">
                            <div class="count-number">3</div>
                            <div class="writerquestion-box"><div class="writer-top"><span>10%</span>正确</div><div class="writer-bottom">批改</div></div>
                        </div>
                    </a>
                    <a href="">
                        <div class="outere-writerquest">
                            <div class="count-number">4</div>
                            <div class="writerquestion-box"><div class="writer-top"><span>10%</span>正确</div><div class="writer-bottom">批改</div></div>
                        </div>
                    </a>
                    <a href="">
                        <div class="outere-writerquest">
                            <div class="count-number">5</div>
                            <div class="writerquestion-box"><div class="writer-top"><span>10%</span>正确</div><div class="writer-bottom">批改</div></div>
                        </div>
                    </a>

                </div>
            </div>
        </div>
        <%--<div id="remark-right">
            <div class="right-first">
                <div id="remark-lable"><span>批阅情况</span></div>
                <div id="remark-details">
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>1</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>2</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesdone.svg" /><span>3</span></div></a>
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
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                    <a href=""><div class="modul"><img src="${pageContext.request.contextPath}/static/img/remarkquesundone.svg" /><span>14</span></div></a>
                </div>
            </div>
            <div id="right-second"></div>
        </div>--%>
    </div>

    <div id="bottom">
        <div id="Terms">Terms</div>
        <div id="Privacy">Privacy</div>
        <div id="cpy">© 2020 ChenChen, Inc.</div>
    </div>
</div>
</body>
</html>