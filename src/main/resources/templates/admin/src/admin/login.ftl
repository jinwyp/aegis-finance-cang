<!DOCTYPE html >
<html lang="zh-cmn-Hans">
<head>
    <title>供应链金融 - 煤易贷 - 仓押管理平台</title>
    <#include "common/head.ftl" >
</head>
<body>

<div class="wrapper">
    <div class="row">
        <div class="col-md-2 col-md-offset-4">
            <img src="${staticPathAdmin}/css/images/login_left.png" alt="Image" >
        </div>
        <div class="col-md-3">
            <img src="${staticPathAdmin}/css/images/login_right.png" alt="Image" >
        </div>
    </div>


    <div class="block-center mt-xl wd-xl">
        <!-- START panel-->
        <div class="panel panel-dark panel-flat">
            <div class="panel-body">
                <p class="text-center pv">系统平台管理员登录</p>

                <form role="form" data-parsley-validate="" novalidate="" class="mb-lg">
                    <div class="form-group has-feedback">
                        <input id="exampleInputEmail1" type="email" placeholder="Enter email" autocomplete="off" required class="form-control">
                        <span class="fa fa-envelope form-control-feedback text-muted"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input id="exampleInputPassword1" type="password" placeholder="Password" required class="form-control">
                        <span class="fa fa-lock form-control-feedback text-muted"></span>
                    </div>
                    <div class="clearfix">
                        <div class="checkbox c-checkbox pull-left mt0">
                            <label>
                                <input type="checkbox" value="" name="remember">
                                <span class="fa fa-check"></span>Remember Me</label>
                        </div>
                        <div class="pull-right"><a href="recover.html" class="text-muted">Forgot your password?</a>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-block btn-primary mt-lg">Login</button>
                </form>
                <#--<p class="pt-lg text-center">Need to Signup?</p><a href="register.html" class="btn btn-block btn-default">Register Now</a>-->
            </div>
        </div>
        <!-- END panel-->
    </div>

</div>





<#if env == 'dev' || env == 'staging' || env == 'prod' >
<!-- 生产环境使用 bundle.js 文件 -->
<script src="js/common.js"></script>
<script src="js/adminLogin.bundle.js"></script>
</#if>

<#--<script src="js/common.js"></script>-->
<#--<script src="js/adminLogin.bundle.js"></script>-->



</body>
</html>
