<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="A simple jQuery image viewing plugin.">
    <meta name="keywords"
          content="HTML, CSS, JS, JavaScript, jQuery plugin, image viewing, front-end, frontend, web development">
    <meta name="author" content="Fengyuan Chen">
    <title>空间</title>
    <link rel="SHORTCUT ICON" href="${ctx}/img/favicon.ico"/>
    <link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/css/viewer.css">

    <link rel="stylesheet" href="${ctx}/css/main.css">
    <link rel="stylesheet" href="${ctx}/css/global.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/css/nprogress.css" type="text/css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->

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
                <a class="navbar-brand" href="${ctx}/"><span id="qweer" class="h1">SmallRen</span></a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav navml" id="headerUl">
                    <li class="mouse font18 "><a href="${ctx}/">首页</a></li>
                    <li class="mouse font18"><a
                            href="${ctx}/about.html">关于</a></li>
                    <li class="mouse font18"><a href="${ctx}/growth.html">成长</a></li>
                    <li class="mouse  font18"><a href="${ctx}/live.html">慢生活</a>
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
            <hr style="margin-bottom: 0px;">
        </div>
    </nav>
    <div class="container">
        <h2>博主空间</h2>

        <c:forEach items="${info}" var="s">
            <div class="row">
                <div class="col-md-12" style="margin-top: 0">
                    <h3>${s.scDateDescribe}（${s.scDate}）</h3>
                    <h4><img src="${ctx}/img/定位.png" width="50" href="50">${s.scLocation}</h4>
                    <h7>${s.scDescribe}</h7>
                    <ul class="docs-pictures clearfix">

                        <c:forEach items="${s.pictureList}" var="a">
                            <li>
                                <img style="float: left; display:block; overflow:hidden;" data-original="${a.pPath}"
                                     class="img-rounded"
                                     src="${a.pPath}"
                                     alt="${a.pName}">
                                <div class="content">
                                    <a href="${ctx}/img/detialsimage/${a.pName}" target="view_window"
                                       style="text-decoration: none">查看原图</a>
                                </div>
                            </li>
                        </c:forEach>


                    </ul>
                </div>
                <div>
                    <div class="col-md-12" style="margin-top: 0">
                        <c:forEach items="${s.videoList}" var="v">

                            <video style="float: left" onclick="videoclick('${v.vPath}')" class="video1"
                                   src="${v.vPath}" id="video1"></video>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </c:forEach>


    </div>



    <jsp:include page="publicuse.jsp"/>
</div>

myVideoModal
<!-- Modal -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="myVideoModal"
     aria-labelledby="myLargeModalLabel" style="margin: 0;padding: 0;border-radius: 0">
    <div class="modal-dialog modal-lg" role="document" style="border-radius: 0">
        <div class="row" style="margin: 0;padding: 0">
            <div class="col-md-12" style="margin: 0;padding: 0">
                <video class="video2" id="modalvideo"   controls="controls"
                       style="width: 100%;height: 100%">

                </video>
            </div>
        </div>
    </div>
</div>

<script src="${ctx}/js/jquery-3.1.1.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/viewer.js"></script>
<script src="${ctx}/js/main.js"></script>
<script src="${ctx}/js/nprogress.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.js"></script>
<script src="${ctx}/js/home.js"></script>
<script>
    $(".video2").mouseover(function () {
        $(".video2").attr('controls', 'controls');
    });
    $(".video2").mouseout(function () {

        $(".video2").removeAttr('controls', '');
    });
    $('#myVideoModal').on('hidden.bs.modal', function (e) {
        $('.video2').trigger('pause');
    })
    $(function () {
        playMedia(2, null);
    });
    //视频播放
    function playMedia(startTime, endTime) {
        var myVid = document.getElementById("video1");
        myVid.currentTime = startTime;
        myVid.pause();
    }

    function videoclick(src) {
        $("#modalvideo").attr('src', src);
        $('.video2').trigger('play');
        $("#myVideoModal").modal('toggle');
    }

</script>
</body>
</html>
