<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>首页管理</title>
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
                    <a href="index.html" class="nav-link">
                        <i class="am-icon-home"></i>
                        <span>首页</span>
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list  ">
                        <i class="am-icon-table"></i>
                        <span>文章管理</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr  am-margin-right "></i>
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
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list  ">
                        <i class="am-icon-magic"></i>
                        <span>个人空间管理</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu">
                        <li>
                            <a href="${ctx}/admin/spacePush.html">
                                
                                <span>说说发布</span>
                            </a>
                            <a href="${ctx}/admin/spaceManage.html">
                                
                                <span>说说管理</span>
                            </a>
                        </li>
                    </ul>
                </li>



                <li class="tpl-left-nav-item">
                    <a href="${ctx}/admin/myInfo.html" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-outdent"></i>
                        <span>我的信息管理</span>

                    </a>
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
                    <span class="am-icon-code"></span>技术
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                            <i class="am-icon-search"></i>
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..."></div>
                    </div>
                </div>
            </div>
            <div class="am-u-sm-12">
                <button type="button" class="am-btn am-btn-primary" onclick="addindextype(this)">添加</button>
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <hr>
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
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-promptaddindex">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">添加文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group">
                <div class="am-u-sm-12" style="margin-top: 30px">
                    <div class="am-form-group am-u-sm-12 am-form-file">
                        <div class="tpl-form-file-img">
                            <img src="/assets/img/a5.png" alt="" width="400" height="200"
                                 id="userimage">
                        </div>
                        <form id="formimg">
                            <input type="file" id="file" name="file" accept="image/*"
                                   onchange="xmTanUploadImg(this)" multiple></form>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="submitaddCarouse()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirmfile">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">删除</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="deletefile()">确定</span>
        </div>
    </div>
</div>
<span id="fileid" hidden></span>
<jsp:include page="adminPublic.jsp"/>
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/echarts.min.js"></script>
<script src="${ctx}/assets/js/iscroll.js"></script>
<script src="${ctx}/assets/js/app.js"></script>
<script>
    function submitaddCarouse() {
        var formData = new FormData($("#formimg")[0]);
        $.ajax({
            url: '/admin/uploadImg',
            type: 'POST',
            headers:{articlesId:result},
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function (returndata) {

            },
            error: function (returndata) {
                alert(returndata + "error");
            }
        });
    }
    function addindextype(obj) {
        $("#fileid").html("");
        $('#my-promptaddindex').modal({
            width: 400,
            relatedTarget: obj,
            onConfirm: function (options) {

            },
            onCancel: function () {
            }
        });
    }

    function deletefile() {
        var id = $("#fileid").html();

        $("#my-modal-loading").modal('toggle');
        $.ajax({
            url: ${ctx}'/admin/deleteCarousel/' + id,
            type: 'POST',
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("tbody").find('.' + id).remove();
                        $("#my-modal-loading").modal('toggle');
                        $("#my-alertsuccess").modal('toggle');
                    }, 500)

                }
                else {

                    $("#my-modal-loading").modal('toggle');
                    $("#my-alerterror").modal('toggle');
                }
            }
        })
    }


    var progress = $.AMUI.progress;
    $(function () {
        progress.start();
    });
    window.onload = function () {
        progress.done();
        $.ajax({
            url: '/admin/allIndex',
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                $.each(result, function (n, value) {
                    $("tbody").append(' <tr class="' + value.id +
                        '" data-id="' + value.id +
                        '"><td><a>'
                        + value.image +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="' +
                        'openeditmodal(this)"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="' +
                        'opendeletemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });


    }
    function openeditmodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        //$("#editfiletype").val(type);
        $('#my-promptaddindex').modal({
            width: 400,
            onConfirm: function (options) {

            },
            // closeOnConfirm: false,
            onCancel: function () {

            }
        });

    }
    function opendeletemodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');

        $("#fileid").html(id);
        $('#my-confirmfile').modal('toggle');
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
//        var formData = new FormData($("#formimg")[0]);
//        $.ajax({
//            url: '/uploadimg',
//            type: 'POST',
//            data: formData,
//            async: false,
//            cache: false,
//            contentType: false,
//            processData: false,
//            success: function (returndata) {
//                alert(returndata);
//            },
//            error: function (returndata) {
//                alert(returndata);
//            }
//        });
    };
</script>
</body>
</html>