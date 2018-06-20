<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>文章发布</title>
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
                            <a href="${ctx}/admin/articlesPush.html" class="active">
                                
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
                                <label for="title" class="am-u-sm-1 am-form-label">标题 <span
                                        class="tpl-form-line-small-title">Title</span></label>
                                <div class="am-u-sm-11">
                                    <input type="text" class="tpl-form-input" id="title" placeholder="请输入标题文字">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label class="am-u-sm-1 am-form-label">分类<span
                                        class="tpl-form-line-small-title">Type</span></label>
                                <div class="am-u-sm-11">
                                    <label style="font-size: 16px;color: #888;font-weight: normal"><input name="type"
                                                                                                          checked
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
                                <label class="am-u-sm-1 am-form-label">分类<span
                                        class="tpl-form-line-small-title">Type</span></label>
                                <div class="am-u-sm-11">
                                    <select data-am-selected="{btnWidth: '10%', btnSize: 'md', btnStyle: 'secondary'}">

                                    </select>
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label class="am-u-sm-1 am-form-label">封面图片<span
                                        class="tpl-form-line-small-title">Images</span></label>
                                <div class="am-u-sm-11">
                                    <div class="am-form-group am-u-sm-6 am-form-file">
                                        <div class="tpl-form-file-img">
                                            <img src="/assets/img/a5.png" alt="" width="300" height="200"
                                                 id="userimage">
                                        </div>
                                        <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                            <i class="am-icon-cloud-upload"></i>添加封面图片
                                        </button>
                                        <form id="formimg">
                                            <input type="file" id="file" name="file" accept="image/*"
                                                   onchange="xmTanUploadImg(this)" multiple></form>
                                    </div>
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label class="am-u-sm-1 am-form-label" for="preface">描述<span
                                        class="tpl-form-line-small-title">Description </span></label>
                                <div class="am-u-sm-11">
                                    <textarea rows="10" id="preface" cols="20"></textarea>
                                    <div>
                                    </div>
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label class="am-u-sm-1 am-form-label">文章内容
                                    <span>Content</span></label>
                                <div class="am-u-sm-11" >
                                    <div id="editor" style="margin-left: 100px;">
                                    </div>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <div style="text-align: center">
                                    <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success" style="width:200px "
                                            id="submitbtn">提交
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
<div class="am-modal am-modal-alert" tabindex="-1" id="my-alertsuccess">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">处理请求中</div>
        <div class="am-modal-bd">
            处理成功！
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">确定</span>
        </div>
    </div>
</div>
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
    editor.customConfig.pasteFilterStyle = false;
    editor.customConfig.fontNames = [
        '宋体',
        '微软雅黑',
        'Arial',
        'Tahoma',
        'Verdana'
    ]
    editor.create();
    var progress = $.AMUI.progress;
    $(function () {
        progress.start();
    });

    window.onload = function () {
        $.ajax({
            url: '/admin/articlesClass/1',
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

    };
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

    $("#submitbtn").click(function () {
        var title = $("#title").val();
        var type = jQuery("select  option:selected").text();
        var preface = $("#preface").val();
        var attribute = $("input[type='radio']:checked").val();
        var content = editor.txt.html();
        $.ajax({
            url: ${ctx}'/admin/articleInsert',
            type: 'POST',
            data: {
                'title': title,
                'attribute': attribute,
                'type': type,
                'preface': preface,
                'content': content,
            },
            cache: false,
            async: false,
            dataType: 'TEXT',
            success: function (result) {

                var formData = new FormData($("#formimg")[0]);
                $.ajax({
                    url: '/admin/uploadImg',
                    type: 'POST',
                    headers: {articlesId: result},
                    data: formData,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (returndata) {
                        document.body.scrollTop = document.documentElement.scrollTop = 0;
                        $("#my-alertsuccess").modal('toggle');
                    },
                    error: function (returndata) {
                        alert(returndata + "error");
                    }
                });

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert('失败' + textStatus + XMLHttpRequest.status + errorThrown)
            }
        });
//        var formData = new FormData($("#formimg")[0]);
//        $.ajax({
//            url: '/admin/uploadimg',
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
//                alert(returndata+"error");
//            }
//        });


    });
</script>
</body>
</html>