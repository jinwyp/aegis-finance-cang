<!DOCTYPE html >
<html lang="zh-cmn-Hans">
<head>

    <title>供应链金融 - 煤易贷 - 仓押管理平台</title>

    <#include "../common/headcss.ftl" >
        <link rel="stylesheet" type="text/css" href="${staticPathAdmin}/css/stylesheets/page/home.css"/>
        </head>
<body class="aside-collapsed">
<div class="wrapper">

    <!-- top navbar-->
    <#include "../common/header.ftl" >


        <!-- sidebar-->
        <#include "../common/leftmenu.ftl" >


            <!-- Main section-->
            <section>
                <!-- Page content-->
                <div class="content-wrapper">
                    <h3>融资管理</h3>

                    <!-- START row-->
                    <div class="row">
                        <div class="col-md-12">
                            <!-- START panel-->
                            <div class="panel panel-default ms-controller" ms-controller="orderListController">
                                <div class="panel-heading">融资订单</div>

                                <div class="panel-body">
                                    <form role="form" class="form-inline">
                                        <div class="form-group marginL">
                                            <label class="">业务编号:&nbsp;&nbsp;</label>
                                            <input type="text" class="form-control" ms-duplex="@searchQuery.orderNo">
                                        </div>

                                        <div class="form-group marginL">
                                            <label class="">业务状态:&nbsp;&nbsp;</label>
                                            <select class="form-control search-select" ms-duplex="@searchQuery.status" >
                                                <option value="">全部</option>
                                                <option ms-for="($index, item) in @status" ms-attr="{value: item.name}">{{ item.displayName }}</option>
                                            </select>
                                        </div>
                                        <div class="form-group marginL">
                                            <button class="btn btn-default btn-primary" ms-click="@clickSearchButton($event)">查询</button>
                                        </div>

                                    </form>
                                </div>


                                <div class="panel-body">
                                    <!-- START table-responsive-->
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover text-center" ms-if="@currentUser.role === 'financer' ">
                                            <tr>
                                                <td class="text-center">业务编号</td>
                                                <td class="text-center">业务类型</td>
                                                <td class="text-center">申请时间</td>
                                                <td class="text-center">下游采购方</td>
                                                <td class="text-center">存放港口</td>
                                                <td class="text-center">质押总数量<br/>(吨)</td>
                                                <td class="text-center">待赎回数量<br/>(吨)</td>
                                                <td class="text-center">融资金额<br/>(万元)</td>
                                                <td class="text-center">融资期限<br/>(天)</td>
                                                <td class="text-center">保证金金额<br/>(万元)</td>
                                                <td class="text-center">待还金额<br/>(万元)</td>
                                                <td class="text-center">资金成本<br/>(万元)</td>
                                                <td class="text-center">业务状态</td>
                                                <td class="text-center">操作</td>
                                            </tr>
                                            <tr ms-for="(index, order) in @orderList">
                                                <td><a ms-attr="{href:'/warehouse/admin/home/finance/'+ order._id }" >{{ order.orderNo || '--'}}</a></td>
                                                <td>{{ order.orderType || '--'}}</td>
                                                <td>{{ order.requestTime | date("yyyy-MM-dd") }}</td>
                                                <td>{{ order.downstreamCompanyName || '--'}}</td>
                                                <td>{{ order.harbor || '--'}}</td>
                                                <td>{{ order.mortgageAmount || '--'}}</td>
                                                <td>{{ order.redemptionAmountLeft || '--'}}</td>
                                                <td>{{ order.mortgageValue || '--'}}</td>
                                                <td>{{ order.mortgageDeadline || '--'}}</td>
                                                <td>{{ order.depositValue || '--'}}</td>
                                                <td>{{ order.repaymentValue || '--'}}</td>
                                                <td>需要计算</td>
                                                <td>{{ order.status | statusname }}</td>

                                                <td>
                                                    <a class="btn btn-info resetPassword" ms-attr="{href:'/warehouse/admin/home/finance/'+order._id}">查看</a>
                                                </td>
                                            </tr>
                                        </table>


                                        <table class="table table-striped table-bordered table-hover text-center" ms-if="@currentUser.role === 'trader' || @currentUser.role === 'traderAccountant'">
                                            <tr>
                                                <td class="text-center">业务编号</td>
                                                <td class="text-center">申请时间</td>
                                                <td class="text-center">融资方</td>
                                                <td class="text-center">下游采购方</td>
                                                <td class="text-center">存放港口</td>
                                                <td class="text-center">质押总数量<br/>(吨)</td>
                                                <td class="text-center">待赎回数量<br/>(吨)</td>
                                                <td class="text-center">利率</td>
                                                <td class="text-center">利息</td>
                                                <td class="text-center">保证金金额<br/>(万元)</td>
                                                <td class="text-center">已回款金额<br/>(万元)</td>
                                                <td class="text-center">待还金额<br/>(万元)</td>
                                                <td class="text-center">实际放款金额<br/>(万元)</td>
                                                <td class="text-center">放款时间</td>
                                                <td class="text-center">实际结息时间</td>
                                                <td class="text-center">业务状态</td>
                                                <td class="text-center">操作</td>
                                            </tr>
                                            <tr ms-for="(index, order) in @orderList">
                                                <td><a ms-attr="{href:'/warehouse/admin/home/finance/'+ order._id }" >{{ order.orderNo || '--'}}</a></td>
                                                <td>{{ order.requestTime | date("yyyy-MM-dd") }}</td>
                                                <td>{{ order.financerCompanyName || '--'}}</td>
                                                <td>{{ order.downstreamCompanyName || '--'}}</td>
                                                <td>{{ order.harbor || '--'}}</td>
                                                <td>{{ order.mortgageAmount || '--'}}</td>
                                                <td>{{ order.redemptionAmountLeft || '--'}}</td>
                                                <td>{{ order.loanInterestRate || '--'}}</td>
                                                <td>需要计算</td>
                                                <td>{{ order.depositValue || '--'}}</td>
                                                <td>{{ order.returnValue || '--'}}</td>
                                                <td>{{ order.repaymentValue || '--'}}</td>
                                                <td>{{ order.loanValue || '--'}}</td>
                                                <td>暂无</td>
                                                <td>暂无</td>
                                                <td>{{ order.status | statusname }}</td>

                                                <td>
                                                    <a class="btn btn-info resetPassword" ms-attr="{href:'/warehouse/admin/home/finance/'+order._id}">查看</a>
                                                </td>
                                            </tr>
                                        </table>



                                        <table class="table table-striped table-bordered table-hover text-center" ms-if="@currentUser.role === 'harbor' ">
                                            <tr>
                                                <td class="text-center">业务编号</td>
                                                <td class="text-center">货主</td>
                                                <td class="text-center">质押总数量<br/>(吨)</td>
                                                <td class="text-center">实时库存<br/>(吨)</td>
                                                <td class="text-center">业务状态</td>
                                                <td class="text-center">操作</td>
                                            </tr>
                                            <tr ms-for="(index, order) in @orderList">
                                                <td><a ms-attr="{href:'/warehouse/admin/home/finance/'+ order._id }" >{{ order.orderNo || '--'}}</a></td>
                                                <td>{{ order.cargoOwner || '--'}}</td>
                                                <td>{{ order.mortgageAmount || '--'}}</td>
                                                <td>{{ order.mortgageAmount - order.redemptionAmount || '--'}}</td>
                                                <td>{{ order.status | statusname}}</td>

                                                <td>
                                                    <a class="btn btn-info resetPassword" ms-attr="{href:'/warehouse/admin/home/finance/'+order._id}">查看</a>
                                                </td>
                                            </tr>
                                        </table>


                                        <table class="table table-striped table-bordered table-hover text-center" ms-if="@currentUser.role === 'supervisor' ">
                                            <tr>
                                                <td class="text-center">业务编号</td>
                                                <td class="text-center">货主</td>
                                                <td class="text-center">质押总数量<br/>(吨)</td>
                                                <td class="text-center">已赎回数量<br/>(吨)</td>
                                                <td class="text-center">实时库存<br/>(吨)</td>
                                                <td class="text-center">业务状态</td>
                                                <td class="text-center">操作</td>
                                            </tr>
                                            <tr ms-for="(index, order) in @orderList">
                                                <td><a ms-attr="{href:'/warehouse/admin/home/finance/'+ order._id }" >{{ order.orderNo || '--'}}</a></td>
                                                <td>{{ order.cargoOwner || '--'}}</td>
                                                <td>{{ order.mortgageAmount || '--'}}</td>
                                                <td>{{ order.redemptionAmount || '--'}}</td>
                                                <td>{{ order.mortgageAmount - order.redemptionAmount || '--'}}</td>
                                                <td>{{ order.status | statusname}}</td>

                                                <td>
                                                    <a class="btn btn-info resetPassword" ms-attr="{href:'/warehouse/admin/home/finance/'+order._id}">查看</a>
                                                </td>
                                            </tr>
                                        </table>


                                        <table class="table table-striped table-bordered table-hover text-center" ms-if="@currentUser.role === 'fundProvider' || @currentUser.role === 'fundProviderAccountant' ">
                                            <tr>
                                                <td class="text-center">业务编号</td>
                                                <td class="text-center">申请时间</td>
                                                <td class="text-center">融资方</td>
                                                <td class="text-center">存放港口</td>
                                                <td class="text-center">融资金额<br/>(万元)</td>
                                                <td class="text-center">融资期限<br/>(天)</td>
                                                <td class="text-center">质押总数量<br/>(吨)</td>
                                                <td class="text-center">待赎回数量<br/>(吨)</td>
                                                <td class="text-center">利率</td>
                                                <td class="text-center">利息</td>
                                                <td class="text-center">保证金金额<br/>(万元)</td>
                                                <td class="text-center">已回款金额<br/>(万元)</td>
                                                <td class="text-center">待还金额<br/>(万元)</td>

                                                <td class="text-center">业务状态</td>
                                                <td class="text-center">操作</td>
                                            </tr>
                                            <tr ms-for="(index, order) in @orderList">
                                                <td><a ms-attr="{href:'/warehouse/admin/home/finance/'+ order._id }" >{{ order.orderNo || '--'}}</a></td>
                                                <td>{{ order.requestTime | date("yyyy-MM-dd") }}</td>
                                                <td>{{ order.financerCompanyName || '--'}}</td>
                                                <td>{{ order.harbor || '--'}}</td>
                                                <td>{{ order.mortgageValue || '--'}}</td>
                                                <td>{{ order.mortgageDeadline || '--'}}</td>
                                                <td>{{ order.mortgageAmount || '--'}}</td>
                                                <td>{{ order.redemptionAmountLeft || '--'}}</td>
                                                <td>{{ order.loanFundProviderInterestRate || '--'}}</td>
                                                <td>需要计算</td>
                                                <td>{{ order.depositValue || '--'}}</td>
                                                <td>{{ order.returnValue || '--'}}</td>
                                                <td>{{ order.repaymentValue || '--'}}</td>
                                                <td>{{ order.status | statusname }}</td>

                                                <td>
                                                    <a class="btn btn-info resetPassword" ms-attr="{href:'/warehouse/admin/home/finance/'+order._id}">查看</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- END table-responsive-->
                                </div>

                                <div class="panel-footer">
                                    <xmp is="ms-pagination2" ms-widget="@configPagination"></xmp>

                                </div>
                            </div>
                            <!-- END panel-->
                        </div>

                    </div>
                    <!-- END row-->


                </div>
            </section>


            <!-- Page footer-->
            <#include "../common/footer.ftl" >


</div>

<#include "../common/modal.ftl" >

    <#if env == 'dev' || env == 'staging' || env == 'prod' >
        <!-- 生产环境使用 bundle.js 文件 -->
        <script src="${staticPathAdmin}/js/common.bundle.js"></script>
        <script src="${staticPathAdmin}/js/financeOrderList.bundle.js"></script>
    <#else>
        <script src="${staticPathAdmin}/js/common.bundle.js"></script>
        <script src="${staticPathAdmin}/js/financeOrderList.bundle.js"></script>

        <!-- 开发环境下 IE8 环境使用 /page-temp-bundle/ 文件 -->

        <!--[if lt IE 9]>
        <script src="${staticPathAdmin}/js/page-temp-bundle/common.bundle.js"></script>
        <script src="${staticPathAdmin}/js/page-temp-bundle/financeOrderList.bundle.js"></script>

        <![endif]-->

    </#if>



</body>
</html>
