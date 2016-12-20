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
                <div class="content-wrapper ms-controller" ms-controller="orderInfoController">

                    <h3>融资管理 - 上传合同及确认货物 </h3>

                    <!-- START panel-->
                    <div class="panel panel-default " >
                        <div class="panel-heading">基本信息</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tr>
                                        <th class="text-right ">融资类型:</th>
                                        <td>{{@currentOrder.orderType | typename}}</td>

                                        <th class="text-right">业务编号:</th>
                                        <td>{{@currentOrder.orderNo}}</td>

                                        <th class="text-right">申请时间:</th>
                                        <td>{{@currentOrder.requestTime | date("yyyy-MM-dd")}}</td>
                                    </tr>

                                    <tr>
                                        <th class="text-right">融资用户:</th>
                                        <td><span ms-if="@currentOrder.financerUser">{{@currentOrder.financerUser.username}}</span></td>

                                        <th class="text-right">库存港口:</th>
                                        <td><span ms-if="@currentOrder.harborUser">{{@currentOrder.harborUser.username}}</span></td>

                                        <th class="text-right">当前货主:</th>
                                        <td><span ms-if="@currentOrder.cargoOwner">{{@currentOrder.cargoOwner}}</span></td>
                                    </tr>

                                    <tr>
                                        <th class="text-right">港口已确认数量(吨):</th>
                                        <td>{{@currentOrder.harborConfirmAmount || 0}} </td>

                                        <th class="text-right">监管已确认数量(吨):</th>
                                        <td>{{@currentOrder.harborConfirmAmount || 0}} </td>

                                        <th class="text-right">煤种:</th>
                                        <td>{{@currentOrder.infoCoalType || '--'}} </td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-sm-6">
                            <div class="panel panel-info">
                                <div class="panel-heading text-center">上传合同及单据</div>
                                <div class="panel-body H300">
                                    <table class="table table-hover">
                                        <tr>
                                            <td class="border0 text-center">**合同</td>
                                            <td class="border0 text-center"><span class="btn btn-primary">删除</span></td>
                                        </tr>
                                        <tr>
                                            <td class="border0 text-center">**合同</td>
                                            <td class="border0 text-center"><span class="btn btn-primary">删除</span></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="panel-footer text-center">
                                    <button class="btn btn-warning" type="button">点击上传</button>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="panel panel-info">
                                <div class="panel-heading text-center">确认货物</div>
                                <div class="panel-body H300">
                                    <h4 class="lineH40">
                                        已确认当前有
                                        <input type="text" class="goods">
                                        吨货物属于 <span>*************************</span>所有,并承诺与实际情况相符。
                                    </h4>
                                </div>
                                <div class="panel-footer text-center positionR">
                                    <button class="btn btn-warning" type="button">确认</button>
                                    <p class="positionA"><span class="text-danger">*</span>&nbsp;确认后，将自动发送给资金方，供其查阅</p>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="panel panel-default " >
                        <div class="panel-heading">放货记录</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover text-center">
                                    <tr>
                                        <th>11</th>
                                        <th>11</th>
                                        <th>11</th>
                                        <th>11</th>
                                        <th>11</th>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>2</td>
                                    </tr>
                                </table>

                            </div>
                        </div>

                        <div class="panel-footer text-center">
                            <a class="btn btn-default" href="/warehouse/admin/home/finance/manage">返回</a>
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
    <script src="${staticPathAdmin}/js/financeOrderInfo.bundle.js"></script>
<#else>
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/financeOrderInfo.bundle.js"></script>

    <!-- 开发环境下 IE8 环境使用 /page-temp-bundle/ 文件 -->

    <!--[if lt IE 9]>
    <script src="${staticPathAdmin}/js/page-temp-bundle/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/page-temp-bundle/financeOrderInfo.bundle.js"></script>

    <![endif]-->

</#if>



</body>
</html>
