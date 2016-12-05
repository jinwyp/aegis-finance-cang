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
                    <h3>Form Elements
                        <small>Standard and custom elements for any form</small>
                    </h3>

                    <!-- START panel-->
                    <div class="panel panel-default">
                        <div class="panel-heading">Form elements</div>
                        <div class="panel-body">
                            <form method="get" action="/" class="form-horizontal">
                                <fieldset>
                                    <legend>Classic inputs</legend>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Rounded Corners</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control form-control-rounded">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">With help</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control">
                                            <span class="help-block m-b-none">A block of help text that breaks onto a new line and may extend beyond one line.</span>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label for="input-id-1" class="col-sm-2 control-label">Label focus</label>
                                        <div class="col-sm-10">
                                            <input id="input-id-1" type="text" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Password</label>
                                        <div class="col-sm-10">
                                            <input type="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Placeholder</label>
                                        <div class="col-sm-10">
                                            <input type="text" placeholder="placeholder" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Disabled</label>
                                        <div class="col-lg-10">
                                            <input type="text" placeholder="Disabled input here..." disabled="" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label">Static control</label>
                                        <div class="col-lg-10">
                                            <p class="form-control-static">email@example.com</p>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Checkboxes and radios</label>
                                        <div class="col-sm-10">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="">Option one is this and that—be sure to include why it's great</label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input id="optionsRadios1" type="radio" name="optionsRadios" value="option1" checked="">Option one is this and that—be sure to include why it's great</label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input id="optionsRadios2" type="radio" name="optionsRadios" value="option2">Option two can be something else and selecting it will deselect option one</label>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Inline checkboxes</label>
                                        <div class="col-sm-10">
                                            <label class="checkbox checkbox-inline">
                                                <input id="inlineCheckbox1" type="checkbox" value="option1">a</label>
                                            <label class="checkbox-inline">
                                                <input id="inlineCheckbox2" type="checkbox" value="option2">b</label>
                                            <label class="checkbox-inline">
                                                <input id="inlineCheckbox3" type="checkbox" value="option3">c</label>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset class="last-child">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Select</label>
                                        <div class="col-sm-10">
                                            <select name="account" class="form-control m-b">
                                                <option>Option 1</option>
                                                <option>Option 2</option>
                                                <option>Option 3</option>
                                                <option>Option 4</option>
                                            </select>
                                            <br>
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <select multiple="" class="form-control">
                                                        <option>Option 1</option>
                                                        <option>Option 2</option>
                                                        <option>Option 3</option>
                                                        <option>Option 4</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Input variants</legend>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Custom Checkboxes &amp; radios</label>
                                        <div class="col-sm-10">
                                            <div class="checkbox c-checkbox needsclick">
                                                <label class="needsclick">
                                                    <input type="checkbox" value="" class="needsclick">
                                                    <span class="fa fa-check"></span>Option one</label>
                                            </div>
                                            <div class="checkbox c-checkbox">
                                                <label>
                                                    <input type="checkbox" checked="" value="">
                                                    <span class="fa fa-check"></span>Option two checked</label>
                                            </div>
                                            <div class="checkbox c-checkbox">
                                                <label>
                                                    <input type="checkbox" checked="" disabled="" value="">
                                                    <span class="fa fa-check"></span>Option three checked and disabled</label>
                                            </div>
                                            <div class="checkbox c-checkbox">
                                                <label>
                                                    <input type="checkbox" disabled="" value="">
                                                    <span class="fa fa-check"></span>Option four disabled</label>
                                            </div>
                                            <div class="radio c-radio">
                                                <label>
                                                    <input type="radio" name="a" value="option1">
                                                    <span class="fa fa-circle"></span>Option one</label>
                                            </div>
                                            <div class="radio c-radio">
                                                <label>
                                                    <input type="radio" name="a" value="option2" checked="">
                                                    <span class="fa fa-circle"></span>Option two checked</label>
                                            </div>
                                            <div class="radio c-radio">
                                                <label>
                                                    <input type="radio" value="option2" checked="" disabled="">
                                                    <span class="fa fa-circle"></span>Option three checked and disabled</label>
                                            </div>
                                            <div class="radio c-radio">
                                                <label>
                                                    <input type="radio" name="a" disabled="">
                                                    <span class="fa fa-circle"></span>Option four disabled</label>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Inline checkboxes</label>
                                        <div class="col-sm-10">
                                            <label class="checkbox-inline c-checkbox">
                                                <input id="inlineCheckbox10" type="checkbox" value="option1">
                                                <span class="fa fa-check"></span>a</label>
                                            <label class="checkbox-inline c-checkbox">
                                                <input id="inlineCheckbox20" type="checkbox" value="option2">
                                                <span class="fa fa-check"></span>b</label>
                                            <label class="checkbox-inline c-checkbox">
                                                <input id="inlineCheckbox30" type="checkbox" value="option3">
                                                <span class="fa fa-check"></span>c</label>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Rounded</label>
                                        <div class="col-sm-10">
                                            <label class="checkbox c-checkbox c-checkbox-rounded">
                                                <input id="roundedcheckbox10" type="checkbox" checked>
                                                <span class="fa fa-check"></span>Lorem</label>
                                            <label class="checkbox c-checkbox c-checkbox-rounded">
                                                <input id="roundedcheckbox20" type="checkbox">
                                                <span class="fa fa-check"></span>Ipsum</label>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Inline radios</label>
                                        <div class="col-sm-10">
                                            <label class="radio-inline c-radio">
                                                <input id="inlineradio1" type="radio" name="i-radio" value="option1" checked>
                                                <span class="fa fa-circle"></span>a</label>
                                            <label class="radio-inline c-radio">
                                                <input id="inlineradio2" type="radio" name="i-radio" value="option2">
                                                <span class="fa fa-circle"></span>b</label>
                                            <label class="radio-inline c-radio">
                                                <input id="inlineradio3" type="radio" name="i-radio" value="option3">
                                                <span class="fa fa-circle"></span>c</label>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Custom icons</label>
                                        <div class="col-sm-10">
                                            <label class="radio-inline c-radio">
                                                <input id="inlineradio10" type="radio" name="i-radio" value="option1" checked>
                                                <span class="fa fa-check"></span>a</label>
                                            <label class="radio-inline c-radio">
                                                <input id="inlineradio20" type="radio" name="i-radio" value="option2" checked>
                                                <span class="fa fa-user"></span>b</label>
                                            <label class="radio-inline c-radio">
                                                <input id="inlineradio30" type="radio" name="i-radio" value="option3" checked>
                                                <span class="fa fa-tint"></span>c</label>
                                            <br>
                                            <label class="checkbox-inline c-checkbox">
                                                <input id="inlinecheckbox10" type="checkbox" value="option1" checked>
                                                <span class="fa fa-star"></span>a</label>
                                            <label class="checkbox-inline c-checkbox">
                                                <input id="inlinecheckbox20" type="checkbox" value="option2" checked>
                                                <span class="fa fa-heart"></span>b</label>
                                            <label class="checkbox-inline c-checkbox">
                                                <input id="inlinecheckbox30" type="checkbox" value="option3" checked>
                                                <span class="fa fa-bell"></span>c</label>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group has-success">
                                        <label class="col-sm-2 control-label">Input with success</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group has-warning">
                                        <label class="col-sm-2 control-label">Input with warning</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group has-error">
                                        <label class="col-sm-2 control-label">Input with error</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Control sizing</label>
                                        <div class="col-sm-10">
                                            <input type="text" placeholder=".input-lg" class="form-control input-lg m-b">
                                            <br>
                                            <input type="text" placeholder="Default input" class="form-control m-b">
                                            <br>
                                            <input type="text" placeholder=".input-sm" class="form-control input-sm">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Column sizing</label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="text" placeholder=".col-md-2" class="form-control">
                                                </div>
                                                <div class="col-md-3">
                                                    <input type="text" placeholder=".col-md-3" class="form-control">
                                                </div>
                                                <div class="col-md-4">
                                                    <input type="text" placeholder=".col-md-4" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Input groups</label>
                                        <div class="col-sm-10">
                                            <div class="input-group m-b">
                                                <span class="input-group-addon">@</span>
                                                <input type="text" placeholder="Username" class="form-control">
                                            </div>
                                            <br>
                                            <div class="input-group m-b">
                                                <input type="text" class="form-control">
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                            <br>
                                            <div class="input-group m-b">
                                                <span class="input-group-addon">$</span>
                                                <input type="text" class="form-control">
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                            <br>
                                            <div class="input-group m-b">
                                 <span class="input-group-addon">
                                    <input type="checkbox">
                                 </span>
                                                <input type="text" class="form-control">
                                            </div>
                                            <br>
                                            <div class="input-group">
                                 <span class="input-group-addon">
                                    <input type="radio">
                                 </span>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Button addons</label>
                                        <div class="col-sm-10">
                                            <div class="input-group m-b">
                                 <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">Go!</button>
                                 </span>
                                                <input type="text" class="form-control">
                                            </div>
                                            <br>
                                            <div class="input-group">
                                                <input type="text" class="form-control">
                                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">Go!</button>
                                 </span>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">With dropdowns</label>
                                        <div class="col-sm-10">
                                            <div class="input-group m-b">
                                                <div class="input-group-btn">
                                                    <button type="button" data-toggle="dropdown" class="btn btn-default">Action
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul id="ddinput1" class="dropdown-menu">
                                                        <li><a href="#">Action</a>
                                                        </li>
                                                        <li><a href="#">Another action</a>
                                                        </li>
                                                        <li><a href="#">Something else here</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li><a href="#">Separated link</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <input type="text" class="form-control">
                                            </div>
                                            <br>
                                            <div class="input-group">
                                                <input type="text" class="form-control">
                                                <div class="input-group-btn">
                                                    <button type="button" data-toggle="dropdown" class="btn btn-default">Action
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul id="ddinput2" class="dropdown-menu pull-right">
                                                        <li><a href="#">Action</a>
                                                        </li>
                                                        <li><a href="#">Another action</a>
                                                        </li>
                                                        <li><a href="#">Something else here</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li><a href="#">Separated link</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Segmented</label>
                                        <div class="col-sm-10">
                                            <div class="input-group m-b">
                                                <div class="input-group-btn">
                                                    <button type="button" tabindex="-1" class="btn btn-default">Action</button>
                                                    <button type="button" data-toggle="dropdown" class="btn btn-default">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul id="ddinput3" class="dropdown-menu">
                                                        <li><a href="#">Action</a>
                                                        </li>
                                                        <li><a href="#">Another action</a>
                                                        </li>
                                                        <li><a href="#">Something else here</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li><a href="#">Separated link</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <input type="text" class="form-control">
                                            </div>
                                            <br>
                                            <div class="input-group">
                                                <input type="text" class="form-control">
                                                <div class="input-group-btn">
                                                    <button type="button" tabindex="-1" class="btn btn-default">Action</button>
                                                    <button type="button" data-toggle="dropdown" class="btn btn-default">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul id="ddinput4" class="dropdown-menu pull-right">
                                                        <li><a href="#">Action</a>
                                                        </li>
                                                        <li><a href="#">Another action</a>
                                                        </li>
                                                        <li><a href="#">Something else here</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li><a href="#">Separated link</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
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
    <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
    <script src="${staticPathAdmin}/js/adminDemoForm.bundle.js"></script>
    <#else>
        <script src="${staticPathAdmin}/js/common.bundle.js"></script>
        <script src="${staticPathAdmin}/js/adminHeader.bundle.js"></script>
        <script src="${staticPathAdmin}/js/adminDemoForm.bundle.js"></script>
</#if>



</body>
</html>
