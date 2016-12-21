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
                                        <tr ms-for="(index, file) in @uploadFileList">
                                            <td class="border0 text-center">{{file.name}} <a href=""></a></td>
                                            <td class="border0 text-center"><span class="btn btn-primary">删除</span></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="panel-footer ">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <select class="form-control contract-type-select" ms-duplex="@selectedContractType">
                                                <option value="" > -- 请选择类型 --  </option>
                                                <option ms-for="(key, value) in @contractType" ms-attr="{value: key}" >{{value}} </option>
                                            </select>
                                        </div>
                                        <div class="col-sm-6">
                                            <div id="uploadPicker" class="btn">选择文件并上传</div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="panel panel-info" ms-if="@currentUser.role === @role.harbor && !@currentOrder.harborConfirmAmount">
                                <div class="panel-heading text-center">港口确认货物</div>
                                <div class="panel-body H300">
                                    <h4 class="lineH40">
                                        当前有 <input type="text" class="goods" ms-duplex-number="@inputHarborConfirmAmount">吨货物 <br>
                                        货物属于{{@currentOrder.financerCompanyName || ''}}所有, 并承诺与实际情况相符。
                                    </h4>
                                </div>
                                <div class="panel-footer text-center">
                                    <button class="btn btn-warning" type="button" ms-click="@saveOrder">确认货物</button>
                                    <span class="text-danger" ms-visible="@errorHarborConfirmAmount"> 数量错误!</span>
                                </div>
                            </div>

                            <div class="panel panel-info" ms-if="@currentUser.role === @role.harbor && @currentOrder.harborConfirmAmount || @currentUser.role === @role.supervisor && @currentOrder.harborConfirmAmount">
                                <div class="panel-heading text-center">货物确认信息</div>
                                <div class="panel-body H300">
                                    <h4 class="lineH40" ms-visible="@currentOrder.harborConfirmAmount">
                                        已确认有 {{@currentOrder.harborConfirmAmount}} 吨货物属于{{@currentOrder.financerCompanyName || ''}}所有, 并承诺与实际情况相符。
                                    </h4>
                                </div>
                                <div class="panel-footer text-center">

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
                            <a class="btn btn-default" ms-attr="{href:'/warehouse/admin/home/finance/'+ @currentOrderId }">返回</a>
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
