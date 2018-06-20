$(function () {
    NProgress.start();
    $("#myCarousel").carousel('cycle');
    $(".mouse").mouseenter(function () {
        $(this).css("background-color", "#E9E9E4");
    });
    $(".mouse").mouseleave(function () {
        $(this).css("background-color", "white");
    });
    $("#username").blur(function () {
        checkusername();
    });
    $("#password").blur(function () {
        checkpassword();
    });
    $("#phone").blur(function () {
        checkphone();
    });
    $("#registerpassword").blur(function () {
        registercheckpassword();
    });

    $("#findphone").blur(function () {
        findcheckphone();
    });
    $("#findpassword").blur(function () {
        findcheckpassword();
    });

});


function check() {

    if (checkusername() && checkpassword()) {
        $.ajax({
            url: "/login.html",
            data: $("#logininfo").serialize(),
            async: true,
            cache: false,
            type: "POST",
            dataType: "TEXT",
            success: function (result) {
                if (result == 'true') {
                    $('#myModal').modal('toggle');
                    window.location.reload();
                }
                else if (result == 'false') {
                    $("#passwordspan").html("用户名或密码错误，请重试！");
                }
                else if(result=='unknownUser'){
                    $("#passwordspan").html("用户不存在！");
                }

                else {
                    $("#passwordspan").html("验证错误！");
                }
            }
        });

    }
}

function checkusername() {
    $("#username").parent().removeClass("has-error hassuccrss");
    var username = $("#username").val();
    var pattern = /^1[3578]\d{9}$/;
    if (!pattern.test(username) & username == "") {
        $("#username").parent().addClass("has-error");
        $("#usernamespan").text("请输入正确的电话号码");
        return false;
    }
    else {

        $("#username").parent().addClass("has-success");
        $("#usernamespan").text("");
        return true;
    }
}

function checkpassword() {
    $("#password").parent().removeClass("has-error has-success");
    var password = $("#password").val();
    var pattern = /^[a-zA-Z0-9_.]{8,20}$/;
    if (!pattern.test(password)) {

        $("#password").parent().addClass("has-error");
        $("#passwordspan").text("8-20为字母或数字包括下划线");
        return false;
    }
    else {
        $("#password").parent().addClass("has-success");
        $("#passwordspan").text("");
        return true;
    }
}

function find() {
    $("#myModalLabel").html("密码找回");
    $("#findphone").parent().removeClass("has-error has-success");
    $("#findpassword").parent().removeClass("has-error has-success");
    $("#findphone").val("");
    $("#findcode").val("");
    $("#findpassword").val("");
    $("#findphonespan").html("");
    $("#findpwdspan").html("");
    $("#modal1").css('display', 'none');
    $("#modal3").css('display', 'block');

}

function register() {
    $("#myModalLabel").html("用户注册");
    $("#registerpassword").parent().removeClass("has-error has-success");
    $("#phone").parent().removeClass("has-error has-success");
    $("#phone").val("");
    $("#code").val("");
    $("#phonespan").html("");
    $("#registerspan").html("");
    $("#registerpassword").val("");
    $("#modal1").css('display', 'none');
    $("#modal2").css('display', 'block');

}

function registermodal() {
    $("#myModalLabel").html("用户注册");
    $("#registerpassword").parent().removeClass("has-error has-success");
    $("#phone").parent().removeClass("has-error has-success");
    $("#phone").val("");
    $("#code").val("");
    $("#phonespan").html("");
    $("#registerspan").html("");
    $("#registerpassword").val("");
    $("#modal1").css('display', 'none');
    $("#modal2").css('display', 'block');
    $("#modal3").css('display', 'none');
    $('#myModal').modal('toggle');
}

function login() {
    $("#myModalLabel").html("用户登录");
    $("#modal2").css('display', 'none');
    $("#modal1").css('display', 'block');

}

function claermodal() {
    $("#password").val("");
    $("#username").val("");
    $("#username").parent().removeClass("has-error has-success");
    $("#password").parent().removeClass("has-error has-success");
    $("#passwordspan").text("");
    $("#usernamespan").text("");

    $("#myModalLabel").html("用户登录");
    $("#modal1").css('display', 'block');
    $("#modal2").css('display', 'none');
    $("#modal3").css('display', 'none');
    $('#myModal').modal('toggle');
};

function login1() {

    $("#myModalLabel").html("用户登录");
    $("#username").parent().removeClass("has-error has-success");
    $("#password").parent().removeClass("has-error has-success");
    $("#usernamespan").html("");
    $("#passwordspan").html("");
    $("#modal3").css('display', 'none');
    $("#modal1").css('display', 'block');

}


function registercheck() {
    if (checkphone() && checkcode() && registercheckpassword()) {
        $.ajax({
            url: "/phoneRegister",
            data: $("#register").serialize(),
            async: true,
            cache: false,
            type: "POST",
            dataType: "TEXT",
            success: function (result) {
                if (result == '/') {
                    $('#myModal').modal('toggle');
                    window.location.reload();
                }
                else if (result == 'exist') {
                    alert("用户存在")
                }
                else {
                    $("#passwordspan").html("验证错误！");
                }
            }
        });
    }
}

function checkphone() {
    $("#phone").parent().removeClass("has-error has-success");
    var username = $("#phone").val();
    var pattern = /^1[3578]\d{9}$/;
    if (!pattern.test(username)) {
        $("#phone").parent().addClass("has-error");
        $("#phonespan").text("请输入正确的电话号码");

        return false;
    }
    else {

        $("#phone").parent().addClass("has-success");
        $("#phonespan").text("");
        return true;
    }
}

function checkcode() {
    $("#code").parent().removeClass("has-error has-success");
    var code = $("#code").val();

    if (code == "") {
        $("#code").parent().addClass("has-error");
        $("#yanzhengma").text("请输入验证码");
        return false;
    }
    else {
        $("#code").parent().addClass("has-success");
        $("#yanzhengma").text("");
        return true;
    }
}

function registercheckpassword() {
    $("#registerpassword").parent().removeClass("has-error hassuccrss");
    var password = $("#registerpassword").val();
    var pattern = /^[a-zA-Z0-9_.]{8,20}$/;
    if (!pattern.test(password)) {

        $("#registerpassword").parent().addClass("has-error");
        $("#registerspan").text("8-20为字母或数字包括下划线");
        return false;
    }
    else {
        $("#registerpassword").parent().addClass("has-success");
        $("#registerspan").text("");
        return true;
    }
}

function findsendMessage() {
    if (findcheckphone()) {
        var InterValObj; //timer变量，控制时间
        var count = 60; //间隔函数，1秒执行
        var curCount;//当前剩余秒数
        var codeLength = 6;//验证码长度
        var phone = $("#findphone").val();
        //向后台发送处理数据
        $.ajax({
            type: "GET", //用POST方式传输
            dataType: "TEXT", //数据格式:JSON
            url: '/findSendMsg', //目标地址
            data: "phone=" + phone,
            success: function (msg) {
                console.log(msg);
                if (msg == 'unexist') {
                    $("#phone").parent().addClass("has-error");
                    $("#phonespan").html("用户未注册");

                }
                else {
                    curCount = count;
                    //设置button效果，开始计时
                    $('#findgetcode').removeAttr('onclick');
                    $("#findgetcode").text(curCount + "S后可再发送");
                    InterValObj = window.setInterval(//timer处理函数
                        function SetRemainTime() {
                            if (curCount == 0) {
                                window.clearInterval(InterValObj);//停止计时器
                                $("#findgetcode").text("获取验证码");
                                //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效
                                $("#findgetcode").click(function () {
                                    findsendMessage();
                                });
                            }
                            else {
                                curCount--;
                                $("#findgetcode").text(curCount + "S后可再发送");
                            }
                        }, 1000); //启动计时器，1秒执行一次
                }


            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert("请求对象XMLHttpRequest: " + XMLHttpRequest);
                alert("错误类型textStatus: " + textStatus);
                alert("异常对象errorThrown: " + errorThrown);


            }
        });
    }


}

function sendMessageregister() {

    if (checkphone()) {
        var InterValObj; //timer变量，控制时间
        var count = 60; //间隔函数，1秒执行
        var curCount;//当前剩余秒数
        var codeLength = 6;//验证码长度
        var phone = $("#phone").val();
        //向后台发送处理数据
        $.ajax({
            type: "GET", //用POST方式传输
            dataType: "TEXT", //数据格式:JSON
            url: '/sendMsg', //目标地址
            data: "phone=" + phone,
            success: function (msg) {
                console.log(msg);
                if (msg == 'exist') {
                    $("#phone").parent().addClass("has-error");
                    $("#phonespan").html("用户已注册");

                }
                else {
                    curCount = count;
                    //设置button效果，开始计时
                    $('#getcode').removeAttr('onclick');
                    $("#getcode").text(curCount + "S后可再发送");
                    InterValObj = window.setInterval(//timer处理函数
                        function SetRemainTime() {
                            if (curCount == 0) {
                                window.clearInterval(InterValObj);//停止计时器
                                $("#getcode").text("获取验证码");
                                //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效
                                $("#getcode").click(function () {
                                    sendMessageregister();
                                });
                            }
                            else {
                                curCount--;
                                $("#getcode").text(curCount + "S后可再发送");
                            }
                        }, 1000); //启动计时器，1秒执行一次
                }


            }
        });
    }


}

function bindfindcheckpassword() {
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

function bindfindcheckphone() {
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

function findcheck() {
    if (findcheckphone() && findcheckcode() && findcheckpassword()) {
        var phone = $("#findphone").val();
        var code = $("#findcode").val();
        var password = $("#findpassword").val();
        $.ajax({
            url: "/findPwd",
            data: {'phone': phone, 'msgCode': code, 'password': password},
            async: true,
            cache: false,
            type: "POST",
            dataType: "TEXT",
            success: function (result) {
                console.log(result);
                if (result) {
                    $('#myModal').modal('toggle');
                    setTimeout(function () {
                        $('#msgmodal').modal('toggle');
                    }, 300);

                }


            }
        });
    }
}

function findcheckphone() {
    $("#findphone").parent().removeClass("has-error has-success");
    var username = $("#findphone").val();
    var pattern = /^1[3578]\d{9}$/;
    if (!pattern.test(username)) {
        $("#findphone").parent().addClass("has-error");
        $("#findphonespan").text("请输入正确的电话号码");
        return false;
    }
    else {
        $("#findphone").parent().addClass("has-success");
        $("#findphonespan").text("");
        return true;
    }
}

function findcheckcode() {
    $("#findcode").parent().removeClass("has-error has-success");
    var username = $("#findcode").val();
    if (username == "") {
        $("#findcode").parent().addClass("has-error");
        $("#findyanzhengma").text("验证码不能为空");
        return false;
    }
    else {
        $("#findcode").parent().addClass("has-success");
        $("#findyanzhengma").text("");
        return true;
    }
}

function findcheckpassword() {
    $("#findpassword").parent().removeClass("has-error hassuccrss");
    var password = $("#findpassword").val();
    var pattern = /^[a-zA-Z0-9_.]{8,20}$/;
    if (!pattern.test(password)) {
        $("#findpassword").parent().addClass("has-error");
        $("#findpwdspan").text("8-20为字母或数字包括下划线");
        return false;
    }
    else {
        $("#findpassword").parent().addClass("has-success");
        $("#findpwdspan").text("");
        return true;
    }
}

$(document).ready(function () {
    NProgress.done();
    $.getJSON("http://ip.wheff7.com/ipinfo", function(data) {
        console.log(data)
        console.log(data[1].city_nameCN);
        var city=data[1].city_nameCN;
        $.ajax({
            url: "/address?city=" + city,
            async: true,
            cache: false,
            type: "GET",
            dataType: "JSON",
            success: function (result) {
                if (result) {
                    console.log(result)
                    $("#time").html('更新时间' + result.result.sk.time);
                    $("#temperature").html(result.result.today.temperature);
                    $("#city").html(result.result.today.city);
                    $("#registeraddress").html(result.result.today.city);
                    $("#temp").html(result.result.sk.temp);
                    $("#weather").html(result.result.today.weather);
                    $("#wind_direction").html(result.result.sk.wind_direction);
                    $("#wind_strength").html(result.result.sk.wind_strength);
                    $("#humidity").html(result.result.sk.humidity);
                    $("#uv_index").html(result.result.today.uv_index);


                }
                else {
                    console.log('dgfhj' + result)
                }
            }
        });
    });

    $(".flag").click(function () {
        var type = $(this).html();
        $.ajax({
            url: "/type.html",
            data: {'type': type},
            async: true,
            cache: false,
            type: "POST",
            dataType: "TEXT",
            success: function (result) {
                window.location.href = result;

            }
        });
    })
})

function diaplayTime(data) {
    var result;
    var str = data;
    //将字符串转换成时间格式
    var timePublish = new Date(str);
    var timeNow = new Date();
    var minute = 1000 * 60;
    var hour = minute * 60;
    var day = hour * 24;
    var month = day * 30;
    var diffValue = timeNow - timePublish;
    var diffMonth = diffValue / month;
    var diffWeek = diffValue / (7 * day);
    var diffDay = diffValue / day;
    var diffHour = diffValue / hour;
    var diffMinute = diffValue / minute;

    if (diffValue < 0) {
        alert("错误时间");
    }
    else if (diffMonth > 3) {
        result = timePublish.getFullYear() + "-";
        result += timePublish.getMonth() + "-";
        result += timePublish.getDate();
        alert(result);
    }
    else if (diffMonth > 1) {
        result = parseInt(diffMonth) + "月前";
    }
    else if (diffWeek > 1) {
        result = parseInt(diffWeek) + "周前";
    }
    else if (diffDay > 1) {
        result = parseInt(diffDay) + "天前";
    }
    else if (diffHour > 1) {
        result = parseInt(diffHour) + "小时前";
    }
    else if (diffMinute > 1) {
        result = parseInt(diffMinute) + "分钟前";
    }
    else {
        result = "刚刚发表";
    }
    return result;
}

var tab;

function qqLoginImg() {
    var width = $(window).width();
    var qWidth = 691;
    var left = (width - qWidth) / 2;
    tab = window.open('/qqLogin', '_blank', 'top=200,left=' +
        left +
        ',height=535, width=' +
        qWidth +
        ',toolbar=0,location=0,menubar=0');

    // alert($(window).width()); //浏览器时下窗口可视区域宽度
    // alert(window.location.host)


}

var url = window.location.host;
console.log('连接端口'+url);
if ('WebSocket' in window) {
    websocket = new WebSocket("ws://" + url + "/websocket/socketServer.do");
}
else if ('MozWebSocket' in window) {
    websocket = new MozWebSocket("ws://" + url + "/websocket/socketServer.do");
}
else {
    websocket = new SockJS("http://" + url + "/sockjs/socketServer.do");
}
websocket.onopen = onOpen;
websocket.onmessage = onMessage;
websocket.onerror = onError;
websocket.onclose = onClose;

function onOpen(openEvt) {
    //alert("已连接");
    console.log('websocket已连接')
}

function onMessage(evt) {
    console.log('websocket接收'+evt.data)
    /*alert("接收");
     if(evt.data.length>100){
         $("#indexLogin").remove();
         $("#indexRegister").remove();
         $("#headerUl").append('<li id="loginLi">' +
             '        <ul class="nav navbar-nav navbar-right">' +
             '                <li><a><img src="data:image/jpg;base64,' +
             evt.data +
             '" id="userimg" width="20px" height="20px"></a>' +
             '                </li>\n' +
             '            </c:if>\n' +
             '            <li class="dropdown">\n' +
             '                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"' +
             '                   aria-haspopup="true"\n' +
             '                   aria-expanded="false"><span id="navusername"></span><span' +
             '                        class="caret"></span></a>' +
             '                <ul class="dropdown-menu">\n' +
             '                    <li><a href="/userinfo.html">个人中心</a></li>' +
             '                    <li><a onclick="exitLogin()">退出登录</a></li>' +
             '                </ul>' +
             '            </li>' +
             '        </ul>' +
             '    </li>');
     }

     else{
       $("#navusername").html(evt.data) ;
         tab.close();
         $('#myModal').modal('toggle');
     }
     console.log(evt.data)*/
    // var user = jQuery.parseJSON(evt.data);
    /* console.log(evt.data.address);
     $.each($.parseJSON(evt.data), function(i, item) {
         $("ul li").last().append("<li>" +item.address+ "</li>");
     });*/
    if (evt.data == 'bind') {
        tab.close();
        window.location.href = 'bindPhone.html';
    }
    else {
        tab.close();
        window.location.reload()
    }
}

function onError() {
    // alert("服务器错误")
    console.log('websocket服务器错误')

}


function onClose() {
    //   websocket = new WebSocket("ws://" + url + "/websocket/socketServer.do");
    //  // alert("服务器已断开连接")
    console.log('websocket服务器已断开连接')
}

function doSend() {
    if (websocket.readyState == websocket.OPEN) {
        var msg = document.getElementById("inputMsg").value;
        websocket.send(msg);//调用后台handleTextMessage方法
        alert("发送成功!");
    } else {
        alert("连接失败!");
    }
}

window.onbeforeunload = function () {
    /* $.ajax({
         url: "/close",
         async: true,
         cache: false,
         type: "POST",
         dataType: "TEXT",
         success: function (result) {


         }
     });*/
}

function exitLogin() {
    $.ajax({
        url: "/exit.html",
        async: false,
        cache: false,
        type: "GET",
        success: function (result) {
            $("#loginLi").remove();
            $("#headerUl").append(' <li onclick="claermodal()" style="cursor: pointer" id="indexLogin">' +
                '            <a><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;快速登录</a>' +
                '        </li>' +
                '        <li onclick="registermodal()" style="cursor: pointer;" id="indexRegister">' +
                '            <a><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>&nbsp;快速注册</a>' +
                '        </li>');


        }

    });
    window.location.reload();
}