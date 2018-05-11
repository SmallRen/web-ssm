<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Modal -->
<div class="modal fade bs-example-modal-sm" id="myModal" tabindex="-1" style=" margin-top: 8%;" role="dialog"
     data-backdrop="static"
     data-keyboard="false"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" style="width:320px" role="document">
        <div class="modal-content">
            <div class="modal-header"
                 style="background: #f3f3f3;border-top-left-radius:5px ;border-top-right-radius:5px">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">用户登录</h4>
            </div>
            <div class="modal-body" id="modal1">
                <br>
                <form id="logininfo">
                    <div class="input-group">
                        <span class="input-group-addon">手机号</span>
                        <input id="username" name="userPhone" type="text" class="form-control"
                               placeholder="11位手机号"
                               aria-describedby="basic-addon1">

                    </div>
                    <span id="usernamespan" class="help-block"></span>
                    <div class="input-group">
                        <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;码</span>
                        <input id="password" type="password" name="password" class="form-control"
                               placeholder="8-20位字母或数字包括下划线"
                               aria-describedby="basic-addon1">

                    </div>
                    <span id="passwordspan" class="help-block"></span>
                    <button id="submit" type="button" onclick="check()"
                            class="btn btn-primary btn-lg btn-block">登录
                    </button>
                    <br>
                    <span onclick="register()" style="color: #337ab7;cursor: pointer;">立即注册</span>
                    <span onclick="find()" style="color: #337ab7;float: right;cursor: pointer;">忘记密码</span>
                </form>
            </div>
            <div class="modal-body" id="modal2" style="display: none">
                <br>
                <form id="register">
                    <div class="input-group">
                        <span class="input-group-addon">手机号</span>
                        <input id="phone" name="phone" type="text" class="form-control"
                               placeholder="11位手机号"
                               aria-describedby="basic-addon1">
                        <span hidden id="registeraddress" name="address"></span>
                    </div>
                    <span id="phonespan" class="help-block"></span>

                    <div class="input-group">
                        <span class="input-group-addon">输&nbsp;&nbsp;&nbsp;&nbsp;入</span>
                        <input id="code" type="text" class="form-control" name="msgCode"
                               aria-describedby="basic-addon1">
                        <span class="input-group-addon" id="getcode"
                              style="cursor: pointer;" onclick="sendMessageregister()">  获取验证码</span>
                    </div>
                    <span id="yanzhengma" class="help-block"></span>

                    <div class="input-group">
                        <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;码</span>
                        <input name="password" id="registerpassword" type="password" class="form-control"
                               placeholder="8-20位字母或数字"
                               aria-describedby="basic-addon1">

                    </div>
                    <span id="registerspan" class="help-block"></span>
                    <button id="registersubmit" type="button" onclick="registercheck()"
                            class="btn btn-primary btn-lg btn-block">注册
                    </button>
                    <br>
                    <span onclick="login()" style=" cursor: pointer;color: #337ab7;">有账号返回登录</span>
                </form>
            </div>
            <div class="modal-body" id="modal3" style="display: none">
                <br>
                <form id="find">
                    <div class="input-group">
                        <span class="input-group-addon">手机号</span>
                        <input id="findphone" type="text" class="form-control"
                               placeholder="11位手机号"
                               aria-describedby="basic-addon1">
                    </div>
                    <span id="findphonespan" class="help-block"></span>
                    <div class="input-group">
                        <span class="input-group-addon">输&nbsp;&nbsp;&nbsp;&nbsp;入</span>
                        <input id="findcode" type="text" class="form-control"
                               aria-describedby="basic-addon1">
                        <span class="input-group-addon" id="findgetcode"
                              style="cursor: pointer;" onclick="findsendMessage()">      获取验证码</span>
                    </div>
                    <span id="findyanzhengma" class="help-block"></span>

                    <div class="input-group">
                        <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;码</span>
                        <input id="findpassword" type="password" class="form-control"
                               placeholder="8-20位字母或数字"
                               aria-describedby="basic-addon1">

                    </div>
                    <span id="findpwdspan" class="help-block"></span>
                    <button id="findsubmit" type="button" onclick="findcheck()"
                            class="btn btn-primary btn-lg btn-block">确定
                    </button>
                    <br>
                    <span onclick="login1()" style="cursor: pointer;color: #337ab7;">有账号返回登录</span>
                </form>
            </div>
            <div class="modal-footer">
                <span style="float: left">第三方登录&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <div style="margin-top: -5px;float: left">
                        <img onclick="qqLoginImg()"
                        style="float: left" src="/img/qq.png">
                </div>

            </div>
        </div>
    </div>
</div>
<div class="modal fade " id="myModal2" tabindex="-1" style=" margin-top: 8%" role="dialog" data-backdrop="static"
     data-keyboard="false"
     aria-labelledby="myregisterModal">
    <div class="modal-dialog modal-sm350" role="document">
        <div class="modal-content">
            <div class="modal-header"
                 style="background: #f3f3f3;border-top-left-radius:5px ;border-top-right-radius:5px">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="jumpindex()"><span
                        aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myregisterModal">用户绑定</h4>
            </div>
            <div class="modal-body">
                <br>
                <form>
                    <div class="input-group">
                        <span class="input-group-addon">手机号</span>
                        <input id="bindphone" type="text" class="form-control"
                               placeholder="11位手机号"
                               aria-describedby="basic-addon1">
                    </div>
                    <span id="bindphonespan" class="help-block"></span>
                    <div class="input-group">
                        <span class="input-group-addon">输&nbsp;&nbsp;&nbsp;&nbsp;入</span>
                        <input id="bindcode" type="text" class="form-control"
                               aria-describedby="basic-addon1">
                        <span class="input-group-addon" id="bindgetcode"
                              style="cursor: pointer;" onclick="bindsendMessage()">
                                                                               获取验证码</span>
                    </div>
                    <span id="bindyanzhengma" class="help-block"></span>

                    <div class="input-group">
                        <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;码</span>
                        <input id="bindpassword" type="password" class="form-control"
                               placeholder="8-20位字母或数字"
                               aria-describedby="basic-addon1">
                    </div>
                    <span id="bindpwdspan" class="help-block"></span>
                    <button id="bindsubmit" type="button" onclick="bindcheck()"
                            class="btn btn-primary btn-lg btn-block">确定
                    </button>
                    <br>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="msgmodal" tabindex="-1"  style=" margin-top: 8%;" role="dialog" aria-labelledby="myModalLabel1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel1">修改密码</h4>
            </div>
            <div class="modal-body">
                <span>密码修改成功!请重新登陆！</span>
            </div>
            <div class="modal-footer">

                <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="msgError" tabindex="-1"  style=" margin-top: 8%;" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">验证错误</h4>
            </div>
            <div class="modal-body">
                <span>验证错误，请重试！</span>
            </div>
            <div class="modal-footer">

                <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>
<div class="foot">
    <div>
        <p align="center">smallRen博客——记录小人物的事情</p>
        <p align="center"> Copyright © 20017 - 2018 蜀ICP备16036548号</p>

    </div>
</div>