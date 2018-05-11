<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>文章类型</title>
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
                    <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                        <i class="am-icon-table"></i>
                        <span>文章管理</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr tpl-left-nav-more-ico-rotate"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu" style="display: block;">
                        <li>
                            <a href="${ctx}/admin/articlesPush.html">
                                <i class="am-icon-angle-right"></i>
                                <span>文章发布</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>

                            </a>
                            <a href="${ctx}/admin/articlesManage.html">
                                <i class="am-icon-angle-right"></i>
                                <span>文章管理</span>
                            </a>
                            <a href="${ctx}/admin/articlesType.html" class="active">
                                <i class="am-icon-angle-right"></i>
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
                                <i class="am-icon-angle-right"></i>
                                <span>说说发布</span>
                            </a>
                            <a href="${ctx}/admin/spaceManage.html">
                                <i class="am-icon-angle-right"></i>
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
            文章类型
        </div>
        <ol class="am-breadcrumb">
            <li><a href="${ctx}/admin/index.html" class="am-icon-home">首页</a></li>
            <li><a href="${ctx}/admin/message.html">文章管理</a></li>
            <li class="am-active">文章类型</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span>生活
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
                <button type="button" class="am-btn am-btn-primary" onclick="addfiletype(this)">添加</button>
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="tbody1">
                    </tbody>
                </table>
                <hr>
            </div>
        </div>
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
                <button type="button" class="am-btn am-btn-primary" onclick="addlanguagetype(this)">添加</button>
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="tbody2">
                    </tbody>
                </table>
                <hr>
            </div>
        </div>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span>系统
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
                <button type="button" class="am-btn am-btn-primary" onclick="addsystemtype(this )">添加</button>
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="tbody3">
                    </tbody>
                </table>
                <hr>
            </div>
        </div>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span>开发工具
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
                <button type="button" class="am-btn am-btn-primary" onclick="addidetype(this)">添加</button>
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="tbody4">
                    </tbody>
                </table>
                <hr>
            </div>
        </div>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span>错误
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
                <button type="button" class="am-btn am-btn-primary" onclick="addexceptiontype(this)">添加</button>
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="tbody5">
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

<div class="am-modal am-modal-prompt" tabindex="-1" id="my-promptaddfile">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">添加文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label   class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="filetype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn"  >取消</span>
            <span class="am-modal-btn"  onclick="submitaddlife()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-promptaddlanguage">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">添加文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label   class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="languagetype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn"  >取消</span>
            <span class="am-modal-btn"  onclick="submitaddlanguage()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-promptaddsystem">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">添加文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label   class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="systemtype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn"  >取消</span>
            <span class="am-modal-btn"  onclick="submitaddsystem()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-promptaddide">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">添加文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label   class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="idetype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn"  >取消</span>
            <span class="am-modal-btn"  onclick="submitaddide()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-promptaddexception">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">添加文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label   class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="exceptiontype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn"  >取消</span>
            <span class="am-modal-btn"  onclick="submitaddexception()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompteditfile">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">编辑文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="editfiletype" class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="editfiletype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="submiteditlife()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompteditlanguage">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">编辑文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="editlanguagetype" class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="editlanguagetype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="submiteditlanguage()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompteditsystem">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">编辑文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="editsystemtype" class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="editsystemtype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="submiteditsystem()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompteditide">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">编辑文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="editidetype" class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="editidetype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="submiteditide()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompteditexception">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">编辑文章分类</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left;margin-top: 20px">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label for="editexceptiontype" class="am-u-sm-5 am-form-label">分类名 <span
                                class="tpl-form-line-small-title">TypeName</span></label>
                        <div class="am-u-sm-7">
                            <input type="text" class="tpl-form-input" id="editexceptiontype" placeholder="请输入分类">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="submiteditexception()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirmfile">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">Amaze UI</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="deletefile()">确定</span>
        </div>
    </div>
</div>

<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirmlanguage">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">Amaze UI</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="deletelanguage()">确定</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirmsystem">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">Amaze UI</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="deletesystem()">确定</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirmide">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">Amaze UI</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="deleteide()">确定</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirmexception">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">Amaze UI</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">取消</span>
            <span class="am-modal-btn" onclick="deleteexception()">确定</span>
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
    function deletefile() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        $.ajax({
            url: ${ctx}'/admin/deleteLife/' + id,
            type: 'POST',
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody1").find('.' + id).remove();
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
    function deletelanguage() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        $.ajax({
            url: ${ctx}'/admin/deleteLanguage/' + id,
            type: 'POST',
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody2").find('.' + id).remove();
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
    function deletesystem() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        $.ajax({
            url: ${ctx}'/admin/deleteSystem/' + id,
            type: 'POST',
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody3").find('.' + id).remove();
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
    function deleteide() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        $.ajax({
            url: ${ctx}'/admin/deleteIde/' + id,
            type: 'POST',
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody4").find('.' + id).remove();
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
    function deleteexception() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        $.ajax({
            url: ${ctx}'/admin/deleteException/' + id,
            type: 'POST',
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody5").find('.' + id).remove();
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
    function submiteditlife() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        var type = $("#editfiletype").val();
        $.ajax({
            url: ${ctx}'/admin/updateLife',
            type: 'POST',
            data: {'id': id, 'type': type},
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody1").find('.' + id).find('a').html(type);
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
    function submiteditlanguage() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        var type = $("#editlanguagetype").val();
        $.ajax({
            url: ${ctx}'/admin/updateLanguage',
            type: 'POST',
            data: {'id': id, 'type': type},
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody2").find('.' + id).find('a').html(type);
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
    function submiteditsystem() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        var type = $("#editsystemtype").val();
        $.ajax({
            url: ${ctx}'/admin/updateSystem',
            type: 'POST',
            data: {'id': id, 'type': type},
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody3").find('.' + id).find('a').html(type);
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
    function submiteditide() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        var type = $("#editidetype").val();
        $.ajax({
            url: ${ctx}'/admin/updateIde',
            type: 'POST',
            data: {'id': id, 'type': type},
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody4").find('.' + id).find('a').html(type);
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
    function submiteditexception() {
        $("#my-modal-loading").modal('toggle');
        var id = $("#fileid").html();
        var type = $("#editexceptiontype").val();
        $.ajax({
            url: ${ctx}'/admin/updateException',
            type: 'POST',
            data: {'id': id, 'type': type},
            cache: 'false',
            async: 'false',
            dataType: 'TEXT',
            success: function (result) {
                if (result == 'true') {
                    setTimeout(function () {
                        $("#tbody5").find('.' + id).find('a').html(type);
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
    function opendeletefilemodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $('#my-confirmfile').modal('toggle');
    }
    function opendeletelanguagemodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $('#my-confirmlanguage').modal('toggle');
    }
    function opendeletesystemmodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $('#my-confirmsystem').modal('toggle');
    }
    function opendeleteidemodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $('#my-confirmide').modal('toggle');
    }
    function opendeleteexceptionmodal(obj) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $('#my-confirmexception').modal('toggle');
    }
    function openeditfilemodal(obj, type) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $("#editfiletype").val(type);
        $('#my-prompteditfile').modal({
            width: 400,
            onConfirm: function (options) {

            },
            // closeOnConfirm: false,
            onCancel: function () {

            }
        });

    }
    function openeditlanguagemodal(obj, type) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $("#editlanguagetype").val(type);
        $('#my-prompteditlanguage').modal({
            width: 400,
            onConfirm: function (options) {

            },
            // closeOnConfirm: false,
            onCancel: function () {

            }
        });

    }
    function openeditsystemmodal(obj, type) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $("#editfilesystem").val(type);
        $('#my-prompteditsystem').modal({
            width: 400,
            onConfirm: function (options) {

            },
            // closeOnConfirm: false,
            onCancel: function () {

            }
        });

    }
    function openeditidemodal(obj, type) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $("#editfileide").val(type);
        $('#my-prompteditide').modal({
            width: 400,
            onConfirm: function (options) {

            },
            // closeOnConfirm: false,
            onCancel: function () {

            }
        });

    }
    function openeditexceptionmodal(obj, type) {
        var id = $(obj).parent().parent().parent().parent().data('id');
        $("#fileid").html(id);
        $("#editexceptiontype").val(type);
        $('#my-prompteditexception').modal({
            width: 400,
            onConfirm: function (options) {

            },
            // closeOnConfirm: false,
            onCancel: function () {

            }
        });

    }

    window.onload = function () {
        progress.done();
        $.ajax({
            url: '/admin/life',
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                $.each(result, function (n, value) {
                    $("#tbody1").append(' <tr class="' + value.id +
                        '" data-id="' + value.id +
                        '"><td><a>'
                        + value.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditfilemodal(this,'
                        + '\'' + value.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeletefilemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
        $.ajax({
            url: '/admin/language',
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                $.each(result, function (n, value) {
                    $("#tbody2").append(' <tr class="' + value.id +
                        '" data-id="' + value.id +
                        '"><td><a>'
                        + value.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditlanguagemodal(this,'
                        + '\'' + value.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeletelanguagemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
        $.ajax({
            url: '/admin/system',
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                $.each(result, function (n, value) {
                    $("#tbody3").append(' <tr class="' + value.id +
                        '" data-id="' + value.id +
                        '"><td><a>'
                        + value.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditsystemmodal(this,'
                        + '\'' + value.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeletesystemmodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
        $.ajax({
            url: '/admin/ide',
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                $.each(result, function (n, value) {
                    $("#tbody4").append(' <tr class="' + value.id +
                        '" data-id="' + value.id +
                        '"><td><a>'
                        + value.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditidemodal(this,'
                        + '\'' + value.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeleteidemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
        $.ajax({
            url: '/admin/exception',
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                $.each(result, function (n, value) {
                    $("#tbody5").append(' <tr class="' + value.id + '" data-id="' + value.id +
                        '"><td><a>'
                        + value.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditexceptionmodal(this,'
                        + '\'' + value.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeleteexceptionmodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
    }
    function addfiletype(obj) {
        $("#fileid").html("");
        $('#my-promptaddfile').modal({
            width: 400,
            relatedTarget: obj,
            onConfirm: function (options) {
            },
            onCancel: function () {
            }
        });
    }
    function submitaddlife() {
        $("#my-modal-loading").modal('toggle');
        var type = $("#filetype").val();
        $.ajax({
            url: '/admin/addLife/' + type,
            type: 'GET',
            async: 'false',
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                setTimeout(function () {
                    $("#my-modal-loading").modal('toggle');
                    $("#tbody1").append('<tr class="' + result.id + '" data-id="' + result.id +
                        '"><td><a>'
                        + result.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditfilemodal(this,'
                        + '\'' + result.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeletefilemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');

                    $("#my-alertsuccess").modal('toggle');
                }, 500)

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });

    }
    function addlanguagetype(obj) {
        $("#fileid").html("");
        $('#my-promptaddlanguage').modal({
            width: 400,
            relatedTarget: obj,
            onConfirm: function (options) {
            },
            onCancel: function () {
            }
        });
    }
    function submitaddlanguage() {
        $("#my-modal-loading").modal('toggle');
        var type = $("#languagetype").val();
        $.ajax({
            url: '/admin/addLanguage/' + type,
            type: 'GET',
            async: 'false',
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                setTimeout(function () {
                    $("#my-modal-loading").modal('toggle');
                    $("#tbody2").append('<tr class="' + result.id + '" data-id="' + result.id +
                        '"><td><a>'
                        + result.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditlanguagemodal(this,'
                        + '\'' + result.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeletelanguagemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');

                    $("#my-alertsuccess").modal('toggle');
                }, 500)

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
    }
    function addsystemtype(obj) {
        $("#fileid").html("");
        $('#my-promptaddsystem').modal({
            width: 400,
            relatedTarget: obj,
            onConfirm: function (options) {

            },
            onCancel: function () {
            }
        });
    }
    function submitaddsystem() {
        $("#my-modal-loading").modal('toggle');
        var type = $("#systemtype").val();
        $.ajax({
            url: '/admin/addSystem/' + type,
            type: 'GET',
            async: 'false',
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                setTimeout(function () {
                    $("#my-modal-loading").modal('toggle');
                    $("#tbody3").append('<tr class="' + result.id + '" data-id="' + result.id +
                        '"><td><a>'
                        + result.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditsystemmodal(this,'
                        + '\'' + result.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeletesystemmodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');

                    $("#my-alertsuccess").modal('toggle');
                }, 500)

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
    }
    function addidetype(obj) {
        $("#fileid").html("");
        $('#my-promptaddide').modal({
            width: 400,
            relatedTarget: obj,
            onConfirm: function (options) {

            },
            onCancel: function () {
            }
        });
    }
    function submitaddide() {
        $("#my-modal-loading").modal('toggle');
        var type = $("#idetype").val();
        $.ajax({
            url: '/admin/addIde/' + type,
            type: 'GET',
            async: 'false',
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                setTimeout(function () {
                    $("#my-modal-loading").modal('toggle');
                    $("#tbody4").append('<tr class="' + result.id + '" data-id="' + result.id +
                        '"><td><a>'
                        + result.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditidemodal(this,'
                        + '\'' + result.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeleteidemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');

                    $("#my-alertsuccess").modal('toggle');
                }, 500)

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
    }
    function addexceptiontype(obj) {
        $("#fileid").html("");
        $('#my-promptaddexception').modal({
            width: 400,
            relatedTarget: obj,
            onConfirm: function (options) {

            },
            onCancel: function () {
            }
        });
    }
    function submitaddexception() {
        $("#my-modal-loading").modal('toggle');
        var type = $("#exceptiontype").val();
        $.ajax({
            url: '/admin/addException/' + type,
            type: 'GET',
            async: 'false',
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                setTimeout(function () {
                    $("#my-modal-loading").modal('toggle');
                    $("#tbody5").append('<tr class="' + result.id + '" data-id="' + result.id +
                        '"><td><a>'
                        + result.type +
                        '</a></td> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="openeditexceptionmodal(this,'
                        + '\'' + result.type + '\'' +
                        ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="opendeleteexceptionmodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>');

                    $("#my-alertsuccess").modal('toggle');
                }, 500)

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
    }
</script>
</body>
</html>