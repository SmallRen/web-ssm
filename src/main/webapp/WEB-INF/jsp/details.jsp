<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${info.title}</title>
    <meta name="description" content="${info.title}">
    <meta name="keywords" content="${info.title}">
    <meta name="author" content="${info.title}">
    <meta charset="UTF-8">
    <link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/img/favicon.ico"/>
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
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

                    <li class="active font18"><a href="${pageContext.request.contextPath}/live.html">慢生活</a>
                    </li>
                    <li class="mouse font18"><a
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
                <ol class="breadcrumb" style="height: 40px;font-size: 16px;border-radius: 0;background: #fff">
                    <li><a href="/">首页</a></li>
                    <li class="active">慢生活</li>
                    <c:if test="${type!=null}">
                        <li class="active">${type}</li>
                    </c:if>
                </ol>
            </div>
            <div class="col-md-9">

            </div>
        </div>
        <%--${info.content}--%>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8" style="padding: 30px;" style="background: #000;"><h3 align="center">
                ${info.title}</h3></div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-2">
                <img src="/img/time.png" style="margin-right: 10px;" width="18" height="18"><b>${info.date}</b>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-4" style="margin-bottom: 50px">
                <img src="/img/see.png" style="margin-right: 10px;margin-left: 45px" width="18"
                     height="18"><b>${info.browseNumber}</b>
                <img src="/img/reply.png" style="margin-right: 10px;margin-left: 15px" width="18"
                     height="18"><b class="answerNumber">${info.answerNumber}</b>

            </div>
            <div class="col-md-2"></div>
        </div >
        <div class="row">
            <div class="col-md-2" ></div>
            <div class="col-md-8"><span  id="contentlast">${info.content}</span></div>
            <div class="col-md-2"></div>
        </div>
        <div>
            <div class="col-md-2">
            </div>
            <div class="col-md-8" style="margin-top: 100px">
                <ul class="list-group" id="revertul">
                    <li class="list-group-item active"
                        style="height: 50px;background-color: #fff;border-color: #dddddd;border-bottom-color: #fff">
                        <span style="color:#0f88eb;font-weight: bold;font-size: 25px;"><span
                                class="answerNumber">${info.answerNumber}</span> 个评论</span>

<%--                  评论数排序，未实现      <div class="btn-group" style="float: right" align="center">
                            <select class="form-control" onchange="selectonchange()">
                                <option>默认排序</option>
                                <option>评论数排序</option>
                            </select>
                        </div>--%>
                    </li>
                    <li class="list-group-item"></li>
                    <c:forEach items="${commentaries}" var="c" varStatus="status">
                        <li class="list-group-item">
                            <div style="float: left">
                                <img class="img-rounded userimage" src="data:image/jpg;base64,${c.user.image}" width="50" height="50px">
                            </div>
                            <div>
                                <span class="username"
                                      style="margin-left: 10px;margin-bottom:15px;color: #555555;font-weight: bold;font-size: 16px">${c.user.username}</span>
                                <div style="float: right"><span>${c.date}</span></div>
                                <br>
                                <div style="margin-top: 7px;">
                                    <span style="margin-top:15px;margin-left: 10px;color: #555555;  ">${c.user.summarize}</span>

                                </div>
                                <br>
                            </div>
                            <div><span class="content" style="color: #444444;font-size: 16px;">${c.content}</span></div>
                            <div style="margin-top: 10px;float: right;margin-bottom: 20px;">
                                <img style="margin-left: 20px;" src="/img/message.png" width="18" height="18"/>
                                <span data-toggle="modal" class="onclickspan"
                                      onclick="revert(this)" commid="${c.commId}"
                                      style="cursor: pointer">
                                <span style="margin-left: 3px;color:#9fadc7;margin-right: 3px;"
                                      class="revertNumber">${c.revertNumber}</span>
                                    <span style="color:#9fadc7;">条评论</span>
                            </span>
                            </div>
                            <br>
                            <p></p>
                        </li>
                    </c:forEach>
                    <br>
                    <div class="input-group">
                        <input id="revertInput" class="form-control " type="text"/>
                        <span class="input-group-addon  "
                              style="cursor: pointer;background-color: #5cb85c;color: #fff;border-width: 0"
                              id="commentariesdiv">评论</span>

                    </div>
                </ul>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <jsp:include page="publicuse.jsp"/>
</div>
<span hidden id="ArticlesId">${info.id}</span>
<span hidden id="answerNumber">${info.answerNumber}</span>
<span hidden id="revertNumberflag"> </span>
<span id="commId" hidden></span>

<!-- Modal -->
<div class="modal fade" id="discussmyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <div>
                    <span class="modal-title" id="myModalLabel" style="font-size: 25px"><span
                            id="num">0</span>条评论</span>
                </div>
            </div>
            <div class="modal-body pre-scrollable" style=" max-height:450px">
                <div style="float: left">
                    <img class="img-rounded" id="image" src="" width="26" height="26px">
                </div>
                <div style="text-align: match-parent">
                    <span id="usernamea" style="margin-left: 8px; olor: #555555;font-size: 14px"></span>
                </div>
                <br>
                <span id="content" style="color: #444444;font-size: 16px;"> </span>
                <p></p>
                <div class="rever" id="revert">

                </div>
            </div>

            <div class="modal-footer">
                <input type="text" class="form-control" placeholder="在此输入评论，回车输入" id="discuss">
            </div>
        </div>
    </div>
</div>
<script>
    //评论数标识
    var num;
    $('#discuss').bind('keypress', function (event) {
        if (event.keyCode == 13) {
            var flag = $("#flag").html();
            if (flag == 1) {
                var content = $('#discuss').val();
                if (content != '') {
                    var ArticlesId = $("#ArticlesId").html();
                    var commId = $("#commId").html();
                    var publicuserId = $("#publicuserId").html();
                    var username = $("#publicusername").html();
                    var revertusername = $("#usernamea").html();
                    var publicimage = $("#publicimage").html();
                   // alert(publicimage);
                    var revertNumberflag = $("#revertNumberflag").html();
                    var a="#revertul li:eq(" + num + " )";
                    var oldrn = $(a).find(".revertNumber").html();
                    $.ajax({
                        url: '/addRevert',
                        data: {
                            'articlesId': ArticlesId,
                            "commentariesId": commId,
                            "content": content,
                            'userId': publicuserId
                        },
                        async: true,
                        cache: false,
                        type: "POST",
                        dataType: "JSON",
                        success: function (result) {
                            if (result.code == 100) {
                                var a = ' <div class="discussdiv"><div style="float: left;"> ' +
                                    '<img class="img-rounded" src="data:image/jpg;base64,' +
                                    publicimage +
                                    '" width="26" height="26px"> </div> <div style="text-align: match-parent"> <span style="margin-left: 8px; color: #555555;font-size: 14px">' +
                                    username +
                                    '</span> <span style="margin-left: 8px; color: #9fadc6;font-size: 14px">回复</span> <span style="margin-left: 8px; color: #555555;font-size: 14px">' +
                                    revertusername +
                                    '</span><div style="float: right"><span>' +
                                    '刚刚' +
                                    '</span></div> </div> <br> <span style="color: #444444;font-size: 16px;" class="contentspan"> ' +
                                    content + ' </span>   <p/> </div>';
                                $("#revert").before(a);
                                $("#discuss").val("");
                                $("#revertNumberflag").html(revertNumberflag * 1 + 1);
                                $("#revertul li:eq(" + num + ")").find(".revertNumber").html(oldrn * 1 + 1);

                            }
                            else {
                                alert("请求失败请稍后再试！");
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert("请求对象XMLHttpRequest: " + XMLHttpRequest);
                            alert("错误类型textStatus: " + textStatus);
                            alert("异常对象errorThrown: " + errorThrown);


                        }
                    });
                }
            } else {
                $("#discussmyModal").modal('toggle');
                setTimeout(function () {
                    $("#myModal").modal('toggle');
                }, 300);
            }
        }
    });

    function revert(Obj) {
//错误  动态添加点击会获取不不到commid,解决办法赋值到属性上面去
        var commId = $(Obj).attr('commid');
        num = $(Obj).parent().parent().index();
        var username = $(Obj).parent().prev().prev().find(".username").html();

        var publicusername = $("#publicusername").html();
        if (username == publicusername) {
            $("#discuss").attr("disabled", "disabled");
            $("#discuss").attr('placeholder', '不可回复自己发出的消息');
        }
        else {
            $("#discuss").removeAttr("disabled", "disabled");
            $("#discuss").attr('placeholder', '回复  ' + username);
        }
        var userimage = $(Obj).parent().prev().prev().prev().find(".userimage").attr('src');
        var content = $(Obj).parent().prev().find(".content").html();
        var revertNumber = $(Obj).children("#revertNumber").html();
        $("#revertNumberflag").html(revertNumber);
        $("#commId").html(commId);
        $("#content").html(content);
        $("#usernamea").html(username);
        $("#discuss").val("");

        $("#image").attr('src', userimage);
        $(".discussdiv").remove();
        $("#discussmyModal").modal('toggle');
        var ArticlesId = $("#ArticlesId").html();
        $.ajax({
            url: "/selectReverts",
            data: {'articlesId': ArticlesId, "commId": commId},
            async: true,
            cache: false,
            type: "POST",
            dataType: "JSON",
            success: function (result) {
                console.log(result)
                if (result.code == 100) {
                    $("#num").html('0')
                    $.each(result.data.info, function (i, item) {
                        $("#num").html(i + 1)
                        var userimage = item.user.image;
                        var username1 = item.user.username;
                        var content1 = item.content;
                        var date = item.date;
                        var a = ' <div class="discussdiv">' +
                            '<div style="float: left;"> ' +
                            '<img class="img-rounded" src="data:image/jpg;base64,' +
                            userimage +
                            '" width="26" height="26px"> </div> ' +
                            '<div style="text-align: match-parent"> ' +
                            '<span style="margin-left: 8px; color: #555555;font-size: 14px">' +
                            username1 +
                            '</span>' +
                            ' <span style="margin-left: 8px; color: #9fadc6;font-size: 14px">回复</span> ' +
                            '<span style="margin-left: 8px; color: #555555;font-size: 14px">' +
                            username +
                            '</span>' +
                            '<div style="float: right"><span>' +
                            date +
                            '</span></div> </div>' +
                            ' <br>' +
                            ' <span style="color: #444444;font-size: 16px;" class="contentspan"> ' +
                            content1 + ' </span>   <p/> </div>';
                        $("#revert").before(a);
                    });
                }
                else {
                    alert("请求失败请稍后再试！");
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
            }
        });
    }
    $("#commentariesdiv").on("click", function () {
        var ctx = this;
        var flag = $("#flag").html();
        if (flag == 1) {
            var content = $("#revertInput").val();
            var userId = $("#publicuserId").html();
            var articlesId = $("#ArticlesId").html();
            $.ajax({
                url: "/commentaries",
                data: {'articlesId': articlesId, "userId": userId, "content": content},
                async: true,
                cache: false,
                type: "POST",
                dataType: "TEXT",
                success: function (result) {
                    if (result != 'false') {
                        var publicusername = $("#publicusername").html();
                        var publicimage = $("#publicimage").html();
                       // alert(publicimage)
                        var publicsummarize = $("#publicsummarize").html();
                        var a = '<li class="list-group-item"> <div style="float: left"> <img class="img-rounded userimage" src="data:image/jpg;base64,' +
                            publicimage + '" width="50" height="50px"> </div> <div> <span class="username" style="margin-left: 10px;margin-bottom:15px;color: #555555;font-weight: bold;font-size: 16px">' +
                            publicusername +
                            '</span> <div style="float: right"><span>刚刚</span></div> <br> <div style="margin-top: 7px;"> <span style="margin-top:15px;margin-left: 10px;color: #555555;  ">' +
                            publicsummarize +
                            '</span> </div>  <br></div> <div><span  class="content" style="color: #444444;font-size: 16px;">' +
                            content + '</span></div> <div style="margin-top: 10px;float: right;margin-bottom: 20px;"> <img style="margin-left: 20px;" src="/img/message.png" width="18" height="18"/> <span  data-toggle="modal" ' +
                            ' onclick="revert(this)" commid="' +
                            result +
                            '"   style="cursor: pointer"> <span style="margin-left: 3px;color:#  ;margin-right: 3px;">0</span> <span style="color:#9fadc7;">条评论</span> </span> </div> <br> <p></p> </li>';
                        $(ctx).parent().prev().prev().after(a);
                        var num = $("#answerNumber").html();
                        $(".answerNumber").html(num * 1 + 1);
                        $("#answerNumber").html(num * 1 + 1);
                        $("#commId").html("33");
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
    function selectonchange() {
        var vs = $('select option:selected').val();

    }

</script>
</body>
</html>
