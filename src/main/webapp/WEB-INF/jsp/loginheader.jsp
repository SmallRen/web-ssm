<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${userInfo==null}">

        <li onclick="claermodal()" style="cursor: pointer" id="indexLogin">
            <a><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;快速登录</a>
        </li>
        <li onclick="registermodal()" style="cursor: pointer;" id="indexRegister">
            <a><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>&nbsp;快速注册</a>
        </li>
    </c:if>
<c:if test="${userInfo!=null}">
    <span id="userphone" hidden>${userInfo.phone}</span>
    <span id="flag" hidden>1</span>
    <span id="publicusername" hidden>${userInfo.username}</span>
    <span id="publicimage" hidden>${userInfo.image}</span>
    <span id="publicuserId" hidden>${userInfo.id}</span>
    <span id="publicsummarize" hidden>${userInfo.summarize}</span>
    <li id="loginLi">
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${userInfo.password=='1'}">
                <li><a><img src="/img/favicon.ico" id="userimg" width="20px" height="20px"></a>
                </li>
            </c:if>
            <c:if test="${userInfo.password!='1'}">
                <li><a><img src="data:image/jpg;base64,${userInfo.image}" id="userimg" width="20px" height="20px"></a>
                </li>
            </c:if>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                   aria-haspopup="true"
                   aria-expanded="false"><span id="navusername">${userInfo.username}</span><span
                        class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="/userInfo.html">个人中心</a></li>
                    <li><a onclick="exitLogin()">退出登录</a></li>

                </ul>
            </li>
        </ul>
    </li>
</c:if>
