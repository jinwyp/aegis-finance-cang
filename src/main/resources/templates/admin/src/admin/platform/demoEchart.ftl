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
            <h3>Data Tables
                <small>Tables, one step forward.</small>
            </h3>
            <div class="container-fluid">
                <!-- START DATATABLE 1-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">Data Tables |
                                <small>Zero Configuration + Export Buttons</small>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table id="datatable1" class="table table-striped table-hover">
                                        <thead>
                                        <tr>
                                            <th>Rendering engine</th>
                                            <th>Browser</th>
                                            <th>Platform(s)</th>
                                            <th class="sort-numeric">Engine version</th>
                                            <th class="sort-alpha">CSS grade</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td>4</td>
                                            <td>X</td>
                                        </tr>
                                        <tr class="gradeC">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.0</td>
                                            <td>Win 95+</td>
                                            <td>5</td>
                                            <td>C</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.5</td>
                                            <td>Win 95+</td>
                                            <td>5.5</td>
                                            <td>A</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END DATATABLE 1-->
                <!-- START DATATABLE 2-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">Data Tables |
                                <small>Column Ordering</small>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table id="datatable2" class="table table-striped table-hover">
                                        <thead>
                                        <tr>
                                            <th>Rendering engine</th>
                                            <th>Browser</th>
                                            <th>Platform</th>
                                            <th class="sort-numeric">Engine version</th>
                                            <th class="sort-alpha">CSS grade</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td>4</td>
                                            <td>X</td>
                                        </tr>
                                        <tr class="gradeC">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.0</td>
                                            <td>Win 95+</td>
                                            <td>5</td>
                                            <td>C</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.5</td>
                                            <td>Win 95+</td>
                                            <td>5.5</td>
                                            <td>A</td>
                                        </tr>
                                        <tr class="gradeA">
                                            <td>Trident</td>
                                            <td>Internet Explorer 6</td>
                                            <td>Win 98+</td>
                                            <td>6</td>
                                            <td>A</td>
                                        </tr>

                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>
                                                <input type="text" name="filter_rendering_engine" placeholder="Filter Rendering engine" class="form-control input-sm datatable_input_col_search">
                                            </th>
                                            <th>
                                                <input type="text" name="filter_browser" placeholder="Filter Browser" class="form-control input-sm datatable_input_col_search">
                                            </th>
                                            <th>
                                                <input type="text" name="filter_platform" placeholder="Filter Platform" class="form-control input-sm datatable_input_col_search">
                                            </th>
                                            <th>
                                                <input type="text" name="filter_engine_version" placeholder="Filter Engine version" class="form-control input-sm datatable_input_col_search">
                                            </th>
                                            <th>
                                                <input type="text" name="filter_css_grade" placeholder="Filter CSS grade" class="form-control input-sm datatable_input_col_search">
                                            </th>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END DATATABLE 2-->
                <!-- START DATATABLE 3-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">Data Tables |
                                <small>Column Visibility</small>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table id="datatable3" class="table table-striped table-hover">
                                        <thead>
                                        <tr>
                                            <th>Rendering engine</th>
                                            <th>Browser</th>
                                            <th>Platform</th>
                                            <th class="sort-numeric">Engine version</th>
                                            <th class="sort-alpha">CSS grade</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="gradeX">
                                            <td>Trident</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Win 95+</td>
                                            <td>4</td>
                                            <td>X</td>
                                        </tr>
                                        <tr class="gradeC">
                                            <td>Trident</td>
                                            <td>Internet Explorer 5.0</td>
                                            <td>Win 95+</td>
                                            <td>5</td>
                                            <td>C</td>
                                        </tr>

                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END DATATABLE 3-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">Data Tables |
                                <small>Ajax Content</small>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table id="datatable4" class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th style="width:20%">Rendering engine</th>
                                            <th style="width:25%">Browser</th>
                                            <th style="width:25%">Platform(s)</th>
                                            <th style="width:15%">Engine version</th>
                                            <th style="width:15%">CSS grade</th>
                                        </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>



<#if env == 'dev' || env == 'staging' || env == 'prod' >
<!-- 生产环境使用 bundle.js 文件 -->
<script src="js/common.js"></script>
<script src="js/adminDemoEchart.bundle.js"></script>
<#else>
<script src="js/common.js"></script>
<script src="js/adminDemoEchart.bundle.js"></script>
</#if>


</body>
</html>
