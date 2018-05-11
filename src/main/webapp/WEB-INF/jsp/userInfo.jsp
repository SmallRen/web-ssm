<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
            <div class="navbar-header ">
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
                <ul class="nav navbar-nav  navml" id="headerUl">
                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/">首页</a>
                    </li>
                    <li class=" mouse font18"><a
                            href="${pageContext.request.contextPath}/about.html">关于</a></li>
                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/growth.html">成长</a></li>
                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/live.html">慢生活</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/share.html">IT分享</a>
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
            <div class="col-md-1 ">

            </div>
            <div class="col-md-2 " style="padding: 30px;" style="background: #000;">


                <form id="formimg">
                    <input type="file" id="file" name="file" accept="image/*"
                           style="width: 200px;height: 200px;opacity: 0;border-radius: 220px;"
                           onchange="xmTanUploadImg(this)">

                </form>
                <img src="data:image/jpg;base64,${userInfo.image}" width="200px" id="userimage" height="200px"
                     style="border-radius: 220px;margin-top: -200px ">
            </div>
            <div class="col-md-8">
                <div style="margin-top: 70px">
                    <ul style="list-style: none; ">
                        <li>
                            <span style="font-size: 30px;font-weight: bold;" id="titleusername">
                                ${userInfo.username}</span>
                        </li>
                        <li style="margin-top: 55px;" id="lipickname" class="lialter">
                            <div>
                                <span style="font-size: 15px;font-weight: bold;">昵称</span>
                                <span style="font-size: 15px;margin-left: 45px;width: 150px;"
                                      id="spanpickname">${userInfo.username}</span>
                                <span class="alter" hidden style="color: #0f88eb;cursor: pointer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                        class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</span>
                            </div>
                            <form class="form-inline" hidden style="margin-top: -5px;margin-bottom: -8px;">

                                <span style="font-size: 15px;font-weight: bold;  ">昵称</span>
                                <input style="margin-left: 30px;width: 200px" type="text" class="form-control"
                                       id="inputpickname">
                                <input style="margin-left: 30px;" type="button" class="btn btn-primary ok" value="保存"/>
                                <input type="button" class="btn btn-default cancel" style=" margin-left: 30px"
                                       value="取消"/>

                            </form>
                            <hr>
                        </li>
                        <li style="margin-top: 55px;" id="ligender" class="lialter">
                            <div>
                                <span style="font-size: 15px;font-weight: bold;  ">性别</span>
                                <span style="font-size: 15px;margin-left: 100px;"
                                      id="spangender">${userInfo.gender}</span>
                                <span class="alter" hidden style="color: #0f88eb;cursor: pointer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                        class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</span>
                            </div>
                            <div style="font-size: 15px; " hidden>
                                <span style="font-size: 15px;font-weight: bold;  ">性别</span>
                                <label class="radio-inline" style="margin-left: 100px;">
                                    <input type="radio" name="dadiogebder" checked id="inlineRadio1" value="男"> 男
                                </label>

                                <label class="radio-inline" style="margin-left: 50px">
                                    <input type="radio" name="dadiogebder" id="inlineRadio2" value="女"> 女
                                </label>
                                <div style="margin-top: 30px; margin-left: 130px;">
                                    <button class="btn btn-primary ok">保存</button>
                                    <button class="btn btn-default cancel" style=" margin-left: 30px"> 取消</button>
                                </div>
                            </div>
                            <hr>
                        </li>

                        <li style="margin-top: 55px;" id="introduce" class="lialter">

                            <div style="margin-top: -21px;">
                                <span style="font-size: 15px;font-weight: bold;  ">一句话介绍</span>
                                <span style="font-size: 15px;margin-left: 100px;"
                                      id="spanintroduce">${userInfo.summarize} </span>
                                <span class="alter" hidden style="color: #0f88eb;cursor: pointer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                        class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</span>
                            </div>
                            <div style="font-size: 15px;margin-top: 0px; " hidden>

                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="inputintroduce" class="col-md-2 control-label"> 一句话介绍</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" id="inputintroduce">
                                        </div>
                                    </div>
                                </form>
                                <div style="margin-top: 30px; margin-left: 130px;">
                                    <button class="btn btn-primary ok">保存</button>
                                    <button class="btn btn-default cancel" style=" margin-left: 30px"> 取消</button>
                                </div>
                            </div>
                            <hr>
                        </li>
                        <li style="margin-top: 55px;" id="liaddress" class="lialter">
                            <div>
                                <span style="font-size: 15px;font-weight: bold;  ">居住地</span>
                                <span style="font-size: 15px;margin-left: 45px;width: 150px;"
                                      id="spanaddress">${userInfo.address} </span>
                                <span class="alter" hidden style="color: #0f88eb;cursor: pointer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                        class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</span>
                            </div>
                            <form class="form-inline" hidden style="margin-top: -5px;margin-bottom: -8px;">

                                <span style="font-size: 15px;font-weight: bold;  ">居住地</span>
                                <input style="margin-left: 30px;width: 200px" type="text" class="form-control"
                                       id="inputaddress">
                                <input style="margin-left: 30px;" type="button" class="btn btn-primary ok" value="保存"/>
                                <input type="button" class="btn btn-default cancel" style=" margin-left: 30px"
                                       value="取消"/>

                            </form>
                            <hr>
                        </li>
                        <li style="margin-top: 55px;" id="liindustry" class="lialter">
                            <div>
                                <span style="font-size: 15px;font-weight: bold;  ">所在行业</span>
                                <span style="font-size: 15px;margin-left: 45px;width: 150px;"
                                      id="spanindustry">${userInfo.industry} </span>
                                <span class="alter" hidden style="color: #0f88eb;cursor: pointer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                        class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</span>
                            </div>
                            <form class="form-inline" hidden style="margin-top: -5px;margin-bottom: -8px;">
                                <span style="font-size: 15px;font-weight: bold;  ">所在行业</span>
                                <input style="margin-left: 30px;width: 200px" type="text" class="form-control"
                                       id="inputindustry">
                                <input style="margin-left: 30px;" type="button" class="btn btn-primary ok" value="保存"/>
                                <input type="button" class="btn btn-default cancel" style=" margin-left: 30px"
                                       value="取消"/>
                            </form>
                            <hr>
                        </li>
                        <li style="margin-top: 55px;" id="lieducation" class="lialter">
                            <div>
                                <span style="font-size: 15px;font-weight: bold;  ">教育经历</span>
                                <span style="font-size: 15px;margin-left: 45px;width: 150px;"
                                      id="spaneducation">${userInfo.education} </span>
                                <span class="alter" hidden style="color: #0f88eb;cursor: pointer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                        class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</span>
                            </div>
                            <form class="form-inline" hidden style="margin-top: -5px;margin-bottom: -8px;">
                                <span style="font-size: 15px;font-weight: bold;  ">教育经历</span>
                                <input style="margin-left: 30px;width: 200px" type="text" class="form-control"
                                       id="inputeducation">
                                <input style="margin-left: 30px;" type="button" class="btn btn-primary ok" value="保存"/>
                                <input type="button" class="btn btn-default cancel" style=" margin-left: 30px"
                                       value="取消"/>
                            </form>
                            <hr>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-1 ">

            </div>
        </div>
    </div>
    <jsp:include page="publicuse.jsp"/>
</div>


</body>
<script>
    //选择图片，马上预览
    function xmTanUploadImg(obj) {
        var file = obj.files[0];

        console.log(obj);
        console.log(file);
        console.log("file.size = " + file.size);  //file.size 单位为byte
        var reader = new FileReader();

        //读取文件过程方法
        reader.onloadstart = function (e) {
            console.log("开始读取....");
        }
        reader.onprogress = function (e) {
            console.log("正在读取中....");
        }
        reader.onabort = function (e) {
            console.log("中断读取....");
        }
        reader.onerror = function (e) {
            console.log("读取异常....");
        }
        reader.onload = function (e) {
            console.log("成功读取....");
            var img = document.getElementById("userimage");
            var userimg = document.getElementById("userimg");
            img.src = e.target.result;
            userimg.src = e.target.result;

            //或者 img.src = this.result;  //e.target == this

        }
        reader.readAsDataURL(file);
        var formData = new FormData($("#formimg")[0]);
        $.ajax({
            url: '/uploadImg',
            type: 'POST',
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function (returndata) {
            },
            error: function (returndata) {
            }
        });
    };
    //li鼠标移入移出事件class=""
    $(".lialter").mouseover(function () {
        $(this).find('.alter').show();
    });
    $(".lialter").mouseout(function () {
        $(this).find('.alter').hide();
    });
    //性别
    $("#ligender").find('.alter').click(function () {
        $(this).parent().hide();
        $(this).parent().next().show();
    });
    $("#ligender").find('.cancel').click(function () {
        $(this).parent().parent().prev().show();
        $(this).parent().parent().hide();
    });
    $("#ligender").find('.ok').click(function () {
        var gender = $(' input[name="dadiogebder"]:checked ').val();
        $("#spangender").html(gender);
        updateuserInfo();
        $(this).parent().parent().prev().show();
        $(this).parent().parent().hide();
    });
    //一句话介绍自己
    $("#introduce").find('.alter').click(function () {
        $(this).parent().hide();
        $("#inputintroduce").val($("#spanintroduce").html());
        $(this).parent().next().show();
    });
    $("#introduce").find('.cancel').click(function () {
        $(this).parent().parent().prev().show();
        $(this).parent().parent().hide();
    });
    $("#introduce").find('.ok').click(function () {
        var content = $("#inputintroduce").val();
        $("#spanintroduce").html(content);
        updateuserInfo();
        $(this).parent().parent().prev().show();
        $(this).parent().parent().hide();
    });
    //昵称
    $("#lipickname").find('.alter').click(function () {
        $(this).parent().hide();
        var username = $("#spanpickname").html();
        $("#inputpickname").val(username);
        $(this).parent().next().show();
    });
    $("#lipickname").find('.cancel').click(function () {
        $(this).parent().prev().show();
        $(this).parent().hide();
    });

    $("#lipickname").find('.ok').click(function () {
        var content = $("#inputpickname").val();
        $("#navusername").html(content);
        $("#titleusername").html(content);
        $("#spanpickname").html(content);
        updateuserInfo();
        $(this).parent().prev().show();
        $(this).parent().hide();
    });
    //地址
    $("#liaddress").find('.alter').click(function () {
        $(this).parent().hide();
        $("#inputaddress").val($("#spanaddress").html());
        $(this).parent().next().show();
    });
    $("#liaddress").find('.cancel').click(function () {
        $(this).parent().prev().show();
        $(this).parent().hide();
    });

    $("#liaddress").find('.ok').click(function () {
        var content = $("#inputaddress").val();
        $("#spanaddress").html(content);
        updateuserInfo();
        $(this).parent().prev().show();
        $(this).parent().hide();
    });
    //行业
    $("#liindustry").find('.alter').click(function () {
        $(this).parent().hide();
        $("#inputindustry").val($("#spanindustry").html());
        $(this).parent().next().show();
    });
    $("#liindustry").find('.cancel').click(function () {
        $(this).parent().prev().show();
        $(this).parent().hide();
    });
    $("#liindustry").find('.ok').click(function () {
        var content = $("#inputindustry").val();
        $("#spanindustry").html(content);
        updateuserInfo();
        $(this).parent().prev().show();
        $(this).parent().hide();
    });

    //教育
    $("#lieducation").find('.alter').click(function () {
        $(this).parent().hide();
        $("#inputeducation").val($("#spaneducation").html());
        $(this).parent().next().show();
    });
    $("#lieducation").find('.cancel').click(function () {
        $(this).parent().prev().show();
        $(this).parent().hide();
    });
    $("#lieducation").find('.ok').click(function () {
        var content = $("#inputeducation").val();
        $("#spaneducation").html(content);
        updateuserInfo();
        $(this).parent().prev().show();
        $(this).parent().hide();
    });

    function updateuserInfo() {
        var id = $("#publicuserId").html();
        var username = $("#spanpickname").html();
        var gender =  $("#spangender").html();
        var summarize = $("#spanintroduce").html();
        var address = $("#spanaddress").html();
        var industry = $("#spanindustry").html();
        var education = $("#spaneducation").html();
        $.ajax({
            url: '/updateUserInfo',
            type: 'POST',
            data: {
                'id': id, 'username': username , 'gender': gender, 'summarize': summarize,
                'address': address, 'industry': industry, 'education': education},
            async: false,
            cache: false,
            success: function (returndata) {

            },
            error:function (XMLHttpRequest, textStatus, errorThrown) {

            }
        });
    }
</script>
</html>
