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
                    <h3>基本信息
                        <small>个人信息 >> 基本信息</small>
                    </h3>

                    <div class="col-sm-12">
                        <!-- START panel-->
                        <div class="panel panel-default">
                            <div class="panel-heading"></div>
                            <div class="panel-body">
                                <table class="table">
                                    <tr>
                                        <td class="text-center">用户帐号：</td>
                                        <td>200</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">用户名称：</td>
                                        <td>400</td>
                                    </tr>
                                </table>

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
    <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminDemoForm.bundle.js"></script>
    <#else>
        <script src="${staticPathAdmin}/js/common.bundle.js"></script>
        <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
        <script src="${staticPathAdmin}/js/adminDemoForm.bundle.js"></script>
</#if>



</body>
</html>
