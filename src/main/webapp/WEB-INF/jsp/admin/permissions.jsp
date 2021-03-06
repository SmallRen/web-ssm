<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>留言管理</title>
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
                    <a href="${ctx}/admin/message.html" class="nav-link tpl-left-nav-link-list active">
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
                    <a href="${ctx}/admin/permissions.html" class="nav-link tpl-left-nav-link-list active">
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
            <li><a href="${ctx}/admin/message.html">留言板管理</a></li>

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
            <div class="am-u-sm-12">
                <button type="button" class="am-btn am-btn-primary" onclick="addsystemtype(this)">添加</button>
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th>url</th>
                        <th>权限</th>
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
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-promptadd">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">添加页面权限</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="addurl" class="am-u-sm-5 am-form-label">url地址<span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="addurl" placeholder="请输入url">
                        </div>
                    </div>
                </div>
            </div>
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="addpermissions" class="am-u-sm-5 am-form-label">权限<span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="addpermissions" placeholder="请输入权限">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="addPermissions()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-promptupdate">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">修改页面权限</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="updateurl" class="am-u-sm-5 am-form-label">url地址<span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="updateurl" placeholder="请输入url">
                        </div>
                    </div>
                </div>
            </div>
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="updatepermissions" class="am-u-sm-5 am-form-label">权限<span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="updatepermissions" placeholder="请输入权限">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="updatePermissions()">提交</span>
        </div>
    </div>
</div>
<div style="background-color: #fff;padding: 20px;margin: 20px;">
    <div>
        <p align="center" style="color: #888;font-size: 14px">smallRen博客——记录小人物的事情</p>
        <p align="center" style="color: #888;font-size: 14px"> Copyright © 20017 - 2018 蜀ICP备16036548号</p>
    </div>
</div>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirmdelete">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">删除记录</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="deletefile()">确定</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-no-btn" id="detialscontent" tabindex="-1" id="doc-modal-1">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">留言内容
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd" style="margin-top: 30px;">
            <span id="content"></span>
        </div>
    </div>
</div>
<span id="fileid"></span>
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
    $(window).load(function () {
        pageselect(1);

    });
    function pagechoose(page) {

        $("tbody").empty();
        $("table").next().empty();
        $(".am-cf").empty();
        pageselect(page);
    }
    function pageselect(page) {
        $.ajax({
            url: '/admin/allPermissions/1',
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                $.each(result.list, function (n, value) {
                    $("tbody").append(' <tr class="' + value.id +
                        '" data-id="' + value.id + '">' +
                        '<td><a class="url">' + value.url + '</a></td>  ' +
                        '<td><a class="authc">' + value.authc + '</a></td>  ' +
                        '<td> ' +
                        '<div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> ' +
                        '<button class="am-btn am-btn-default am-btn-xs am-text-secondary"' + 'onclick="openeditmodal(this)"><span class="am-icon-pencil-square-o"></span> 编辑 </button>' +
                        ' <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="opendeletemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');
                });

                $("table").after('<div class="am-cf"> <div class="am-fr"> <ul class="am-pagination tpl-pagination" >' +
                    '<li   ><a onclick="pagechoose(' + result.firstPage +
                    ')">首页</a></li>' +
                    '<li   id="pageul"><a onclick="pagechoose(' + result.prePage +
                    ')">上一页</a></li>' +
                    '<li ><a    id="nextpages"  onclick="pagechoose(' + result.nextPage +
                    ')">下一页</a></li>' +
                    '<li    ><a onclick="pagechoose(' + result.lastPage +
                    ')">末页</a></li>' +
                    '</ul> </div> </div>');

                var pages = result.pages;
                $.each(result.navigatepageNums, function (n, value) {
                    if (result.pageNum == pages) {
                        $("#pageul").after('<li class="am-active"><a  onclick="pagechoose(' + pages + ')">' + pages + '</a></li>');
                    }
                    else {
                        $("#pageul").after('<li  ><a  onclick="pagechoose(' + pages + ')">' + pages + '</a></li>');
                    }

                    pages = pages - 1;
                });
                $("table").after('<span>当前第' + result.pageNum +
                    '页，共' + result.pages +
                    '页<span>');
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
    }
    function openeditmodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        var url = $(obj).parent().parent().parent().parent().find('.url').html();
        var authc = $(obj).parent().parent().parent().parent().find('.authc').html();
        $("#fileid").html(id);
        $("#updateurl").val(url);
        $("#updatepermissions").val(authc);
        //$("#editfiletype").val(type);
        $('#my-promptupdate').modal({
            width: 400,
            onConfirm: function (options) {

            },
            // closeOnConfirm: false,
            onCancel: function () {

            }
        });

    }
    function addsystemtype(obj) {
        $("#fileid").html("");
        $('#my-promptadd').modal({
            width: 400,
            relatedTarget: obj,
            onConfirm: function (options) {

            },
            onCancel: function () {
            }
        });
    }
    function opendeletemodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $('#my-confirmdelete').modal('toggle');
    }
    function deletefile() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        $.ajax({
            url: ${ctx}'/admin/deletePermissions/' + id,
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
    //添加页面权限
    function addPermissions() {
        $("#my-modal-loading").modal('toggle');
        var url = $("#addurl").val();
        var authc = $("#addpermissions").val();
        $.ajax({
            url: '/admin/addPermissions',
            type: 'POST',
            data: {'url': url, 'authc': authc},
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (value) {
                $("tbody").append(' <tr class="' + value.id +
                    '" data-id="' + value.id + '">' +
                    '<td><a class="url">' + value.url + '</a></td>  ' +
                    '<td><a class="authc">' + value.authc + '</a></td>  ' +
                    '<td> ' +
                    '<div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> ' +
                    '<button class="am-btn am-btn-default am-btn-xs am-text-secondary"' + 'onclick="openeditmodal(this)"><span class="am-icon-pencil-square-o"></span> 编辑 </button>' +
                    ' <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="opendeletemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');
                $("#my-modal-loading").modal('toggle');
                $("#my-alertsuccess").modal('toggle');
            }

            ,
        })
        ;
    }
    //更新页面权限
    function updatePermissions() {
        var id = $("#fileid").html();
        var updateurl = $("#updateurl").val();
        var updatepermissions = $("#updatepermissions").val();
        $("#my-modal-loading").modal('toggle');
        $.ajax({
            url: '/admin/updatePermissions',
            type: 'POST',
            data: {'id': id, 'url': updateurl, 'authc': updatepermissions},
            async: true,
            cache: false,
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("tbody").find('.' + id).find('.url').html(updateurl);
                        $("tbody").find('.' + id).find('.authc').html(updatepermissions);
                        $("#my-modal-loading").modal('toggle');
                        $("#my-alertsuccess").modal('toggle');
                    }, 500)
                }
                else {

                    $("#my-modal-loading").modal('toggle');
                    $("#my-alerterror").modal('toggle');
                }
            },
        });
    }
</script>
</body>
</html>