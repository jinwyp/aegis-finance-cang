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


            <!-- 贸易商财务   查看详情模块-->
            <section>
                <!-- Page content-->
                <div class="content-wrapper ms-controller" ms-controller="userAddController">

                    <!--需要修改,暂不确定-->
                    <h3>财务管理 -  我的财务 - 详情 </h3>

                    <div class="panel panel-default " >
                        <div class="panel-heading">基本信息</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tr>
                                        <th class="text-right">融资类型:</th>
                                        <td>煤易融</td>
                                        <th class="text-right">融资用户:</th>
                                        <td>********公司</td>
                                        <th class="text-right">关联业务编号:</th>
                                        <td>234569876543</td>
                                    </tr>
                                    <tr>
                                        <th class="text-right">拟融资金额:</th>
                                        <td>煤易融</td>
                                        <th class="text-right">申请时间:</th>
                                        <td>********公司</td>
                                        <th class="text-right">使用时长:</th>
                                        <td>234569876543</td>
                                    </tr>
                                    <tr>
                                        <th class="text-right">审批总额:</th>
                                        <td>煤易融</td>
                                        <th class="text-right">已放款:</th>
                                        <td>********公司</td>
                                        <th class="text-right">已回款本金:</th>
                                        <td>234569876543</td>
                                    </tr>
                                    <tr>
                                        <th class="text-right">待回款本金:</th>
                                        <td colspan="5">煤易融</td>
                                    </tr>

                                </table>

                            </div>
                        </div>

                    </div>

                    <div class="panel panel-default " >
                        <div class="panel-heading">审批详情</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tr>
                                        <th class="text-right">审批状态:</th>
                                        <td>煤易融</td>
                                        <th class="text-right">审批时间:</th>
                                        <td>********公司</td>
                                    </tr>
                                    <tr>
                                        <th class="text-right">审批金额:</th>
                                        <td>234569876543</td>
                                        <th class="text-right">审批人:</th>
                                        <td>234569876543</td>
                                    </tr>


                                </table>

                            </div>
                        </div>

                    </div>

                    <div class="panel panel-default " >
                        <div class="panel-heading">交易记录</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-striped table-bordered text-center">
                                    <tr>
                                        <th class="text-center">交易流水</th>
                                        <th class="text-center">交易日期</th>
                                        <th class="text-center">交易类型</th>
                                        <th class="text-center">赎货金额(万元)</th>
                                        <th class="text-center">剩余归还金额(万元)</th>
                                        <th class="text-center">交易金额</th>
                                    </tr>
                                    <tr>
                                        <td>23423</td>
                                        <td>2016-09-12</td>
                                        <td>回款</td>
                                        <td>234323</td>
                                        <td>23432</td>
                                        <td>+1000</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">暂无任何数据</td>
                                    </tr>


                                </table>

                            </div>
                        </div>

                    </div>

                </div>
            </section>



            <!-- Page footer-->
            <#include "../common/footer.ftl" >

</div>



<#if env == 'dev' || env == 'staging' || env == 'prod' >
    <!-- 生产环境使用 bundle.js 文件 -->
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminUserInfo.bundle.js"></script>
    <#else>
        <script src="${staticPathAdmin}/js/common.bundle.js"></script>
        <script src="${staticPathAdmin}/js/adminUserInfo.bundle.js"></script>

        <!-- 开发环境下 IE8 环境使用 /page-temp-bundle/ 文件 -->

        <!--[if lt IE 9]>
        <script src="${staticPathAdmin}/js/page-temp-bundle/common.bundle.js"></script>
        <script src="${staticPathAdmin}/js/page-temp-bundle/adminUserInfo.bundle.js"></script>

        <![endif]-->

</#if>



</body>
</html>
