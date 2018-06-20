<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>慢生活</title>
    <meta name="description" content="任宝佳的个人博客">
    <meta name="keywords" content="java,android,javaEE,前端,任宝佳的个人博客">
    <meta name="author" content="任宝佳">
    <meta charset="UTF-8">
    <link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/img/favicon.ico"/>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.js"></script>
    <script src="${pageContext.request.contextPath}/js/home.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nprogress.css" type="text/css">
    <script src="${pageContext.request.contextPath}/js/nprogress.js"></script>
</head>
<body>
<div class="page">
    <div style="height: 30px;width: 100%;background-color: #fff"></div>
    <nav class="navbar navbar-default color" style="border:0px;border-radius: 0px;margin-bottom: 0px;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/"><span id="qweer"
                                                                                         class="h1">SmallRen</span></a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav navml" id="headerUl">
                    <li class="mouse font18 "><a href="${pageContext.request.contextPath}/">首页</a></li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/about.html">关于</a></li>

                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/live.html">慢生活</a>
                    </li>
                    <li class="active font18"><a
                            href="${pageContext.request.contextPath}/share.html">学习时刻</a>
                    </li>

                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/MessageBoard.html">留言板</a>
                    </li>
                    <jsp:include page="loginheader.jsp"/>
                </ul>

            </div>
            <div class="row" style="margin-top: 40px;">
                <div class="col-md-8"></div>
                <div class="col-md-4" style="float: right;color: #777777">生活不止眼前的苟且，还有以后和未来的苟且！</div>
            </div>
            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2" style="float: right;color: #777777">--不详</div>
            </div>
            <hr>

        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <ol class="breadcrumb" style="height: 40px;font-size: 16px;border-radius: 0;background: #fff;">
                    <li><a href="/">首页</a></li>
                    <li class="active">IT分享</li>
                    <c:if test="${type!=null}">
                        <li class="active">${type}</li>
                    </c:if>

                </ol>
            </div>
            <div class="col-md-9">
            </div>
        </div>
        <div class="row">
            <div class="col-md-9 divrtsion">
                <c:if test="${list.list.size()!=0}">
                    <c:forEach items="${list.list}" var="c">
                        <div>
                            <div    style="cursor: pointer;width: 100%;padding-bottom: 20px;">
                                <div>
                                    <div style="padding-bottom: 50px;">
                                        <img style="padding:10px;width: 300px;height: 200px " class="liveimg"
                                             src="data:image/jpg;base64,${c.thtmeImg}">
                                        <p class="fontbold font18 text-muted" style="padding:10px; ">${c.title}</p><br>
                                        <p style="margin-left: 5px;margin-top:5px;font-size: 12px;" class=" text-muted">
                                            <span>发布日期：</span>${c.date}</p>
                                        <span style="margin-left: 28px;">${c.preface}</span>


                                    </div>
                                </div>

                            </div>
                            <div style="height: 40px;">
                                <a href="/details.html/${c.id}" style="text-decoration: none">
                                    <button style="float:right;border-width:0px;border-radius: 0;margin-right: 10px"
                                            type="button"
                                            class="btn btn-primary btn-sm button-right">
                                        点击阅读
                                    </button>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${list.list.size() ==0}">
                    <div align="center"><img src="/img/nomore.png" width="300" height="300">
                        <h3><p><b>没有更多文章了！</b></p></h3>
                    </div>
                </c:if>
            </div>
            <jsp:include page="weathercontrol.jsp"/>

    </div>

</div>
    <jsp:include page="publicuse.jsp"/>
</div>
</body>
</html>
