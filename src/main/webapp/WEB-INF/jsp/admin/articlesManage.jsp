<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>文章管理</title>
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
                                
                                <span>文章发布</span>
                                <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>

                            </a>
                            <a href="${ctx}/admin/articlesManage.html" class="active">
                                
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
                        <th class="table-title">标题</th>
                        <th class="table-type am-hide-sm-only">大类别</th>
                        <th class="table-type am-hide-sm-only">小类别</th>
                        <th class="table-date am-hide-sm-only">发布日期</th>
                        <th class="table-author am-hide-sm-only">描述</th>
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
        <div class="am-modal-hd">Amaze UI</div>
        <div class="am-modal-bd">
            <div class="am-form-group" style="text-align: left">
                <div class="am-form tpl-form-line-form">
                    <span hidden id="articleid"></span>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">标题 <span
                                class="tpl-form-line-small-title">Title</span></label>
                        <div class="am-u-sm-9">
                            <input type="text" class="tpl-form-input" id="title" placeholder="请输入标题文字">
                            <small>请填写标题文字10-20字左右。</small>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">分类<span
                                class="tpl-form-line-small-title">Type</span></label>
                        <div class="am-u-sm-9">
                            <label style="font-size: 16px;color: #888;font-weight: normal"><input name="type"
                                                                                                  onchange="radiochange()"
                                                                                                  type="radio"
                                                                                                  value="1"/>慢生活
                            </label>
                            <label style="font-size: 16px;color: #888;font-weight: normal"><input name="type"
                                                                                                  onchange="radiochange()"
                                                                                                  type="radio"
                                                                                                  value="2"/>技术分享</label>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">分类<span
                                class="tpl-form-line-small-title">Type</span></label>
                        <div class="am-u-sm-9">
                            <select data-am-selected="{btnWidth: '30%', btnSize: 'md', btnStyle: 'secondary'}">

                            </select>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">封面图片<span
                                class="tpl-form-line-small-title">Images</span></label>
                        <div class="am-u-sm-9">
                            <div class="am-form-group am-form-file">
                                <div class="tpl-form-file-img">
                                    <img src="" alt="" id="thtmeImg">
                                </div>
                                <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                    <i class="am-icon-cloud-upload"></i>添加封面图片
                                </button>
                                <form id="formimg">
                                    <input type="file" id="file" name="file" accept="image/*"
                                           onchange="xmTanUploadImg(this)">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label" for="preface">描述<span
                                class="tpl-form-line-small-title">Description </span></label>
                        <div class="am-u-sm-9">
                            <textarea rows="10" id="preface" cols="20">
                            </textarea>
                            <div>
                            </div>
                        </div>
                    </div>

                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">文章内容
                            <span>Content</span></label>
                        <div class="am-u-sm-9">
                            <div id="editor"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>提交</span>
        </div>
    </div>
</div>
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">Amaze UI</div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>确定</span>
        </div>
    </div>
</div>
<jsp:include page="adminPublic.jsp"/>
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/amazeui.min.js"></script>
<script src="${ctx}/assets/js/echarts.min.js"></script>
<script src="${ctx}/assets/js/iscroll.js"></script>
<script src="${ctx}/assets/js/app.js"></script>
<script src="${ctx}/assets/js/wangEditor.min.js"></script>
<script>
    var E = window.wangEditor;
    var editor = new E('#editor');
    // 或者 var editor = new E( document.getElementById('#editor') )
    editor.customConfig.uploadImgShowBase64 = true;

    editor.create();
    var progress = $.AMUI.progress;
    $(function () {
        progress.start();
    });
    function deletetn(obj) {
        $('#my-confirm').modal({
            relatedTarget: obj,
            onConfirm: function (options) {
                var $link = $(this.relatedTarget).prev('a');
                var id = $link.data('id');
                $("#my-modal-loading").modal('toggle');
                $.ajax({
                    url: ${ctx}'/admin/deleteArticles/' + id,
                    type: 'GET',
                    cache: true,
                    dataType: 'TEXT',
                    success: function (result) {
                        if (result == 'true') {
                            setTimeout(function () {
                                $(obj).parent().parent().parent().parent().remove();
                                $("#my-modal-loading").modal('toggle');
                                $("#my-alertsuccess").modal('toggle');
                            }, 1000)

                        }

                        else {
                        }
                    }
                })
            },
            // closeOnConfirm: false,
            onCancel: function () {
            }
        });
    }
    function openeditmodal(obj) {

        $('#my-prompt').modal({
            width: 1300,
            relatedTarget: this,
            onConfirm: function (options) {
                $("#my-modal-loading").modal('toggle');
                var id = $("#articleid").html();
                var title = $("#title").val();
                var type = $("select").find("option:selected").text();
                var attribute = $("input[type='radio']:checked").val();
                var preface = $("#preface").val();
                var content = editor.txt.html();
                $.ajax({
                    url: ${ctx}'/admin/articleUpdate',
                    type: 'POST',
                    data: {
                        'id': id,
                        'title': title,
                        'attribute': attribute,
                        'type': type,
                        'preface': preface,
                        'content': content
                    },
                    async: true,
                    cache: true,
                    dataType: 'TEXT',
                    success: function (result) {
                        if (result == 'true') {
                            var imasrc = $("#thtmeImg").attr('uploadimg');
                            if (imasrc == undefined) {
//                                alert('未定义');
                            }
                            else {
                                var formData = new FormData($("#formimg")[0]);
                                $.ajax({
                                    url: '/admin/uploadImg',
                                    type: 'POST',
                                    data: formData,
                                    headers: {articlesId: id},
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
                            setTimeout(function () {
                                var aa = '#' + id;
                                $(aa).find('.tdtitle').html(title);
                                $(aa).find('.tdtype').html(type);
                                if (attribute == 1) {
                                    $(ctx).parent().parent().parent().parent().find('.tdattribute').html('慢生活');
                                }
                                else {
                                    $(ctx).parent().parent().parent().parent().find('.tdattribute').html('技术分享');
                                }
                                $(aa).find('.tdpreface').html(preface);
                                $("#my-modal-loading").modal('toggle');
                                $("#my-alertsuccess").modal('toggle');
                            }, 1000)
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert('失败' + textStatus + XMLHttpRequest.status + errorThrown)
                    }
                });


            },
            // closeOnConfirm: false,
            onCancel: function () {
            }
        });
        var themeImg="" ;
        var ctx = obj;
        var id = $(ctx).parent().parent().parent().parent().attr('id');
        var title = $(ctx).parent().parent().parent().parent().find('.tdtitle').html();
        var type = $(ctx).parent().parent().parent().parent().find('.tdtype').html();
        var attribute = $(ctx).parent().parent().parent().parent().find('.tdattribute').html();
        if (attribute == "慢生活") {
            attribute = 1;
        }
        else {
            attribute = 2;
        }
        var preface = $(ctx).parent().parent().parent().parent().find('.tdpreface').html();
        $(".w-e-text").empty();

        $.ajax({
            url: ${ctx}'/admin/selectArticlesById/' + id,
            cache: false,
            type: 'GET',
            async: true,
            dataType: 'JSON',
            success: function (result) {
                themeImg= result.thtmeImg;
                $("#thtmeImg").attr('src', 'data:image/jpg;base64,' + themeImg );
                window.console.log(result);
                editor.txt.append(result.content);
            }
        })
        $("input[type='radio']").removeAttr('checked');
        $('input:radio[value=' + attribute + ']').prop('checked', 'true');
        $("select").empty();
        $.ajax({
            url: '/admin/articlesClass/' + attribute,
            type: 'GET',
            async: true,
            cache: true,
            dataType: 'JSON',
            success: function (result) {
                $.each(result, function (n, value) {
                    $("select").append("<option value='" + value.type +
                        "'>" + value.type +
                        "</option>")
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
        $("#articleid").html(id);
        $("#title").val(title);

        $("select").val(type);
        $("#preface").val(preface);

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
            url: '/admin/articlesAll/' + page,
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                        $.each(result.list, function (n, value) {
                    if (value.attribute == 1) {
                        var attribute = "慢生活";
                    }
                    else {
                        var attribute = "技术分享";
                    }
                    $("tbody").append('<tr id="' + value.id +
                        '"> <td ><span class="tdtitle">' + value.title + '</span></td> ' +
                        '<td class="am-hide-sm-only"><span class="tdattribute">' + attribute + '</span></td> ' +
                        '<td class="am-hide-sm-only"><span class="tdtype">' + value.type + '</span></td> <td class="am-hide-sm-only">' +
                        value.date +
                        '</td> <td class="am-hide-sm-only"> ' +
                        '<span class="tdpreface" style="width: 100px;height: 20px;overflow: hidden;display: block;text-overflow: ellipsis; white-space: nowrap;cursor: pointer; ">' +
                        value.preface +
                        '</span> <td> <div class="am-btn-toolbar"> <div class="am-btn-group am-btn-group-xs"> <button class="am-btn am-btn-default am-btn-xs am-text-secondary"' + 'onclick="openeditmodal(this )"><span class="am-icon-pencil-square-o"></span> 编辑 </button><a data-id="' + value.id + '"></a>' + ' <button onclick="deletetn(this)" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only mymodel"  > ' + '<span class="am-icon-trash-o"></span> 删除 </button> ' +
                        '</div> </div> </td> </tr>');
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
//              <li class="am-active"><a href="#">1</a></li> <li><a href="#">2</a></li> <li><a href="#">3</a></li> <li><a href="#">4</a></li> <li><a href="#">5</a></li>
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });
    }
    function radiochange() {
        var selectedvalue = $("input[name='type']:checked").val();
        $("select").empty();
        $.ajax({
            url: '/admin/articlesClass/' + selectedvalue,
            type: 'GET',
            async: true,
            cache: false,
            dataType: 'JSON',
            success: function (result) {
                $.each(result, function (n, value) {
                    $("select").append("<option value='" + value.type +
                        "'>" + value.type +
                        "</option>")
                });
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败')
            }
        });

    }
    </script>
</body>
</html>