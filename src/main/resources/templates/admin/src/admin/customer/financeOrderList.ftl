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
                                            <label for="input-email" class="">业务编号:&nbsp;&nbsp;</label>
                                            <input id="input-email" type="text" placeholder="用户帐号" class="form-control">
                                        </div>

                                        <div class="form-group marginL">
                                            <label for="input-password" class="">业务类型:&nbsp;&nbsp;</label>
                                            <input id="input-password" type="text" placeholder="公司名称" class="form-control">
                                        </div>
                                        <div class="form-group marginL">
                                            <label class="">业务状态:&nbsp;&nbsp;</label>
                                            <select id="input-status"  class="form-control" style="width: 128px;">
                                                <option value="">--</option>
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
                                        <table class="table table-striped table-bordered table-hover text-center">
                                            <tr>
                                                <td class="text-center">业务编号</td>
                                                <td class="text-center">业务类型</td>
                                                <td class="text-center">货主<br/>(资金方)</td>
                                                <td class="text-center">原有总库存<br/>(吨)</td>
                                                <td class="text-center">实时库存<br/>(吨)</td>
                                                <td class="text-center">合同上传剩余期限</td>
                                                <td class="text-center">业务状态</td>
                                                <td class="text-center">操作</td>
                                            </tr>
                                            <tr ms-for="(index, order) in @orderList">
                                                <td><a ms-attr="{href:'/warehouse/admin/home/finance/'+ order._id }" >{{ order.orderNo || '--'}}</a></td>
                                                <td>{{ order.orderType || '--'}}</td>
                                                <td>{{ order.mobilePhone || '--'}}</td>
                                                <td>{{ order.mobilePhone || '--'}}</td>
                                                <td>{{ order.mortgageAmount || '--'}}</td>
                                                <td>{{ order.email || '--'}}</td>
                                                <td>{{ order.companyName || '--'}}</td>

                                                <td>
                                                    <a class="btn btn-primary resetPassword" ms-attr="{href:'/warehouse/admin/home/finance/'+order._id}">进入详情</a>
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
