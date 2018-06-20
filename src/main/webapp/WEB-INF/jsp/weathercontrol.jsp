<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col-md-3 rightdiv ">
    <div style="height: 50px; margin-top: 0">
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group" >
                <input type="text" style="border-radius: 0" style="width: 100%;" class="form-control" placeholder="输入您要搜索的内容"
                       >
            </div>
        </form>
    </div>
    <div style="height: 230px; margin-top: 0px;cursor: pointer"><a
            style="text-decoration:none;color: #666666" href="/weatherDetails.html">
        <ul class="tianqiul" style="font-size: 15px;">
            <li><h4><b><span style="font-weight: bold;font-size: 24px;">天气情况</span></b>
                <span style="float: right;color:#696969;font-size: 12px;" id="time"></span></h4></li>
            <hr style="margin: 0;padding: 0">
            <li style="margin-top: 10px;"><span id="city"></span></li>
            <li><span id="temp"></span>℃</li>
            <li><span id="temperature"></span></li>
            <li><span id="weather"></span></li>
            <li><span id="wind_direction"></span></li>
            <li><span id="wind_strength"></span></li>
            <li><span id="humidity"></span></li>
            <li><span id="uv_index"></span></li>
        </ul>
    </a>
    </div>
    <div  >
        <ul class="tianqiul">
            <li>
                <div><h4><b><span style="font-weight: bold;font-size: 24px;">标签</span></b></h4>
                    <hr style="margin: 0;padding: 0">
                </div>
            </li>
            <li>
                <div style="width: 100%;float: right"><h4><b><span
                        style="font-weight: bold;font-size: 16px;">生活</span></b></h4>
                </div>
            </li>
            <li>
                <div style="width: 100%;float: right">
                    <c:forEach items="${life}" var="c">
                        <div style="float: left;margin:5px;">
                            <span   class="flag" style="background-color: ${c.textColor}">${c.text}</span>
                        </div>
                    </c:forEach>

                </div>
            </li>
            <li>
                <div style="width: 100%;float: right"><h4><b><span
                        style="font-weight: bold;font-size: 16px;">技术</span></b></h4>
                </div>
                <div style="margin-top: 10px">
                    <c:forEach items="${language}" var="c">
                        <div style="float: left;margin:5px;">
                            <span class="flag" style="background-color: ${c.textColor}">${c.text}</span>
                        </div>
                    </c:forEach>
                </div>
            </li>
            <li>
                <div style="width: 100%;float: right"><h4><b><span style="font-weight: bold;font-size: 16px;">系统</span></b>
                </h4>
                </div>
            </li>
            <li>
                <div style="width: 100%;float: right">

                    <c:forEach items="${sytemType}" var="c">
                        <div style="float: left;margin:5px;">
                            <span class="flag" style="background-color: ${c.textColor}">${c.text}</span>
                        </div>
                    </c:forEach>

                </div>
            </li>
            <li>
                <div style="width: 100%;float: right"><h4><b><span
                        style="font-weight: bold;font-size: 16px;">开发工具</span></b></h4>
                </div>
            </li>
            <li>
                <div style="width: 100%;float: right">

                    <c:forEach items="${ide}" var="c">
                        <div style="float: left;margin:5px;">
                            <span class="flag" style="background-color: ${c.textColor}">${c.text}</span>
                        </div>
                    </c:forEach>

                </div>
            </li>
            <li>
                <div style="width: 100%;float: right"><h4><b><span
                        style="font-weight: bold;font-size: 16px;">错误</span></b></h4>
                </div>
            </li>
            <li>
                <div style="width: 100%;float: right">

                    <c:forEach items="${exception}" var="c">
                        <div style="float: left;margin:5px;">
                            <span class="flag" style="background-color: ${c.textColor}">${c.text}</span>
                        </div>
                    </c:forEach>

                </div>
            </li>

        </ul>

    </div>

</div>