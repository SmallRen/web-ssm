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
            <div id="navbar" class="collapse navbar-collapse ">
                <ul class="nav navbar-nav  navml" id="headerUl">
                    <li class="active font18"><a href="${pageContext.request.contextPath}/">首页</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/about.html">关于</a></li>

                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/live.html">慢生活</a>
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
            <div class="col-md-9" style="padding-left: 30px;padding-right: 30px;padding-bottom: 30px;">
                <div id="myCarousel" class="carousel slide">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="${pageContext.request.contextPath}/img/1.jpg" alt="First slide">
                        </div>
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/img/2.jpg" alt="Second slide">
                        </div>
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/img/3.jpg" alt="Third slide">
                        </div>
                        <div class="item">
                            <img src="${pageContext.request.contextPath}/img/4.jpg" alt="Third slide">
                        </div>
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
    $(function () {
        NProgress.start();
        $("#myCarousel").carousel('cycle');
        $(".mouse").mouseenter(function () {
            $(this).css("background-color", "#E9E9E4");
        });
        $(".mouse").mouseleave(function () {
            $(this).css("background-color", "white");
        });
    });
    var city;
    window.onload = function () {
        $("#bindcode").val('');
        $("#bindpassword").val('');
        var c_name = 'uin';
        $('#myModal2').modal('toggle');
        $.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js', function () {
            city = remote_ip_info.city;
            $.ajax({
                url: "/address?city=" + city,
                async: true,
                cache: false,
                type: "GET",
                dataType: "JSON",
                success: function (result) {
                    if (result) {
                        $("#time").html('更新时间' + result.result.sk.time);
                        $("#temperature").html(result.result.today.temperature);
                        $("#city").html(result.result.today.city);
                        $("#temp").html(result.result.sk.temp);
                        $("#weather").html(result.result.today.weather);
                        $("#wind_direction").html(result.result.sk.wind_direction);
                        $("#wind_strength").html(result.result.sk.wind_strength);
                        $("#humidity").html(result.result.sk.humidity);
                        $("#uv_index").html(result.result.today.uv_index);


                    }
                    else {

                    }
                }
            });
        });
        NProgress.done();

    }

    function jumpindex() {
        setTimeout(function () {
            window.location.href = '/';
        }, 300);
    }

    function bindcheck() {
        if (bindcheckphone1() & bindcheckpassword2()) {
            var phone = $("#bindphone").val();
            var code = $("#bindcode").val();
            var password = $("#bindpassword").val();
            //   alert(phone+"\n"+code+"\n"+password)
            $.ajax({
                url: "/qqRegister.html",
                data: {'phone': phone, 'msgCode': code, 'password': password, 'address': city},
                async: true,
                cache: false,
                type: "POST",
                dataType: "TEXT",
                success: function (result) {
                    // alert(result);
                    if (result == "success") {
                        window.location.href = '/';

                    }
                    else {

                        $("#msgError").modal('toggle');
                    }


                }
            });
        }
    }

    function bindcheckphone1() {
        $("#bindphone").parent().removeClass("has-error hassuccrss");
        var username = $("#bindphone").val();
        var pattern = /^1[3578]\d{9}$/;
        if (!pattern.test(username)) {
            $("#bindphone").parent().addClass("has-error");
            $("#bindphonespan").text("请输入正确的电话号码");
            return false;
        }
        else {
            $("#bindphone").parent().addClass("has-success");
            $("#bindphonespan").text("");
            return true;
        }
    }

    function bindcheckpassword2() {
        $("#bindpassword").parent().removeClass("has-error hassuccrss");
        var password = $("#bindpassword").val();
        var pattern = /^[a-zA-Z0-9_.]{8,20}$/;
        if (!pattern.test(password)) {

            $("#bindpassword").parent().addClass("has-error");
            $("#bindpwdspan").text("8-20为字母或数字包括下划线");
            return false;
        }
        else {
            $("#bindpassword").parent().addClass("has-success");
            $("#bindpwdspan").text("");
            return true;
        }
    }

    function bindsendMessage() {
        var InterValObj; //timer变量，控制时间
        var count = 60; //间隔函数，1秒执行
        var curCount;//当前剩余秒数
        var codeLength = 6;//验证码长度
        var phone = $("#bindphone").val();
        //向后台发送处理数据
        $.ajax({
            type: "GET", //用POST方式传输
            dataType: "TEXT", //数据格式:JSON
            url: '/bindPhone', //目标地址
            data: "phone=" + phone,
            success: function (msg) {
            }
        });
        curCount = count;
        //设置button效果，开始计时
        $('#bindgetcode').removeAttr('onclick');
        $("#bindgetcode").text(curCount + "S后可再发送");
        InterValObj = window.setInterval(//timer处理函数
            function SetRemainTime() {
                if (curCount == 0) {
                    window.clearInterval(InterValObj);//停止计时器
                    $("#bindgetcode").text("获取验证码");
                    //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效
                    $("#bindgetcode").click(function () {
                        bindsendMessage();
                    });
                }
                else {
                    curCount--;
                    $("#bindgetcode").text(curCount + "S后可再发送");
                }
            }, 1000); //启动计时器，1秒执行一次

    }
</script>
</html>
