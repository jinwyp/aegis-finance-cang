<!DOCTYPE html >
<html lang="zh-cmn-Hans">
<head>

    <title>供应链金融 - 煤易贷 - 仓押管理平台</title>

<#include "../common/headcss.ftl" >
    <link rel="stylesheet" type="text/css" href="${staticPathAdmin}/css/stylesheets/page/home.css"/>
</head>
<body>
<div class="wrapper">

    <!-- top navbar-->
<#include "../common/header.ftl" >


    <!-- sidebar-->
<#include "../common/leftmenu.ftl" >


    <!-- Main section-->
    <section>
        <!-- Page content-->
        <div class="content-wrapper">
            <h3>添加用户
                <small>系统设置 >> 用户管理 >> 添加用户</small>
            </h3>

            <!-- START panel-->
            <div class="panel panel-default">
                <!--<div class="panel-heading">Form elements</div>-->
                <div class="panel-body">
                    <form method="get" action="/" class="form-horizontal">
                        <fieldset>
                            <!--<legend>Classic inputs</legend>-->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户帐号</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control form-control-rounded" placeholder="请输入用户账号">
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户类型</label>
                                <div class="col-sm-10">
                                    <select name="account" class="form-control m-b">
                                        <option>港口</option>
                                        <option>监管</option>
                                        <option>贸易商</option>
                                        <option>贸易商财务</option>
                                        <option>资金方</option>
                                        <option>资金方财务</option>
                                    </select>
                                    <span class="help-block m-b-none">选择该类型后，系统将为其生成一个支付帐号</span>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">选择资金方</label>
                                <div class="col-sm-10">
                                    <select name="account" class="form-control m-b">
                                        <option>资金方1</option>
                                        <option>资金方2</option>
                                        <option>资金方3</option>
                                    </select>
                                    <span class="help-block m-b-none">如没有选择的资金方，请先添加资金方</span>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label for="input-id-1" class="col-sm-2 control-label">公司名称</label>
                                <div class="col-sm-10">
                                    <input id="input-id-1" type="text" class="form-control" placeholder="请输入公司名称">
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">公司邮箱</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control">
                                    <span class="help-block m-b-none">为用户发送与找回密码的有效途径</span>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="last-child">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">手机号码</label>
                                <div class="col-sm-10">
                                    <input type="text" placeholder="请输入手机号码" class="form-control">
                                </div>
                            </div>
                        </fieldset>
                        <div class="btn-edit text-center">
                            <button class="btn btn-default btn-lg btn-primary" type="button">保存</button>
                            <button class="btn btn-default btn-lg" type="button">返回</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- END panel-->
        </div>
    </section>



    <!-- Page footer-->
    <#include "../common/footer.ftl" >

</div>



<#if env == 'dev' || env == 'staging' || env == 'prod' >
    <!-- 生产环境使用 bundle.js 文件 -->
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminDemoForm.bundle.js"></script>
<#else>
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminDemoForm.bundle.js"></script>
</#if>



</body>
</html>
