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
            <h3>用户管理</h3>

            <!-- START row-->
            <div class="row">
                <div class="col-md-12">
                    <!-- START panel-->
                    <div class="panel panel-default">
                        <div class="panel-heading">用户列表</div>

                        <div class="panel-body">
                            <form role="form" class="form-inline">
                                <div class="form-group">
                                    <label for="input-email" class="sr-only">管理员帐号</label>
                                    <input id="input-email" type="text" placeholder="管理员帐号" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="input-password" class="sr-only"> 公司名称</label>
                                    <input id="input-password" type="text" placeholder="公司名称" class="form-control">
                                </div>

                                <button type="submit" class="btn btn-default">查询</button>
                                <a href="/warehouse/admin/home/user/form" class="btn btn-default">添加用户</a>

                            </form>

                        </div>

                        <div class="panel-body">
                            <!-- START table-responsive-->
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Username</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                    </tbody>
                                </table>

                            </div>
                            <!-- END table-responsive-->
                        </div>
                        <div class="panel-footer">
                            <div class="table-pagination">
                                <span class="table-pagination-first"></span>
                                <span class="table-pagination-prev"></span>
                                <span class="separator"></span>

                                <span class="table-pagination-input" >页数: <input class="ui-pg-input ui-corner-all" type="text" size="2" maxlength="7" value="0" role="textbox"> of 7</span>
                                <span class="separator"></span>
                                <span class="table-pagination-next"></span>
                                <span class="table-pagination-last"></span>

                                <select class="ui-pg-selbox ui-widget-content ui-corner-all" role="listbox" title="Records per Page">
                                    <option role="option" value="10">10</option>
                                    <option role="option" value="20" selected="selected">20</option>
                                    <option role="option" value="30">30</option>
                                </select>

                                <span class="table-pagination-total">当前 1 - 20,  共 131 条 </span>
                            </div>

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



<#if env == 'dev' || env == 'staging' || env == 'prod' >
    <!-- 生产环境使用 bundle.js 文件 -->
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminUserManageList.bundle.js"></script>
<#else>
    <script src="${staticPathAdmin}/js/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminUserManageList.bundle.js"></script>

    <!-- IE8 环境使用 /page-temp-bundle/ 文件
    <script src="${staticPathAdmin}/js/page-temp-bundle/common.bundle.js"></script>
    <script src="${staticPathAdmin}/js/page-temp-bundle/adminHeader.bundle.js"></script>
    <script src="${staticPathAdmin}/js/page-temp-bundle/adminUserManageList.bundle.js"></script> -->
</#if>



</body>
</html>
