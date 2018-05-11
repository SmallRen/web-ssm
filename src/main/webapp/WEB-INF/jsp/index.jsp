<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>任宝佳的个人博客</title>
    <meta name="description" content="任宝佳的个人博客">
    <meta name="keywords" content="java,android,javaEE,前端,任宝佳的个人博客">
    <meta name="author" content="任宝佳">
    <meta charset="UTF-8">
    <link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/img/favicon.ico"/>
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/nprogress.js"></script>
    <script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.js"></script>
    <script src="${pageContext.request.contextPath}/js/home.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nprogress.css" type="text/css">

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
            <div id="navbar" class="collapse navbar-collapse navml ">
                <ul class="nav navbar-nav " id="headerUl">
                    <li class="active font18"><a href="${pageContext.request.contextPath}/">首页</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/about.html">关于</a></li>
                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/growth.html">成长</a></li>
                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/live.html">慢生活</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/share.html">IT分享</a>
                    </li>

                    <li class="mouse font18" ><a
                            href="${pageContext.request.contextPath}/MessageBoard.html">留言板</a>
                    </li>
                    <jsp:include page="loginheader.jsp"/>
                </ul>
            </div>

            <div class="row" style="margin-top: 90px;">
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
            <div class="col-md-9" style="padding-left: 30px;padding-right: 30px;padding-bottom: 30px;">
                <div id="myCarousel" class="carousel slide">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <c:forEach var="c" items="${carousels}" varStatus="a">
                            <c:if test="${a.index==0}">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            </c:if>
                            <c:if test="${a.index!=0}">
                                <li data-target="#myCarousel" data-slide-to="${a.index}"></li>
                            </c:if>
                        </c:forEach>



                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <c:forEach var="c" items="${carousels}" varStatus="a">
                            <c:if test="${a.index==0}">
                                <div class="item active">
                                    <img src="${c.path}" alt="First slide">
                                </div>
                            </c:if>
                            <c:if test="${a.index!=0}">
                                <div class="item ">
                                    <img src="${c.path}" alt="First slide">
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                    <!-- 轮播（Carousel）导航 -->
                    <a class="carousel-control left" href="#myCarousel"
                       data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#myCarousel"
                       data-slide="next">&rsaquo;</a>
                </div>
            </div>
            <jsp:include page="weathercontrol.jsp"/>
        </div>
    </div>
    <jsp:include page="publicuse.jsp"/>
</div>
</body>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?aeabc928ebf528f6bb4ca5999898a2b3";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

</html>
