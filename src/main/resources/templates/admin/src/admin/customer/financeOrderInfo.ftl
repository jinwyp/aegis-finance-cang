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
                                        <th class="text-right">融资金额(万元):</th>
                                        <td>{{@currentOrder.mortgageValue}}</td>

                                        <th class="text-right">融资期限(天):</th>
                                        <td>{{@currentOrder.mortgageDeadline}}</td>

                                        <th class="text-right">已缴纳保证金(万元):</th>
                                        <td>{{@currentOrder.depositValue || 0}}</td>
                                    </tr>

                                    <tr>
                                        <th class="text-right">放款总金额(万元):</th>
                                        <td>{{@currentOrder.loanValue || 0}}</td>

                                        <th class="text-right">已回款金额(万元):</th>
                                        <td>{{@currentOrder.returnValue || 0 }}</td>

                                        <th class="text-right">待还款(万元):</th>
                                        <td>{{@currentOrder.repaymentValue || 0}}</td>
                                    </tr>

                                    <tr>
                                        <th class="text-right">质押总数量(吨):</th>
                                        <td>{{@currentOrder.mortgageAmount}}</td>

                                        <th class="text-right">已赎回数量(吨):</th>
                                        <td>{{@currentOrder.redemptionAmount || 0}} </td>

                                        <th class="text-right">待赎回数量(吨):</th>
                                        <td>{{@currentOrder.redemptionAmountLeft || 0}} </td>
                                    </tr>


                                    <tr>
                                        <th class="text-right">港口已确认数量(吨):</th>
                                        <td>{{@currentOrder.harborConfirmAmount || 0}} </td>

                                        <th class="text-right">监管已确认数量(吨):</th>
                                        <td>{{@currentOrder.harborConfirmAmount || 0}} </td>

                                        <th class="text-right">煤种:</th>
                                        <td>{{@currentOrder.infoCoalType || '--'}} </td>
                                    </tr>


                                    <tr>
                                        <th class="text-right">热值:</th>
                                        <td>{{@currentOrder.infoCalorificValue || '--' }} </td>

                                        <th class="text-right">收到基硫分:</th>
                                        <td>{{@currentOrder.infoSulfur || '--' }} </td>

                                        <th class="text-right">空干基挥发分:</th>
                                        <td>{{@currentOrder.infoVolatile || '--'}} </td>
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
                                        <th class="text-right">当前状态:</th>
                                        <td>{{@currentOrder.status | statusname}} </td>
                                    </tr>

                                    <tr>
                                        <th class="text-right">子状态:</th>
                                        <td>
                                            <span ms-visible="@currentOrder.statusChild1Financer"> {{@currentOrder.statusChild1Financer | statusname}} <br> </span>
                                            <span ms-visible="@currentOrder.statusChild2Harbor"> {{@currentOrder.statusChild2Harbor | statusname}} <br> </span>
                                            <span ms-visible="@currentOrder.statusChild3Supervisor"> {{@currentOrder.statusChild3Supervisor | statusname}} </span>
                                        </td>
                                    </tr>

                                    <tr ms-for="(index, audit) in @currentOrder.auditHistory">
                                        <th class="text-right">审批时间:</th>
                                        <td>{{audit.updatedAt | date("yyyy-MM-dd:HH:mm:ss ") }}</td>

                                        <th class="text-right">审批人:</th>
                                        <td>{{audit.username}}</td>
                                    </tr>
                                </table>

                            </div>
                        </div>

                    </div>

                    <!--各方合同查看-->
                    <div class="panel panel-default " >
                        <div class="panel-heading">合同信息</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover contract-table">
                                    <tr>
                                        <th class="text-right ">融资用户合同及单据:</th>
                                        <td>
                                            <a class="" ms-for="(index, contract) in @contractList | filterBy(@contractFilter, @role.financer)" ms-click="@getFile($event, contract)">{{contract.originalFileName}}</a>
                                        </td>
                                    </tr>
                                </table>

                                <table class="table table-hover contract-table">
                                    <tr>
                                        <th class="text-right contract-table">港口方合同及单据:</th>
                                        <td>
                                            <a class="" ms-for="(index, contract) in @contractList | filterBy(@contractFilter, @role.harbor)" ms-click="@getFile($event, contract)">{{contract.originalFileName}}</a>
                                        </td>
                                    </tr>
                                </table>
                                <table class="table table-hover contract-table">
                                    <tr>
                                        <th class="text-right contract-table">监管方合同及单据:</th>
                                        <td>
                                            <a class="" ms-for="(index, contract) in @contractList | filterBy(@contractFilter, @role.supervisor)" ms-click="@getFile($event, contract)">{{contract.originalFileName}}</a>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                        <div class="panel-footer text-center">
                            <a class="btn btn-primary" ms-attr="{href:'/warehouse/admin/home/finance/contract/' + @currentOrderId}">上传合同</a>
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



                    <!-- 贸易商选择 资金方 港口 监管方-->
                    <div class="panel panel-default" ms-if="@currentUser.role === @role.trader && !@currentOrder.harborUserId && !@currentOrder.fundProviderUserId" >
                        <div class="panel-heading">选择资金方,港口和监管方 </div>
                        <div class="panel-body">
                            <form class="form-horizontal" novalidate>

                                <div class="form-group" ms-class="[@traderFormError.fundProvider && 'has-error']">
                                    <label class="col-sm-2 control-label">选择贸易商:</label>
                                    <div class="col-sm-3">
                                        <select class="form-control m-b" ms-duplex="@traderForm.selectedFundProvider">
                                            <option value="" > - </option>
                                            <option ms-for="user in @fundProviderList" ms-attr="{value: user._id}" >{{user.username}} </option>
                                        </select>
                                    </div>
                                    <div class="col-sm-5" ms-visible="@traderFormError.fundProvider">
                                        <span class="help-block">*&nbsp;请选择贸易商!</span>
                                    </div>
                                </div>

                                <div class="form-group" ms-class="[@traderFormError.harbor && 'has-error']">
                                    <label class="col-sm-2 control-label">选择港口:</label>
                                    <div class="col-sm-3">
                                        <select class="form-control m-b" ms-duplex="@traderForm.selectedHarbor">
                                            <option value="" > - </option>
                                            <option ms-for="user in @harborList" ms-attr="{value: user._id}" >{{user.username}} </option>
                                        </select>
                                    </div>
                                    <div class="col-sm-5" ms-visible="@traderFormError.harbor">
                                        <span class="help-block">*&nbsp;请选择港口!</span>
                                    </div>
                                </div>

                                <div class="form-group" ms-class="[@traderFormError.supervisor && 'has-error']">
                                    <label class="col-sm-2 control-label">选择监管方:</label>
                                    <div class="col-sm-3">
                                        <select class="form-control m-b" ms-duplex="@traderForm.selectedSupervisor">
                                            <option value="" > - </option>
                                            <option ms-for="user in @supervisorList" ms-attr="{value: user._id}" >{{user.username}} </option>
                                        </select>
                                    </div>
                                    <div class="col-sm-5" ms-visible="@traderFormError.supervisor">
                                        <span class="help-block">*&nbsp;请选择监管方!</span>
                                    </div>
                                </div>

                            </form>
                        </div>

                    </div>

                    <!-- 贸易商通知融资方缴纳保证金-->
                    <div class="panel panel-default" ms-if="@currentUser.role === @role.trader" >
                        <div class="panel-heading">通知融资方缴纳保证金 </div>
                        <div class="panel-body">
                            <form class="form-horizontal" novalidate>

                                <div class="form-group" ms-class="[@errorDepositValue && 'has-error']">
                                    <label class="col-sm-3 control-label">保证金金额(万元):</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" ms-duplex-number="@inputDepositValue" >
                                    </div>
                                    <div class="col-sm-5" ms-visible="@errorDepositValue">
                                        <span class="help-block">*&nbsp;金额数量不正确, 最少10万元!</span>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-5">
                                        <button class="btn btn-default btn-lg btn-primary" ms-click="@saveDeposit($event)">提交保证金缴纳通知</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>


                    <!-- 融资方查看缴纳保证金通知 -->
                    <div class="panel panel-default" ms-if="@currentUser.role === @role.financer || @currentUser.role === @role.trader" >
                        <div class="panel-heading" ms-visible="@currentUser.role === @role.financer" >需要缴纳的保证金 </div>
                        <div class="panel-heading" ms-visible="@currentUser.role === @role.trader" >保证金缴纳通知记录 </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <tr>
                                    <th>创建时间</th>
                                    <th>要缴纳的金额(万元)</th>
                                    <th>交易流水号</th>
                                    <th>当前状态</th>
                                    <th ms-visible="@currentUser.role === @role.financer">操作</th>
                                </tr>

                                <tr ms-for="(index, paymentOrder) in @paymentList">
                                    <td>{{ paymentOrder.createdAt | date("yyyy-MM-dd:HH:mm:ss ") }}</td>
                                    <td>{{ paymentOrder.depositValue}}</td>
                                    <td>{{ paymentOrder.paymentNo || '--'}}</td>
                                    <td>{{ paymentOrder.paymentType | paymenttype}}</td>
                                    <td ms-visible="@currentUser.role === @role.financer && paymentOrder.paymentType ==='notified' ">
                                        <input type="text" class="payment-no" placeholder="交易流水号" ms-duplex="@inputPaymentOrderNo">
                                        <button class="btn btn-info" type="button" ms-click="@savePaymentOrder(paymentOrder._id)">确认已缴</button>
                                        <span class="text-danger" ms-visible="@errorPaymentOrderNo">流水号不正确!</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>







                    <!-- 动作按钮 -->

                    <div class="row" ms-if="@currentUser.role === @role.financer ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a12FinishedUpload.statusAt && !@currentOrder.statusChild1Financer" ms-click="doAction(@action.a12FinishedUpload.name)">{{@action.a12FinishedUpload.displayName}}</button>
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


                    <div class="row" ms-if="@currentUser.role === @role.trader ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a11SelectHarborAndSupervisor.statusAt" ms-click="doAction(@action.a11SelectHarborAndSupervisor.name)">{{@action.a11SelectHarborAndSupervisor.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a15Approved.statusAt && @currentOrder.statusChild2Harbor && @currentOrder.statusChild3Supervisor" ms-click="doAction(@action.a15Approved.name)">{{@action.a15Approved.displayName}}</button>
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


                    <div class="row" ms-if="@currentUser.role === @role.traderAccountant ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a17Approved.statusAt" ms-click="doAction(@action.a17Approved.name)">{{@action.a17Approved.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a37Approved.statusAt" ms-click="doAction(@action.a37Approved.name)">{{@action.a37Approved.displayName}}</button>
                        </div>
                    </div>


                    <div class="row" ms-if="@currentUser.role === @role.harbor ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a13FinishedUpload.statusAt && !@currentOrder.statusChild2Harbor" ms-click="doAction(@action.a13FinishedUpload.name)">{{@action.a13FinishedUpload.displayName}}</button>
                        </div>

                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a34ConfirmPortionCargo.statusAt" ms-click="doAction(@action.a34ConfirmPortionCargo.name)">{{@action.a34ConfirmPortionCargo.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a35ConfirmAllCargo.statusAt" ms-click="doAction(@action.a35ConfirmAllCargo.name)">{{@action.a35ConfirmAllCargo.displayName}}</button>
                        </div>
                    </div>


                    <div class="row" ms-if="@currentUser.role === @role.supervisor ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a14FinishedUpload.statusAt && !@currentOrder.statusChild3Supervisor" ms-click="doAction(@action.a14FinishedUpload.name)">{{@action.a14FinishedUpload.displayName}}</button>
                        </div>
                    </div>



                    <div class="row" ms-if="@currentUser.role === @role.fundProvider ">
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-success" ms-if="@currentOrder.status === @action.a18Approved.statusAt" ms-click="doAction(@action.a18Approved.name)">{{@action.a18Approved.displayName}}</button>
                        </div>
                        <div class="col-sm-2">
                            <button type="button" class="mb-sm btn btn-danger" ms-if="@currentOrder.status === @action.a19NotApproved.statusAt" ms-click="doAction(@action.a19NotApproved.name)">{{@action.a19NotApproved.displayName}}</button>
                        </div>
                    </div>

                    <div class="row" ms-if="@currentUser.role === @role.fundProviderAccountant ">
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
