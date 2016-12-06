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
        <div class="content-wrapper ms-controller" ms-controller="userAddController">

            <h3 ms-visible="@pageShowStatus === 'info'">系统设置 >> 用户管理 >> 查看用户信息 </h3>
            <h3 ms-visible="@pageShowStatus === 'add'">系统设置 >> 用户管理 >> 添加用户 </h3>
            <h3 ms-visible="@pageShowStatus === 'edit'">系统设置 >> 用户管理 >> 修改用户信息 </h3>

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
                                    <input type="text" class="form-control form-control-rounded" placeholder="请输入用户账号" ms-visible="@pageShowStatus === 'add' " ms-duplex="@currentUser.username">
                                    <p class="form-control-static" ms-visible="@pageShowStatus === 'info' || @pageShowStatus === 'edit'">{{@currentUser.username}}</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户类型</label>
                                <div class="col-sm-5">
                                    <select name="account" class="form-control m-b" ms-duplex="@currentUser.role" ms-visible="@pageShowStatus === 'add' || @pageShowStatus === 'edit'" ms-duplex="@currentUser.role">
                                        <option ms-for="role in @roleList" ms-attr="{value: role.name}" >{{role.displayName}} </option>
                                    </select>
                                    <span class="help-block m-b-none" ms-visible="@currentUser.role==='tradersAccountant' || @currentUser.role==='fundProviderAccountant'">
                                    </span>
                                    <p class="form-control-static" ms-visible="@pageShowStatus === 'info'">{{@currentUser.role}}</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset ms-visible="@currentUser.role ==='tradersAccountant'">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">选择贸易商</label>
                                <div class="col-sm-5">
                                    <select name="account" class="form-control m-b" ms-visible="@pageShowStatus === 'add' || @pageShowStatus === 'edit'" ms-duplex="@currentUser.belongToUser">
                                        <option ms-for="trader in @traderList" ms-attr="{value: trader._id}" >{{trader.username}} </option>
                                    </select>
                                    <span class="help-block m-b-none"><span class="text-danger">*&nbsp;如没有选择的贸易商，请先添加贸易商</span></span>
                                    <!--<p class="form-control-static" ms-visible="@pageShowStatus === 'info'">23232323</p>-->
                                </div>
                                <div class="col-lg-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset ms-visible="@currentUser.role ==='fundProviderAccountant'">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">选择资金方</label>
                                <div class="col-sm-5">
                                    <select name="account" class="form-control m-b" ms-visible="@pageShowStatus === 'add' || 'edit'" ms-duplex="@currentUser.belongToUser">
                                        <option ms-for="fundProvider in @fundProviderList" ms-attr="{value: fundProvider._id}" >{{fundProvider.username}} </option>
                                    </select>
                                    <span class="help-block m-b-none"><span class="text-danger">*&nbsp;如没有选择的资金方，请先添加资金方</span></span>
                                    <!--<p class="form-control-static" ms-visible="@pageShowStatus === 'info'">23232323</p>-->
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label for="input-id-1" class="col-sm-2 control-label">公司名称</label>
                                <div class="col-sm-5">
                                    <input id="input-id-1" type="text" class="form-control" placeholder="请输入公司名称" ms-visible="@pageShowStatus === 'add' || @pageShowStatus === 'edit'" ms-duplex="@currentUser.companyName">
                                    <p class="form-control-static" ms-visible="@pageShowStatus === 'info'">{{@currentUser.companyName}}</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">公司邮箱</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" ms-visible="@pageShowStatus === 'add' " ms-duplex="@currentUser.email">
                                    <span class="help-block m-b-none" ms-visible="@pageShowStatus === 'edit' || 'info'">{{@currentUser.email}}</span>
                                    <span class="help-block m-b-none" ms-visible="@pageShowStatus === 'edit' || 'add'"><span class="text-danger">*&nbsp;为用户发送与找回密码的有效途径</span></span>

                                    <!--<p class="form-control-static" ms-visible="@pageShowStatus === 'edit' || 'info'">{{@currentUser.email}}</p>-->
                                </div>
                                <div class="col-sm-5" ms-visible="@pageShowStatus === 'info'">
                                    <a href="/warehouse/admin/home/session/password" class="btn btn-primary">重置密码</a>
                                    <span class="text-danger marginL">重置后，该密码将发送至该邮箱</span>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>
                        <fieldset class="last-child">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">手机号码</label>
                                <div class="col-sm-5">
                                    <input type="text" placeholder="请输入手机号码" class="form-control" ms-visible="@pageShowStatus === 'add' " ms-duplex="@currentUser.mobilePhone">
                                    <p class="form-control-static" ms-visible="@pageShowStatus === 'info' || @pageShowStatus === 'edit'">{{@currentUser.mobilePhone}}</p>
                                </div>
                                <div class="col-sm-5 text-danger"></div>
                            </div>
                        </fieldset>

                        <div class="btn-edit text-center">
                            <button class="btn btn-default btn-lg btn-primary" type="button" ms-click="@addUser()" ms-visible="@pageShowStatus === 'add'">保存</button>
                            <button class="btn btn-default btn-lg btn-primary" type="button" ms-click="@editUser()" ms-visible="@pageShowStatus ===  'edit'">保存</button>
                            <a class="btn btn-default btn-lg marginL" href="/warehouse/admin/home/userlist">返回</a>
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
    <script src="${staticPathAdmin}/js/adminUserInfo.bundle.js"></script>
<#else>
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminUserInfo.bundle.js"></script>
</#if>



</body>
</html>
