<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>说说管理</title>
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
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu">
                        <li>
                            <a href="${ctx}/admin/articlesPush.html">
                                <i class="am-icon-angle-right"></i>
                                <span>文章发布</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right  am-margin-right  "></i>

                            </a>
                            <a href="${ctx}/admin/articlesManage.html">
                                <i class="am-icon-angle-right"></i>
                                <span>文章操作</span>
                            </a>
                            <a href="${ctx}/admin/articlesType.html">
                                <i class="am-icon-angle-right"></i>
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
                            <a href="${ctx}/admin/spacePush.html">
                                <i class="am-icon-angle-right"></i>
                                <span>说说发布</span>
                            </a>
                            <a href="${ctx}/admin/spaceManage.html" class="active">
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
            文章操作
        </div>
        <ol class="am-breadcrumb">
            <li><a href="${ctx}/admin/index.html" class="am-icon-home">首页</a></li>
            <li><a href="${ctx}/admin/message.html">文章管理</a></li>
            <li class="am-active">文章操作</li>
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

                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th class="table-title">时间区间</th>
                        <th class="table-type am-hide-sm-only">节日名</th>
                        <th class="table-type am-hide-sm-only">地点</th>
                        <th class="table-date am-hide-sm-only">描述</th>
                        <th class="table-set">操作</th>
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


<div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt" style="margin-top: 80px">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">修改说说</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left">
                <div class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">时间区域<span
                                class="tpl-form-line-small-title">Time</span></label>
                        <div class="am-u-sm-3">
                            <input type="text" class="tpl-form-input" id="scDate" placeholder="请在输入框输入您的旅游时间">
                        </div>
                        <div class="am-u-sm-6"></div>
                    </div>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">节日<span
                                class="tpl-form-line-small-title">Festival</span></label>
                        <div class="am-u-sm-4">
                            <input type="text" class="tpl-form-input" id="scDateDescribe" placeholder="请输入游玩的节日，没有可不填写">
                        </div>
                        <div class="am-u-sm-5"></div>
                    </div>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">地点<span
                                class="tpl-form-line-small-title">Address</span></label>
                        <div class="am-u-sm-5">
                            <input type="text" class="tpl-form-input" id="scLocation" placeholder="请输入游玩的地点，没有可不填写">
                        </div>
                        <div class="am-u-sm-4"></div>
                    </div>
                    <%--<div class="am-form-group">--%>
                        <%--<label class="am-u-sm-3 am-form-label">图片文件<span--%>
                                <%--class="tpl-form-line-small-title">Images</span></label>--%>
                        <%--<div class="am-u-sm-2">--%>
                            <%--<div class="am-form-group am-form-file">--%>

                                <%--<button type="button" class="am-btn am-btn-danger am-btn-sm">--%>
                                    <%--<i class="am-icon-cloud-upload"></i>添加内容图片--%>
                                <%--</button>--%>
                                <%--<input type="file" name="file" accept="image/*" multiple>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="am-u-sm-7"></div>--%>
                    <%--</div>--%>
                    <%--<div class="am-form-group">--%>
                        <%--<label class="am-u-sm-3 am-form-label">视频文件<span--%>
                                <%--class="tpl-form-line-small-title">Video</span></label>--%>
                        <%--<div class="am-u-sm-2">--%>
                            <%--<div class="am-form-group am-form-file">--%>

                                <%--<button type="button" class="am-btn am-btn-danger am-btn-sm">--%>
                                    <%--<i class="am-icon-cloud-upload"></i>添加视频文件--%>
                                <%--</button>--%>
                                <%--<input type="file" name="file" multiple>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="am-u-sm-7"></div>--%>
                    <%--</div>--%>
                    <div class="am-form-group">
                        <label for="scDescribe" class="am-u-sm-3 am-form-label">文章内容
                            <span>Content</span></label>
                        <div class="am-u-sm-9">
                            <textarea class="" rows="10" id="scDescribe" placeholder="请输入文章内容"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" onclick="submiteditspace()">提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">删除</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>确定</span>
        </div>
    </div>
</div>
<span id="scid" hidden></span>
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
    function opendeletemodal(obj) {
        $('#my-confirm').modal({
            relatedTarget: obj,
            onConfirm: function (options) {
                var $link = $(this.relatedTarget).parent().parent().parent().parent();
                var id = $link.data('id');
                $("#my-modal-loading").modal('toggle');
                $.ajax({
                    url: ${ctx}'/admin/deleteSpace/' + id,
                    type: 'GET',
                    cache: 'false',
                    dataType: 'TEXT',
                    success: function (result) {
                        if (result == 'true') {
                            setTimeout(function () {
                                $("tbody").find('.' + id).remove();
                                $("#my-modal-loading").modal('toggle');
                                $("#my-alertsuccess").modal('toggle');
                            }, 1000)
                        }
                        else {
                            $("#my-modal-loading").modal('toggle');
                            $("#my-alerterror").modal('toggle');
                        }
                    }
                })
            },
            // closeOnConfirm: false,
            onCancel: function () {
            }
        });
    }
    function submiteditspace() {
        var id = $("#scid").html();
        var scDate = $("#scDate").val();
        var scDateDescribe = $("#scDateDescribe").val();
        var scLocation = $("#scLocation").val();
        var scDescribe = $("#scDescribe").val();
        $.ajax({
            url: ${ctx}'/admin/spaceEdit/',
            type: 'POST',
            data: {
                'scId': id,
                'scDate': scDate,
                'scDateDescribe': scDateDescribe,
                'scLocation': scLocation,
                'scDescribe': scDescribe,
            },
            dataType: 'TEXT',
            cache: false,
            success: function (result) {
                if (result == 'true') {
                    //修改页面内容
                    $("tbody").find('.' + id).find(".scDate").html(scDate);
                    $("tbody").find('.' + id).find(".scDateDescribe").html(scDateDescribe);
                    $("tbody").find('.' + id).find(".scLocation").html(scLocation);
                    $("tbody").find('.' + id).find(".scDescribe").html(scDescribe);
                    $("#my-alertsuccess").modal('toggle');
                }
                else {
                    $("#my-alerterror").modal('toggle');
                }

            }
        })

    }
    function openeditmodal(obj, scId) {
        var scDate = $(obj).parent().parent().parent().parent().find('.scDate').html();
        var scDateDescribe = $(obj).parent().parent().parent().parent().find('.scDateDescribe').html();
        var scLocation = $(obj).parent().parent().parent().parent().find('.scLocation').html();
        var scDescribe = $(obj).parent().parent().parent().parent().find('.scDescribe').html();
        $("#scid").html(scId);
        $("#scDate").val(scDate);
        $("#scDateDescribe").val(scDateDescribe);
        $("#scLocation").val(scLocation);
        $("#scDescribe").val(scDescribe);
        $('#my-prompt').modal({
            width: 1000,
            relatedTarget: this,
            onConfirm: function (options) {
            },
            // closeOnConfirm: false,
            onCancel: function () {
            }
        });

    }

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
            $("#thtmeImg").attr('uploadimg', file.name);
            var img = document.getElementById("thtmeImg");
            img.src = e.target.result;
            //或者 img.src = this.result;  //e.target == this
        }
        reader.readAsDataURL(file)

    };

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
            url: '/admin/spaceAll/' + page,
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                if (result.list.length != null) {
                    $.each(result.list, function (n, value) {
                        $('tbody').append(' <tr class="' + value.scId +
                            '" data-id="' + value.scId +
                            '"> <td><a class="scDate">' +
                            value.scDate +
                            '</a></td> <td class="am-hide-sm-only"><a class="scDateDescribe">' +
                            value.scDateDescribe +
                            '</a></td> <td class="am-hide-sm-only"><a class="scLocation">' +
                            value.scLocation +
                            '</a></td> <td class="am-hide-sm-only"> <span class="scDescribe" style="width: 300px;height: 20px;overflow: hidden;display: block;text-overflow: ellipsis; white-space: nowrap;cursor: pointer; ">' +
                            value.scDescribe +
                            '</span> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary"onclick="openeditmodal(this,' +
                            +value.scId + ',\'' + value.scDate + '\''
                            + ',\'' + value.scDateDescribe + '\''
                            + ',\'' + value.scLocation + '\''
                            + ',\'' + value.scDescribe + '\'' +
                            ')"><spanclass="am-icon-pencil-square-o"></span> 编辑 </button> <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"onclick="' +
                            'opendeletemodal(this)"> <span class="am-icon-trash-o"></span> 删除 </button> </div> </div> </td> </tr>')


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
                }

//              <li class="am-active"><a href="#">1</a></li> <li><a href="#">2</a></li> <li><a href="#">3</a></li> <li><a href="#">4</a></li> <li><a href="#">5</a></li>
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
    }
</script>
</body>
</html>