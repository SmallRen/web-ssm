<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>SmallRen博客后台</title>
    <link rel="SHORTCUT ICON" href="${ctx}/img/favicon.ico"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="${ctx}/css/bootstrap4.min.css">
    <link  rel="stylesheet" href="${ctx}/css/admincss/public.css">
</head>

<body>
<div class="container" style="margin-top: 12%">
    <div class="row">
        <div class="col">

        </div>
        <div class="col-md-4" style="text-align: center">
            <h2 style="margin-top: 25px;font-weight: bold">SmallRen博客后台</h2>
            <div style=" padding: 30px 20px 30px 20px;text-align:center">
                <div class="input-group">

                    <input type="text" class="form-control" placeholder="管理员用户名"  id="username"
                           aria-describedby="basic-addon1">
                </div>
                <br>
                <div class="input-group">

                    <input type="password" class="form-control" placeholder="密码"  id="password"
                           aria-describedby="basic-addon1">

                </div>  <br>
                <span id="message"> </span>
                <br>
                <br>
                <button type="button" onclick="login()" class="btn btn-info" style="width: 100%; ">登录</button>


            </div>
        </div>
        <div class="col">

        </div>
    </div>
</div>
<script src="${ctx}/js/jquery-3.1.1.min.js"></script>
<script src="${ctx}/js/popper.min.js"></script>
<script src="${ctx}/js/bootstrap4.min.js"></script>

<script>
    function login() {
        var username=$("#username").val();
        var password=$("#password").val();
        $.ajax({
            url: "${ctx}/admin/adminLogin",
            data: {'username':username,'password':password},
            async: true,
            cache: false,
            type: "POST",
            dataType: "TEXT",
            success: function (result) {
                console.log(result)
                if (result == 'true') {
                    window.location.href='/admin/index.html';
                }
                else  if(result == 'false') {
                    $("#message").html("用户名或密码错误，请重试！");
                }

            }
        });
    }

</script>
</body>
</html>
