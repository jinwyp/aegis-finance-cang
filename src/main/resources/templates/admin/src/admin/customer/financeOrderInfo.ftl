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
                <div class="content-wrapper ms-controller" ms-controller="orderInfoController">

                    <!--需要修改,暂不确定-->
                    <h3>融资管理 - 详情 </h3>

                    <!--基本信息-->
                    <div class="panel panel-default " >
                        <div class="panel-heading">基本信息</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tr>
                                        <th class="text-right width263">融资类型:</th>
                                        <td>{{@currentOrder.orderType | typename}}</td>
                                        <th class="text-right">融资用户:</th>
                                        <td>********公司</td>
                                        <th class="text-right">业务编号:</th>
                                        <td>{{@currentOrder.orderNo}}</td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">拟融资金额:</th>
                                        <td>{{@currentOrder.mortgageValue}}</td>
                                        <th class="text-right">申请时间:</th>
                                        <td>********公司</td>
                                        <th class="text-right">使用时长:</th>
                                        <td>234569876543</td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">审批总额:</th>
                                        <td>煤易融</td>
                                        <th class="text-right">已放款:</th>
                                        <td>********公司</td>
                                        <th class="text-right">已回款本金:</th>
                                        <td>234569876543</td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">待回款本金:</th>
                                        <td colspan="5">煤易融</td>
                                    </tr>

                                </table>

                            </div>
                        </div>

                    </div>

                    <!--审批详情-->
                    <div class="panel panel-default " >
                        <div class="panel-heading">审批详情</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tr>
                                        <th class="text-right width263">审批状态:</th>
                                        <td>{{@currentOrder.status | statusname}} </td>

                                        <th class="text-right">审批时间:</th>
                                        <td>********公司</td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">审批子状态:</th>
                                        <td> <span ms-visible="@currentOrder.statusChild11Financer"> {{@currentOrder.statusChild11Financer | statusname}} <br> </span>
                                            <span ms-visible="@currentOrder.statusChild12Trader"> {{@currentOrder.statusChild12Trader | statusname}} </span>
                                        </td>
                                        <th class="text-right width263">审批子状态:</th>
                                        <td><span ms-visible="@currentOrder.statusChild21Harbor"> {{@currentOrder.statusChild21Harbor | statusname}} <br> </span>
                                            <span ms-visible="@currentOrder.statusChild22Supervisor"> {{@currentOrder.statusChild22Supervisor | statusname}} </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">审批金额:</th>
                                        <td>234569876543</td>
                                        <th class="text-right">审批人:</th>
                                        <td>234569876543</td>


                                    </tr>


                                </table>

                            </div>
                        </div>

                    </div>

                    <!--各方合同查看-->
                    <div class="panel panel-default " >
                        <div class="panel-heading">各方合同查看</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover ">
                                    <tr>
                                        <td colspan="2" class="text-right border0">
                                            <a class="btn btn-primary" ms-attr="{href:'/warehouse/admin/home/finance/contract/' + @orderId}">上传合同</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">融资用户合同及单据:</th>
                                        <td>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">融资用户下游合同及单据:</th>
                                        <td>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">港口方合同及单据:</th>
                                        <td>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="text-right width263">监管方合同及单据:</th>
                                        <td>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                            <a href="" class="marginL marginR">合同1</a>
                                        </td>
                                    </tr>


                                </table>

                            </div>
                        </div>

                    </div>



                    <!--货值趋势图-->
                    <div class="panel panel-default " >
                        <div class="panel-heading">货值趋势图</div>
                        <div class="panel-body">
                            <div id="main" style="width: 100%;height: 400px;border: 1px solid gray;"></div>
                        </div>

                    </div>

                    <!--交易信息-->
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

                    <div class="row" ms-if="@currentUser.role === 'financer' ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a11FinishedUpload.statusAt && !@currentOrder.statusChild11Financer" ms-click="doAction(@action.a11FinishedUpload.name)">{{@action.a11FinishedUpload.displayName}}</button>
                        </div>

                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a31FirstReturnMoney.statusAt" ms-click="doAction(@action.a31FirstReturnMoney.name)">{{@action.a31FirstReturnMoney.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a32SecondReturnMoney.statusAt" ms-click="doAction(@action.a32SecondReturnMoney.name)">{{@action.a32SecondReturnMoney.displayName}}</button>
                        </div>

                        <#--<div class="col-sm-2"><button type="button" class="mb-sm btn btn-danger">Success</button></div>-->
                        <#--<div class="col-sm-2"><button type="button" class="mb-sm btn btn-info">Success</button></div>-->
                    </div>


                    <div class="row" ms-if="@currentUser.role === 'trader' ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a12SelectHarborAndSupervisor.statusAt && !@currentOrder.statusChild12Trader" ms-click="doAction(@action.a12SelectHarborAndSupervisor.name)">{{@action.a12SelectHarborAndSupervisor.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a15Approved.statusAt && @currentOrder.statusChild21Harbor && @currentOrder.statusChild22Supervisor" ms-click="doAction(@action.a15Approved.name)">{{@action.a15Approved.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-danger" ms-if="@currentOrder.status === @action.a16NotApproved.statusAt" ms-click="doAction(@action.a16NotApproved.name)">{{@action.a16NotApproved.displayName}}</button>
                        </div>

                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-info" ms-if="@currentOrder.status === @action.a32ReturnPortionCargo.statusAt" ms-click="doAction(@action.a32ReturnPortionCargo.name)">{{@action.a32ReturnPortionCargo.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a33ReturnAllCargo.statusAt" ms-click="doAction(@action.a33ReturnAllCargo.name)">{{@action.a33ReturnAllCargo.displayName}}</button>
                        </div>

                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a37Punishment.statusAt" ms-click="doAction(@action.a37Punishment.name)">{{@action.a37Punishment.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a38Punishment.statusAt" ms-click="doAction(@action.a38Punishment.name)">{{@action.a38Punishment.displayName}}</button>
                        </div>

                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a36ReturnMoney.statusAt" ms-click="doAction(@action.a36ReturnMoney.name)">{{@action.a36ReturnMoney.displayName}}</button>
                        </div>

                    </div>

                    <div class="row" ms-if="@currentUser.role === 'traderAccountant' ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a17Approved.statusAt" ms-click="doAction(@action.a17Approved.name)">{{@action.a17Approved.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a37Approved.statusAt" ms-click="doAction(@action.a37Approved.name)">{{@action.a37Approved.displayName}}</button>
                        </div>
                    </div>


                    <div class="row" ms-if="@currentUser.role === 'harbor' ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a13FinishedUpload.statusAt && !@currentOrder.statusChild21Harbor" ms-click="doAction(@action.a13FinishedUpload.name)">{{@action.a13FinishedUpload.displayName}}</button>
                        </div>

                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a34ConfirmPortionCargo.statusAt" ms-click="doAction(@action.a34ConfirmPortionCargo.name)">{{@action.a34ConfirmPortionCargo.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a35ConfirmAllCargo.statusAt" ms-click="doAction(@action.a35ConfirmAllCargo.name)">{{@action.a35ConfirmAllCargo.displayName}}</button>
                        </div>
                    </div>

                    <div class="row" ms-if="@currentUser.role === 'supervisor' ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a14FinishedUpload.statusAt && !@currentOrder.statusChild22Supervisor" ms-click="doAction(@action.a14FinishedUpload.name)">{{@action.a14FinishedUpload.displayName}}</button>
                        </div>
                    </div>



                    <div class="row" ms-if="@currentUser.role === 'fundProvider' ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a18Approved.statusAt" ms-click="doAction(@action.a18Approved.name)">{{@action.a18Approved.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-danger" ms-if="@currentOrder.status === @action.a19NotApproved.statusAt" ms-click="doAction(@action.a19NotApproved.name)">{{@action.a19NotApproved.displayName}}</button>
                        </div>
                    </div>

                    <div class="row" ms-if="@currentUser.role === 'fundProviderAccountant' ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a20Approved.statusAt" ms-click="doAction(@action.a20Approved.name)">{{@action.a20Approved.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a21auto.statusAt" ms-click="doAction(@action.a21auto.name)">{{@action.a21auto.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a22auto.statusAt" ms-click="doAction(@action.a22auto.name)">{{@action.a22auto.displayName}}</button>
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
