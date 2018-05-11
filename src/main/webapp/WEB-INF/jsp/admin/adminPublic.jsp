<%--
  Created by IntelliJ IDEA.
  User: smallRen
  Date: 2017/11/27
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="my-modal-loading">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">正在处理，请稍等...</div>
        <div class="am-modal-bd">
            <span class="am-icon-spinner am-icon-spin"></span>
        </div>
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
<div class="am-modal am-modal-alert" tabindex="-1" id="my-alerterror">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">处理失败</div>
        <div class="am-modal-bd">
            处理失败！
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">确定</span>
        </div>
    </div>
</div>
