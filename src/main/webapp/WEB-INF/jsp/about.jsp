<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>任宝佳的个人博客</title>
    <meta name="description" content="任宝佳的个人博客">
    <meta name="keywords" content="java,android,javaEE,前端,任宝佳的个人博客">
    <meta name="author" content="任宝佳">
    <link rel="SHORTCUT ICON" href="${ctx}/img/favicon.ico"/>
    <script src="${ctx}/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/nprogress.js"></script>
    <script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.js"></script>
    <script src="${ctx}/js/home.js"></script>
    <link rel="stylesheet" href="${ctx}/css/global.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/css/nprogress.css" type="text/css">

</head>
<body>
<div class="page">
    <div style="height: 30px;width: 100%;background-color: #fff"></div>
    <nav class="navbar navbar-default color" style="border:0px;border-radius: 0px;margin-bottom: 0px;">
        <div class="container">
            <div class="navbar-header ">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${ctx}/"><span id="qweer"
                                                                                         class="h1">SmallRen</span></a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav  navml" id="headerUl">
                    <li class="mouse font18"><a href="${ctx}/">首页</a>
                    </li>
                    <li class="active font18"><a
                            href="${ctx}/about.html">关于</a></li>

                    <li class="mouse font18"><a href="${ctx}/live.html">慢生活</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${ctx}/share.html">学习时刻</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${ctx}/MessageBoard.html">留言板</a>
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
            <hr  >
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <ol class="breadcrumb" style="height: 40px;font-size: 16px;border-radius: 0;background: #fff">
                    <li><a href="/${ctx}">首页</a></li>
                    <li class="active">关于</li>
                </ol>
            </div>
            <div class="col-md-11">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4" style="padding: 30px;" style="background: #000;">
                <img src="/img/my.png" width="300" height="300" style="border-radius: 220px;">
            </div>
            <div class="col-md-2">

            </div>
          <%--  <div class="col-md-2">
                <a href="${ctx}/space.html"  style="text-decoration:none;background: #333;color: #fff;cursor: pointer;padding: 10px;border-radius: 5px;">博主空间</a>

            </div>--%>
        </div>
        <div class="row">
            <div class="col-md-3">

            </div>
            <div class="col-md-6" style="text-align: center">
                    <span style="font-size: 15px;font-weight: bold;  ">QQ</span>
                    <span style="font-size: 15px;margin-left: 100px;" id="spanintroduce">1406423298</span>
            </div>
            <div class="col-md-3">
            </div>
        </div>
    </div>
    <jsp:include page="publicuse.jsp"/>
</div>
<script>

</script>


</body>
</html>
