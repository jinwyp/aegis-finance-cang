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
        <div class="content-wrapper ms-controller" ms-controller="addUser">

            <h3 ms-visible="@searchQuery.url === 'info'">基本信息
                <small>个人信息 >> 基本信息</small>
            </h3>
            <h3 ms-visible="@searchQuery.url === 'add'">添加用户
                <small>系统设置 >> 用户管理 >> 添加用户</small>
            </h3>

            <!-- START panel-->
            <div class="panel panel-default " >
                <!--<div class="panel-heading">Form elements</div>-->
                <div class="panel-body">
                    <form method="get" action="/" class="form-horizontal">
                        <fieldset>
                            <!--<legend>Classic inputs</legend>-->
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户帐号:</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control form-control-rounded" placeholder="请输入用户账号" ms-visible="@searchQuery.url === 'add'">
                                    <p class="form-control-static" ms-visible="@searchQuery.url === 'info'">23232323</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户类型</label>
                                <div class="col-sm-5">
                                    <select name="account" class="form-control m-b" ms-duplex="@searchQuery.addType" ms-visible="@searchQuery.url === 'add'">
                                        <option ms-click="@clickType('港口')">港口</option>
                                        <option ms-click="@clickType('监管')">监管</option>
                                        <option ms-click="@clickType('贸易商')">贸易商</option>
                                        <option ms-click="@clickType('贸易商财务')">贸易商财务</option>
                                        <option ms-click="@clickType('资金方')">资金方</option>
                                        <option ms-click="@clickType('资金方财务')">资金方财务</option>
                                    </select>
                                    <span class="help-block m-b-none" ms-visible="@searchQuery.addType==='资金方财务'"><span class="text-danger">*&nbsp;选择该类型后，系统将为其生成一个支付帐号</span></span>
                                    <p class="form-control-static" ms-visible="@searchQuery.url === 'info'">23232323</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset ms-visible="@searchQuery.addType==='贸易商财务'">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">选择贸易商</label>
                                <div class="col-sm-5">
                                    <select name="account" class="form-control m-b" ms-visible="@searchQuery.url === 'add'">
                                        <option>贸易商1</option>
                                        <option>贸易商2</option>
                                        <option>贸易商3</option>
                                    </select>
                                    <span class="help-block m-b-none"><span class="text-danger">*&nbsp;如没有选择的贸易商，请先添加贸易商</span></span>
                                    <p class="form-control-static" ms-visible="@searchQuery.url === 'info'">23232323</p>
                                </div>
                                <div class="col-lg-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset ms-visible="@searchQuery.addType==='资金方财务'">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">选择资金方</label>
                                <div class="col-sm-5">
                                    <select name="account" class="form-control m-b" ms-visible="@searchQuery.url === 'add'">
                                        <option>资金方1</option>
                                        <option>资金方2</option>
                                        <option>资金方3</option>
                                    </select>
                                    <span class="help-block m-b-none"><span class="text-danger">*&nbsp;如没有选择的资金方，请先添加资金方</span></span>
                                    <p class="form-control-static" ms-visible="@searchQuery.url === 'info'">23232323</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label for="input-id-1" class="col-sm-2 control-label">公司名称</label>
                                <div class="col-sm-5">
                                    <input id="input-id-1" type="text" class="form-control" placeholder="请输入公司名称" ms-visible="@searchQuery.url === 'add'">
                                    <p class="form-control-static" ms-visible="@searchQuery.url === 'info'">23232323</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">公司邮箱</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" ms-visible="@searchQuery.url === 'add'">
                                    <span class="help-block m-b-none" ms-visible="@searchQuery.url === 'add'"><span class="text-danger">*&nbsp;为用户发送与找回密码的有效途径</span></span>
                                    <p class="form-control-static" ms-visible="@searchQuery.url === 'info'">23232323</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset class="last-child">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">手机号码</label>
                                <div class="col-sm-5">
                                    <input type="text" placeholder="请输入手机号码" class="form-control" ms-visible="@searchQuery.url === 'add'">
                                    <p class="form-control-static" ms-visible="@searchQuery.url === 'info'">23232323</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <div class="btn-edit text-center" ms-visible="@searchQuery.url === 'add'">
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
