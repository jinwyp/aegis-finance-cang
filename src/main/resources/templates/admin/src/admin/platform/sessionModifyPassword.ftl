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
                <div class="content-wrapper ms-controller" ms-controller="passwordController">
                    <h3>修改密码</h3>

                    <div class="col-sm-12">
                        <!-- START panel-->
                        <div class="panel panel-default">
                            <div class="panel-heading"></div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">旧密码</label>
                                        <div class="col-lg-5">
                                            <input type="email" placeholder="Email" class="form-control">
                                        </div>
                                        <div class="col-lg-5 text-danger">
                                            error
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">新密码</label>
                                        <div class="col-lg-5">
                                            <input type="password" placeholder="Password" class="form-control">
                                            <p class="form-control-static">密码长度必须为6-20位字符，由数字、字母组成，区分大小写</p>
                                        </div>
                                        <div class="col-lg-5 text-danger">
                                            error
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">确认密码</label>
                                        <div class="col-lg-5">
                                            <input type="password" placeholder="Password" class="form-control">
                                        </div>
                                        <div class="col-lg-5 text-danger">
                                            error
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button type="submit" class="btn btn-sm btn-default btn-lg btn-primary">确认</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- END panel-->
                    </div>
                </div>
            </section>



            <!-- Page footer-->
            <#include "../common/footer.ftl" >

</div>



<#if env == 'dev' || env == 'staging' || env == 'prod' >
    <!-- 生产环境使用 bundle.js 文件 -->
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminSessionUser.bundle.js"></script>
<#else>
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminSessionUser.bundle.js"></script>



<!-- 开发环境下 IE8 环境使用 /page-temp-bundle/ 文件 -->

<!--[if lt IE 9]>
<script src="${staticPathAdmin}/js/page-temp-bundle/common.bundle.js"></script>
<script src="${staticPathAdmin}/js/page-temp-bundle/adminSessionUser.bundle.js"></script>

<![endif]-->

</#if>



</body>
</html>
