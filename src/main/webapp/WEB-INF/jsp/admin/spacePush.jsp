<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>说说发布</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="SHORTCUT ICON" href="${ctx}/img/favicon.ico"/>
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="${ctx}/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${ctx}/assets/css/admin.css">
    <link rel="stylesheet" href="${ctx}/assets/css/app.css">

</head>
<body>
<jsp:include page="header.jsp"/>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-title">
            操作列表
        </div>
        <div class="tpl-left-nav-list">
            <ul class="tpl-left-nav-menu">
                <li class="tpl-left-nav-item">
                    <a href="index.html" class="nav-link  ">
                        <i class="am-icon-home"></i>
                        <span>首页</span>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list  ">
                        <i class="am-icon-table"></i>
                        <span>文章管理</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right "></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu">
                        <li>
                            <a href="${ctx}/admin/articlesPush.html">
                                
                                <span>文章发布</span> <i
                                    class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>

                            </a>
                            <a href="${ctx}/admin/articlesManage.html">
                                
                                <span>文章管理</span>
                            </a>
                            <a href="${ctx}/admin/articlesType.html">
                                
                                <span>文章类型</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list active ">
                        <i class="am-icon-magic"></i>
                        <span>个人空间管理</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr tpl-left-nav-more-ico-rotate"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu" style="display: block;">
                        <li>
                            <a href="${ctx}/admin/spacePush.html" class="active">
                                
                                <span>说说发布</span>
                            </a>
                            <a href="${ctx}/admin/spaceManage.html">
                                
                                <span>说说管理</span>
                            </a>
                        </li>
                    </ul>
                </li>


                <li class="tpl-left-nav-item">
                    <a href="${ctx}/admin/message.html" class="nav-link tpl-left-nav-link-list ">
                        <i class="am-icon-bar-chart"></i>
                        <span>留言管理</span>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="${ctx}/admin/log.html" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>日志管理</span>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="${ctx}/admin/failedMessage.html" class="nav-link tpl-left-nav-link-list ">
                        <i class="am-icon-bar-chart"></i>
                        <span>自动过滤留言管理</span>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="${ctx}/admin/permissions.html" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>页面权限管理</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            文章发布
        </div>
        <ol class="am-breadcrumb">
            <li><a href="${ctx}/admin/index.html" class="am-icon-home">首页</a></li>
            <li><a href="${ctx}/admin/message.html">文章管理</a></li>
            <li class="am-active">文章发布</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">

                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                            <i class="am-icon-search"></i>
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..."></div>
                    </div>
                </div>


            </div>

            <div class="tpl-block">

                <div class="am-g">
                    <div class="tpl-form-body tpl-form-line">
                        <div class="am-form tpl-form-line-form">
                            <div class="am-form-group">
                                <label class="am-u-sm-3 am-form-label">时间区域<span
                                        class="tpl-form-line-small-title">Time</span></label>
                                <div class="am-u-sm-3">
                                    <input type="text" id="scDate" class="tpl-form-input" placeholder="请在输入框输入您的旅游时间">
                                </div>
                                <div class="am-u-sm-6"></div>
                            </div>
                            <div class="am-form-group">
                                <label class="am-u-sm-3 am-form-label">节日<span
                                        class="tpl-form-line-small-title">Festival</span></label>
                                <div class="am-u-sm-4">
                                    <input type="text" id="scLocation" class="tpl-form-input"
                                           placeholder="请输入游玩的节日，没有可不填写">
                                </div>
                                <div class="am-u-sm-5"></div>
                            </div>
                            <div class="am-form-group">
                                <label class="am-u-sm-3 am-form-label">地点<span
                                        class="tpl-form-line-small-title">Address</span></label>
                                <div class="am-u-sm-5">
                                    <input type="text" id="scDateDescribe" class="tpl-form-input"
                                           placeholder="请输入游玩的地点，没有可不填写">
                                </div>
                                <div class="am-u-sm-4"></div>
                            </div>
                            <div class="am-form-group">
                                <label class="am-u-sm-3 am-form-label">图片文件<span
                                        class="tpl-form-line-small-title">Images</span></label>
                                <div class="am-u-sm-2">
                                    <div class="am-form-group am-form-file">

                                        <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                            <i class="am-icon-cloud-upload"></i>添加内容图片
                                        </button>
                                        <form id="formimg">
                                            <input type="file" id="image" name="files" accept="image/*"
                                                   multiple="multiple">
                                        </form>
                                    </div>
                                </div>
                                <div class="am-u-sm-7"></div>
                            </div>
                            <div class="am-form-group">
                                <label class="am-u-sm-3 am-form-label">视频文件<span
                                        class="tpl-form-line-small-title">Video</span></label>
                                <div class="am-u-sm-2">
                                    <div class="am-form-group am-form-file">

                                        <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                            <i class="am-icon-cloud-upload"></i>添加视频文件
                                        </button>
                                        <form id="formvideo">
                                            <input type="file" id="video" name="files" accept="application/mp4"
                                                   multiple="multiple">
                                        </form>
                                    </div>
                                </div>
                                <div class="am-u-sm-7"></div>
                            </div>
                            <div class="am-form-group">
                                <label for="scDescribe" class="am-u-sm-3 am-form-label">文章内容
                                    <span>Content</span></label>
                                <div class="am-u-sm-9">
                                    <textarea class="" id="scDescribe" placeholder="请输入文章内容"></textarea>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-4">
                                    <button id="submitspace" style="width: 200px" type="button"
                                            class="am-btn am-btn-primary tpl-btn-bg-color-success ">发布
                                    </button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div style="background-color: #fff;padding: 20px;margin: 20px;">
    <div>
        <p align="center" style="color: #888;font-size: 14px">smallRen博客——记录小人物的事情</p>
        <p align="center" style="color: #888;font-size: 14px"> Copyright © 20017 - 2018 蜀ICP备16036548号</p>
    </div>
</div>
<jsp:include page="adminPublic.jsp"/>
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/echarts.min.js"></script>
<script src="${ctx}/assets/js/iscroll.js"></script>
<script src="${ctx}/assets/js/app.js"></script>
<script>
    var progress = $.AMUI.progress;
    $(function () {
        progress.start();
    });

    window.onload = function () {
        progress.done();
    }
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
            $("#userimage").attr('uploadaddress', 'http://139.199.61.109/image/' + file.name);

            var img = document.getElementById("userimage");
            img.src = e.target.result;
            //或者 img.src = this.result;  //e.target == this
        }
        reader.readAsDataURL(file)
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
                alert(returndata);
            }
        });
    };
    $("#submitspace").click(function () {
        $("#my-modal-loading").modal('toggle');

        var scDate = $("#scDate").val();
        var scLocation = $("#scLocation").val();
        var scDescribe = $("#scDescribe").val();
        var scDateDescribe = $("#scDateDescribe").val();
        $.ajax({
                url: ${ctx}'/admin/insertSpace',
                data: {
                    'scDate': scDate,
                    'scLocation': scLocation,
                    'scDescribe': scDescribe,
                    'scDateDescribe': scDateDescribe
                },
                type: 'POST',
                async: true,
                cache: false,
                dataType: 'TEXT',
                success: function (result) {
                    if (!isNaN(result)) {
                        //上传图片
                        if ($("#image").val() != "") {

                            var imagebooelan = '';
                            var formData = new FormData($("#formimg")[0]);
                            $.ajax({
                                url: ${ctx}'/admin/spacefilesUploadimg',
                                type: 'POST',
                                data: formData,
                                headers: {spaceid: result},
                                async: false,
                                cache: false,
                                contentType: false,
                                processData: false,
                                success: function (returndata) {
                                },
                                error: function (returndata) {
                                    alert(returndata);
                                }
                            });
                        }
                        //上传视频
                        if ($("#video").val() != "") {
                            var formData = new FormData($("#formvideo")[0]);
                            $.ajax({
                                url: ${ctx}'/admin/spaceFilesUploadVideo',
                                type: 'POST',
                                data: formData,
                                headers: {spaceid: result},
                                async: false,
                                cache: false,
                                contentType: false,
                                processData: false,
                                success: function (returndata) {
                                },
                                error: function (returndata) {
                                    alert(returndata);
                                }
                            });
                        }


                    }
                    else {
                        alert('上传失败')
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert('失败')
                }
            }
        )
        $("#my-modal-loading").modal('toggle');
        $("#my-alertsuccess").modal('toggle');
    })

</script>
</body>
</html>