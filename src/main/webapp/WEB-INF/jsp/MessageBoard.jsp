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
    <meta charset="UTF-8">
    <link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/img/favicon.ico"/>
    <link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/css/global.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/css/nprogress.css" type="text/css">

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
                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/">首页</a></li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/about.html">关于</a></li>

                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/live.html">慢生活</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/share.html">学习时刻</a>
                    </li>

                    <li class="mouse font18 active"><a
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
            <hr >
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <ol class="breadcrumb" style="height: 40px;font-size: 16px;border-radius: 0;background: #fff">
                    <li><a href="/">首页</a></li>
                    <li class="active">留言板</li>

                </ol>
            </div>
            <div class="col-md-9">

            </div>
        </div>

        <div>
            <div class="col-md-1">
            </div>
            <div class="col-md-10">
                <ul class="list-group">
                    <li class="list-group-item active"
                        style="height: 50px;background-color: #fff;border-color: #dddddd;border-bottom-color: #fff">
                        <span style="color:#0f88eb;font-weight: bold;font-size: 25px;" ><span id="answerNumber">${info.size()}</span>个留言</span>
                    </li>
                    <li class="list-group-item"></li>
                    <c:forEach items="${info}" var="c" varStatus="status">
                        <li class="list-group-item">
                            <div style="float: left">
                                <img class="img-rounded" src="data:image/jpg;base64,${c.user.image}" width="50" height="50px">
                            </div>
                            <div>
                                <span style="margin-left: 10px;margin-bottom:15px;color: #555555;font-weight: bold;font-size: 16px">${c.user.username}</span>
                                <div style="float: right"><span>${c.date} </span></div>
                                <br>
                                <div style="margin-top: 7px;">
                                    <span style="margin-top:15px;margin-left: 10px;color: #555555;  ">${c.user.summarize}</span>

                                </div>
                            </div>
                            <br>
                            <div><span style="color: #444444;font-size: 16px;">${c.content}</span></div>
                            <br>
                            <p></p>
                        </li>
                    </c:forEach>
                    <br>
                    <div class="input-group" style="margin-bottom: 200px; margin-top: 100px;">
                        <input id="revertInput" class="form-control " type="text"/>
                        <span class="input-group-addon  "
                              style="cursor: pointer;background-color: #5cb85c;color: #fff;border-width: 0;"
                              id="commentariesdiv"  >评论</span>

                    </div>
                </ul>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
    <jsp:include page="publicuse.jsp"/>
</div>

</body>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/nprogress.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.js"></script>
<script src="${ctx}/js/home.js"></script>
<script>
    $("#commentariesdiv").on("click", function () {
        var ctx = this;
        var flag = $("#flag").html();
        if (flag == 1) {
            var content = $("#revertInput").val();
            var userId = $("#publicuserId").html();
            var articlesId = $("#ArticlesId").html();
            $.ajax({
                url: "/addMessageBoard",
                data: {"userId": userId, "content": content},
                async: true,
                cache: false,
                type: "POST",
                dataType: "TEXT",
                success: function (result) {
                    if (result != 'false') {
                        var publicusername = $("#publicusername").html();
                        var publicimage = $("#publicimage").html();
                        var publicsummarize = $("#publicsummarize").html();
                        var a = '<li class="list-group-item"> <div style="float: left"> <img class="img-rounded userimage" src=' +
                            publicimage +
                            ' width="50" height="50px"> </div> <div> <span class="username" style="margin-left: 10px;margin-bottom:15px;color: #555555;font-weight: bold;font-size: 16px">' +
                            publicusername +
                            '</span> <div style="float: right"><span>刚刚</span></div> <br> <div style="margin-top: 7px;"> <span style="margin-top:15px;margin-left: 10px;color: #555555;  ">' +
                            publicsummarize +
                            '</span> </div>  <br></div> <div><span  class="content" style="color: #444444;font-size: 16px;">' +
                            content + '</span></div> <br> <p></p> </li>';
                        $(ctx).parent().prev().prev().after(a);
                        var num = $("#answerNumber").html();
                        $(".answerNumber").html(num * 1 + 1);
                        $("#answerNumber").html(num * 1 + 1);
                    }
                    else {

                    }
                }
            });


        }
        else {
            $("#myModal").modal('toggle');
        }


    });
</script>
</html>
