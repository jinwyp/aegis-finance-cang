<!DOCTYPE html >
<html lang="zh-cmn-Hans">
<head>

    <title>供应链金融 - 煤易贷 - 仓押管理平台</title>

    <#include "../common/head.ftl" >
        </head>
<body>
<div class="wrapper">

    <!-- top navbar-->
    <header class="topnavbar-wrapper">
        <!-- START Top Navbar-->
        <nav role="navigation" class="navbar topnavbar">
            <!-- START navbar header-->
            <div class="navbar-header">
                <a href="#/" class="navbar-brand">
                    <div class="brand-logo" style="padding: 7px 15px!important;">
                        <img src="${staticPathAdmin}/css/images/logo_wite.png" width="90" height="auto" alt="App Logo" class="img-responsive">
                    </div>

                </a>
            </div>
            <!-- END navbar header-->
            <!-- START Nav wrapper-->
            <div class="nav-wrapper">
                <!-- START Left navbar-->
                <ul class="nav navbar-nav">
                    <li>
                        <!-- Button used to collapse the left sidebar. Only visible on tablet and desktops-->
                        <a href="#" data-trigger-resize="" data-toggle-state="aside-collapsed" class="hidden-xs">
                            <em class="fa fa-navicon"></em>
                        </a>
                        <!-- Button to show/hide the sidebar on mobile. Visible on mobile only.-->
                        <a href="#" data-toggle-state="aside-toggled" data-no-persist="true" class="visible-xs sidebar-toggle">
                            <em class="fa fa-navicon"></em>
                        </a>
                    </li>
                    <!-- START User avatar toggle-->
                    <li>
                        <!-- Button used to collapse the left sidebar. Only visible on tablet and desktops-->
                        <a id="user-block-toggle" href="#user-block" data-toggle="collapse">
                            <em class="icon-user"></em>
                        </a>
                    </li>
                    <!-- END User avatar toggle-->
                    <!-- START lock screen-->
                    <li>
                        <a href="lock.html" title="Lock screen">
                            <em class="icon-lock"></em>
                        </a>
                    </li>
                    <!-- END lock screen-->
                </ul>
                <!-- END Left navbar-->
                <!-- START Right Navbar-->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Search icon-->
                    <li>
                        <a href="#" data-search-open="">
                            <em class="icon-magnifier"></em>
                        </a>
                    </li>
                    <!-- Fullscreen (only desktops)-->
                    <li class="visible-lg">
                        <a href="#" data-toggle-fullscreen="">
                            <em class="fa fa-expand"></em>
                        </a>
                    </li>
                    <!-- START Alert menu-->
                    <li class="dropdown dropdown-list">
                        <a href="#" data-toggle="dropdown">
                            <em class="icon-bell"></em>
                            <div class="label label-danger">11</div>
                        </a>
                        <!-- START Dropdown menu-->
                        <ul class="dropdown-menu animated flipInX">
                            <li>
                                <!-- START list group-->
                                <div class="list-group">
                                    <!-- list item-->
                                    <a href="#" class="list-group-item">
                                        <div class="media-box">
                                            <div class="pull-left">
                                                <em class="fa fa-twitter fa-2x text-info"></em>
                                            </div>
                                            <div class="media-box-body clearfix">
                                                <p class="m0">New followers</p>
                                                <p class="m0 text-muted">
                                                    <small>1 new follower</small>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                    <!-- list item-->
                                    <a href="#" class="list-group-item">
                                        <div class="media-box">
                                            <div class="pull-left">
                                                <em class="fa fa-envelope fa-2x text-warning"></em>
                                            </div>
                                            <div class="media-box-body clearfix">
                                                <p class="m0">New e-mails</p>
                                                <p class="m0 text-muted">
                                                    <small>You have 10 new emails</small>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                    <!-- list item-->
                                    <a href="#" class="list-group-item">
                                        <div class="media-box">
                                            <div class="pull-left">
                                                <em class="fa fa-tasks fa-2x text-success"></em>
                                            </div>
                                            <div class="media-box-body clearfix">
                                                <p class="m0">Pending Tasks</p>
                                                <p class="m0 text-muted">
                                                    <small>11 pending task</small>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                    <!-- last list item-->
                                    <a href="#" class="list-group-item">
                                        <small>More notifications</small>
                                        <span class="label label-danger pull-right">14</span>
                                    </a>
                                </div>
                                <!-- END list group-->
                            </li>
                        </ul>
                        <!-- END Dropdown menu-->
                    </li>
                    <!-- END Alert menu-->
                    <!-- START Offsidebar button-->
                    <li>
                        <a href="#" data-toggle-state="offsidebar-open" data-no-persist="true">
                            <em class="icon-notebook"></em>
                        </a>
                    </li>
                    <!-- END Offsidebar menu-->
                </ul>
                <!-- END Right Navbar-->
            </div>
            <!-- END Nav wrapper-->
            <!-- START Search form-->
            <form role="search" action="search.html" class="navbar-form">
                <div class="form-group has-feedback">
                    <input type="text" placeholder="Type and hit enter ..." class="form-control">
                    <div data-search-dismiss="" class="fa fa-times form-control-feedback"></div>
                </div>
                <button type="submit" class="hidden btn btn-default">Submit</button>
            </form>
            <!-- END Search form-->
        </nav>
        <!-- END Top Navbar-->
    </header>

    <!-- sidebar-->
    <aside class="aside">
        <!-- START Sidebar (left)-->
        <div class="aside-inner">
            <nav data-sidebar-anyclick-close="" class="sidebar">
                <!-- START sidebar nav-->
                <ul class="nav">
                    <!-- START user info-->
                    <li class="has-user-block">
                        <div id="user-block" class="collapse">
                            <div class="item user-block">
                                <!-- User picture-->
                                <div class="user-block-picture">
                                    <div class="user-block-status">
                                        <img src="img/user/02.jpg" alt="Avatar" width="60" height="60" class="img-thumbnail img-circle">
                                        <div class="circle circle-success circle-lg"></div>
                                    </div>
                                </div>
                                <!-- Name and Job-->
                                <div class="user-block-info">
                                    <span class="user-block-name">Hello, Mike</span>
                                    <span class="user-block-role">Designer</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <!-- END user info-->
                    <!-- Iterates over all sidebar items-->
                    <li class="nav-heading ">
                        <span data-localize="sidebar.heading.HEADER">Main Navigation</span>
                    </li>
                    <li class=" ">
                        <a href="#dashboard" title="Dashboard" data-toggle="collapse">
                            <div class="pull-right label label-info">3</div>
                            <em class="icon-speedometer"></em>
                            <span data-localize="sidebar.nav.DASHBOARD">Dashboard</span>
                        </a>
                        <ul id="dashboard" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Dashboard</li>
                            <li class=" ">
                                <a href="dashboard.html" title="Dashboard v1">
                                    <span>Dashboard v1</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="dashboard_v2.html" title="Dashboard v2">
                                    <span>Dashboard v2</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="dashboard_v3.html" title="Dashboard v3">
                                    <span>Dashboard v3</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class=" ">
                        <a href="widgets.html" title="Widgets">
                            <div class="pull-right label label-success">30</div>
                            <em class="icon-grid"></em>
                            <span data-localize="sidebar.nav.WIDGETS">Widgets</span>
                        </a>
                    </li>
                    <li class=" ">
                        <a href="#layout" title="Layouts" data-toggle="collapse">
                            <em class="icon-layers"></em>
                            <span>Layouts</span>
                        </a>
                        <ul id="layout" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Layouts</li>
                            <li class=" ">
                                <a href="dashboard_h.html" title="Horizontal">
                                    <span>Horizontal</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-heading ">
                        <span data-localize="sidebar.heading.COMPONENTS">Components</span>
                    </li>
                    <li class=" ">
                        <a href="#elements" title="Elements" data-toggle="collapse">
                            <em class="icon-chemistry"></em>
                            <span data-localize="sidebar.nav.element.ELEMENTS">Elements</span>
                        </a>
                        <ul id="elements" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Elements</li>
                            <li class=" ">
                                <a href="buttons.html" title="Buttons">
                                    <span data-localize="sidebar.nav.element.BUTTON">Buttons</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="notifications.html" title="Notifications">
                                    <span data-localize="sidebar.nav.element.NOTIFICATION">Notifications</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="sweetalert.html" title="Sweet Alert">
                                    <span>Sweet Alert</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="tour.html" title="Tour">
                                    <span>Tour</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="carousel.html" title="Carousel">
                                    <span data-localize="sidebar.nav.element.INTERACTION">Carousel</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="spinners.html" title="Spinners">
                                    <span data-localize="sidebar.nav.element.SPINNER">Spinners</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="animations.html" title="Animations">
                                    <span data-localize="sidebar.nav.element.ANIMATION">Animations</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="dropdown-animations.html" title="Dropdown">
                                    <span data-localize="sidebar.nav.element.DROPDOWN">Dropdown</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="nestable.html" title="Nestable">
                                    <span>Nestable</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="sortable.html" title="Sortable">
                                    <span>Sortable</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="panels.html" title="Panels">
                                    <span data-localize="sidebar.nav.element.PANEL">Panels</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="portlets.html" title="Portlets">
                                    <span data-localize="sidebar.nav.element.PORTLET">Portlets</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="grid.html" title="Grid">
                                    <span data-localize="sidebar.nav.element.GRID">Grid</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="grid-masonry.html" title="Grid Masonry">
                                    <span data-localize="sidebar.nav.element.GRID_MASONRY">Grid Masonry</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="typo.html" title="Typography">
                                    <span data-localize="sidebar.nav.element.TYPO">Typography</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="icons-font.html" title="Font Icons">
                                    <div class="pull-right label label-success">+400</div>
                                    <span data-localize="sidebar.nav.element.FONT_ICON">Font Icons</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="icons-weather.html" title="Weather Icons">
                                    <div class="pull-right label label-success">+100</div>
                                    <span data-localize="sidebar.nav.element.WEATHER_ICON">Weather Icons</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="colors.html" title="Colors">
                                    <span data-localize="sidebar.nav.element.COLOR">Colors</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class=" ">
                        <a href="#forms" title="Forms" data-toggle="collapse">
                            <em class="icon-note"></em>
                            <span data-localize="sidebar.nav.form.FORM">Forms</span>
                        </a>
                        <ul id="forms" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Forms</li>
                            <li class=" active">
                                <a href="form-standard.html" title="Standard">
                                    <span data-localize="sidebar.nav.form.STANDARD">Standard</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="form-extended.html" title="Extended">
                                    <span data-localize="sidebar.nav.form.EXTENDED">Extended</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="form-validation.html" title="Validation">
                                    <span data-localize="sidebar.nav.form.VALIDATION">Validation</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="form-wizard.html" title="Wizard">
                                    <span>Wizard</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="form-upload.html" title="Upload">
                                    <span>Upload</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="form-xeditable.html" title="xEditable">
                                    <span>xEditable</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="form-imagecrop.html" title="Cropper">
                                    <span>Cropper</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class=" ">
                        <a href="#charts" title="Charts" data-toggle="collapse">
                            <em class="icon-graph"></em>
                            <span data-localize="sidebar.nav.chart.CHART">Charts</span>
                        </a>
                        <ul id="charts" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Charts</li>
                            <li class=" ">
                                <a href="chart-flot.html" title="Flot">
                                    <span data-localize="sidebar.nav.chart.FLOT">Flot</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="chart-radial.html" title="Radial">
                                    <span data-localize="sidebar.nav.chart.RADIAL">Radial</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="chart-js.html" title="Chart JS">
                                    <span>Chart JS</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="chart-rickshaw.html" title="Rickshaw">
                                    <span>Rickshaw</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="chart-morris.html" title="MorrisJS">
                                    <span>MorrisJS</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="chart-chartist.html" title="Chartist">
                                    <span>Chartist</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class=" ">
                        <a href="#tables" title="Tables" data-toggle="collapse">
                            <em class="icon-grid"></em>
                            <span data-localize="sidebar.nav.table.TABLE">Tables</span>
                        </a>
                        <ul id="tables" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Tables</li>
                            <li class=" ">
                                <a href="table-standard.html" title="Standard">
                                    <span data-localize="sidebar.nav.table.STANDARD">Standard</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="table-extended.html" title="Extended">
                                    <span data-localize="sidebar.nav.table.EXTENDED">Extended</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="table-datatable.html" title="DataTables">
                                    <span data-localize="sidebar.nav.table.DATATABLE">DataTables</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="table-jqgrid.html" title="jqGrid">
                                    <span>jqGrid</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class=" ">
                        <a href="#maps" title="Maps" data-toggle="collapse">
                            <em class="icon-map"></em>
                            <span data-localize="sidebar.nav.map.MAP">Maps</span>
                        </a>
                        <ul id="maps" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Maps</li>
                            <li class=" ">
                                <a href="maps-google.html" title="Google Maps">
                                    <span data-localize="sidebar.nav.map.GOOGLE">Google Maps</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="maps-vector.html" title="Vector Maps">
                                    <span data-localize="sidebar.nav.map.VECTOR">Vector Maps</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-heading ">
                        <span data-localize="sidebar.heading.MORE">More</span>
                    </li>
                    <li class=" ">
                        <a href="#pages" title="Pages" data-toggle="collapse">
                            <em class="icon-doc"></em>
                            <span data-localize="sidebar.nav.pages.PAGES">Pages</span>
                        </a>
                        <ul id="pages" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Pages</li>
                            <li class=" ">
                                <a href="login.html" title="Login">
                                    <span data-localize="sidebar.nav.pages.LOGIN">Login</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="register.html" title="Sign up">
                                    <span data-localize="sidebar.nav.pages.REGISTER">Sign up</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="recover.html" title="Recover Password">
                                    <span data-localize="sidebar.nav.pages.RECOVER">Recover Password</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="lock.html" title="Lock">
                                    <span data-localize="sidebar.nav.pages.LOCK">Lock</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="template.html" title="Starter Template">
                                    <span data-localize="sidebar.nav.pages.STARTER">Starter Template</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="404.html" title="404">
                                    <span>404</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="500.html" title="500">
                                    <span>500</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="maintenance.html" title="Maintenance">
                                    <span>Maintenance</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class=" ">
                        <a href="#extras" title="Extras" data-toggle="collapse">
                            <em class="icon-cup"></em>
                            <span data-localize="sidebar.nav.extra.EXTRA">Extras</span>
                        </a>
                        <ul id="extras" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Extras</li>
                            <li class=" ">
                                <a href="#blog" title="Blog" data-toggle="collapse">
                                    <em class="fa fa-angle-right"></em>
                                    <span>Blog</span>
                                </a>
                                <ul id="blog" class="nav sidebar-subnav collapse">
                                    <li class="sidebar-subnav-header">Blog</li>
                                    <li class=" ">
                                        <a href="blog.html" title="List">
                                            <span>List</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="blog-post.html" title="Post">
                                            <span>Post</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="blog-articles.html" title="Articles">
                                            <span>Articles</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="blog-article-view.html" title="Article View">
                                            <span>Article View</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class=" ">
                                <a href="#ecommerce" title="eCommerce" data-toggle="collapse">
                                    <em class="fa fa-angle-right"></em>
                                    <span>eCommerce</span>
                                </a>
                                <ul id="ecommerce" class="nav sidebar-subnav collapse">
                                    <li class="sidebar-subnav-header">eCommerce</li>
                                    <li class=" ">
                                        <a href="ecommerce-orders.html" title="Orders">
                                            <div class="pull-right label label-info">10</div>
                                            <span>Orders</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="ecommerce-order-view.html" title="Order View">
                                            <span>Order View</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="ecommerce-products.html" title="Products">
                                            <span>Products</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="ecommerce-product-view.html" title="Product View">
                                            <span>Product View</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="ecommerce-checkout.html" title="Checkout">
                                            <span>Checkout</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class=" ">
                                <a href="#forum" title="Forum" data-toggle="collapse">
                                    <em class="fa fa-angle-right"></em>
                                    <span>Forum</span>
                                </a>
                                <ul id="forum" class="nav sidebar-subnav collapse">
                                    <li class="sidebar-subnav-header">Forum</li>
                                    <li class=" ">
                                        <a href="forum-categories.html" title="Categories">
                                            <span>Categories</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="forum-topics.html" title="Topics">
                                            <span>Topics</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="forum-discussion.html" title="Discussion">
                                            <span>Discussion</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class=" ">
                                <a href="contacts.html" title="Contacts">
                                    <span>Contacts</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="contact-details.html" title="Contact details">
                                    <span>Contact details</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="projects.html" title="Projects">
                                    <span>Projects</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="project-details.html" title="Projects details">
                                    <span>Projects details</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="team-viewer.html" title="Team viewer">
                                    <span>Team viewer</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="social-board.html" title="Social board">
                                    <span>Social board</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="vote-links.html" title="Vote links">
                                    <span>Vote links</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="bug-tracker.html" title="Bug tracker">
                                    <span>Bug tracker</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="faq.html" title="FAQ">
                                    <span>FAQ</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="help-center.html" title="Help Center">
                                    <span>Help Center</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="followers.html" title="Followers">
                                    <span>Followers</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="settings.html" title="Settings">
                                    <span>Settings</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="plans.html" title="Plans">
                                    <span>Plans</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="file-manager.html" title="File manager">
                                    <span>File manager</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="mailbox.html" title="Mailbox">
                                    <span data-localize="sidebar.nav.extra.MAILBOX">Mailbox</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="timeline.html" title="Timeline">
                                    <span data-localize="sidebar.nav.extra.TIMELINE">Timeline</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="calendar.html" title="Calendar">
                                    <span data-localize="sidebar.nav.extra.CALENDAR">Calendar</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="invoice.html" title="Invoice">
                                    <span data-localize="sidebar.nav.extra.INVOICE">Invoice</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="search.html" title="Search">
                                    <span data-localize="sidebar.nav.extra.SEARCH">Search</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="todo.html" title="Todo List">
                                    <span data-localize="sidebar.nav.extra.TODO">Todo List</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="profile.html" title="Profile">
                                    <span data-localize="sidebar.nav.extra.PROFILE">Profile</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class=" ">
                        <a href="#multilevel" title="Multilevel" data-toggle="collapse">
                            <em class="fa fa-folder-open-o"></em>
                            <span>Multilevel</span>
                        </a>
                        <ul id="multilevel" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Multilevel</li>
                            <li class=" ">
                                <a href="#level1" title="Level 1" data-toggle="collapse">
                                    <span>Level 1</span>
                                </a>
                                <ul id="level1" class="nav sidebar-subnav collapse">
                                    <li class="sidebar-subnav-header">Level 1</li>
                                    <li class=" ">
                                        <a href="multilevel-1.html" title="Level1 Item">
                                            <span>Level1 Item</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="#level2" title="Level 2" data-toggle="collapse">
                                            <span>Level 2</span>
                                        </a>
                                        <ul id="level2" class="nav sidebar-subnav collapse">
                                            <li class="sidebar-subnav-header">Level 2</li>
                                            <li class=" ">
                                                <a href="#level3" title="Level 3" data-toggle="collapse">
                                                    <span>Level 3</span>
                                                </a>
                                                <ul id="level3" class="nav sidebar-subnav collapse">
                                                    <li class="sidebar-subnav-header">Level 3</li>
                                                    <li class=" ">
                                                        <a href="multilevel-3.html" title="Level3 Item">
                                                            <span>Level3 Item</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class=" ">
                        <a href="documentation.html" title="Documentation">
                            <em class="icon-graduation"></em>
                            <span data-localize="sidebar.nav.DOCUMENTATION">Documentation</span>
                        </a>
                    </li>
                </ul>
                <!-- END sidebar nav-->
            </nav>
        </div>
        <!-- END Sidebar (left)-->
    </aside>

    <!-- offsidebar-->
    <aside class="offsidebar hide">
        <!-- START Off Sidebar (right)-->
        <nav>
            <div role="tabpanel">
                <!-- Nav tabs-->
                <ul role="tablist" class="nav nav-tabs nav-justified">
                    <li role="presentation" class="active">
                        <a href="#app-settings" aria-controls="app-settings" role="tab" data-toggle="tab">
                            <em class="icon-equalizer fa-lg"></em>
                        </a>
                    </li>
                    <li role="presentation">
                        <a href="#app-chat" aria-controls="app-chat" role="tab" data-toggle="tab">
                            <em class="icon-user fa-lg"></em>
                        </a>
                    </li>
                </ul>
                <!-- Tab panes-->
                <div class="tab-content">
                    <div id="app-settings" role="tabpanel" class="tab-pane fade in active">
                        <h3 class="text-center text-thin">Settings</h3>
                        <div class="p">
                            <h4 class="text-muted text-thin">Themes</h4>
                            <div class="table-grid mb">
                                <div class="col mb">
                                    <div class="setting-color">
                                        <label data-load-css="css/theme-a.css">
                                            <input type="radio" name="setting-theme" checked="checked">
                                            <span class="icon-check"></span>
                                            <span class="split">
                                       <span class="color bg-info"></span>
                                       <span class="color bg-info-light"></span>
                                    </span>
                                            <span class="color bg-white"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col mb">
                                    <div class="setting-color">
                                        <label data-load-css="css/theme-b.css">
                                            <input type="radio" name="setting-theme">
                                            <span class="icon-check"></span>
                                            <span class="split">
                                       <span class="color bg-green"></span>
                                       <span class="color bg-green-light"></span>
                                    </span>
                                            <span class="color bg-white"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col mb">
                                    <div class="setting-color">
                                        <label data-load-css="css/theme-c.css">
                                            <input type="radio" name="setting-theme">
                                            <span class="icon-check"></span>
                                            <span class="split">
                                       <span class="color bg-purple"></span>
                                       <span class="color bg-purple-light"></span>
                                    </span>
                                            <span class="color bg-white"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col mb">
                                    <div class="setting-color">
                                        <label data-load-css="css/theme-d.css">
                                            <input type="radio" name="setting-theme">
                                            <span class="icon-check"></span>
                                            <span class="split">
                                       <span class="color bg-danger"></span>
                                       <span class="color bg-danger-light"></span>
                                    </span>
                                            <span class="color bg-white"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="table-grid mb">
                                <div class="col mb">
                                    <div class="setting-color">
                                        <label data-load-css="css/theme-e.css">
                                            <input type="radio" name="setting-theme">
                                            <span class="icon-check"></span>
                                            <span class="split">
                                       <span class="color bg-info-dark"></span>
                                       <span class="color bg-info"></span>
                                    </span>
                                            <span class="color bg-gray-dark"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col mb">
                                    <div class="setting-color">
                                        <label data-load-css="css/theme-f.css">
                                            <input type="radio" name="setting-theme">
                                            <span class="icon-check"></span>
                                            <span class="split">
                                       <span class="color bg-green-dark"></span>
                                       <span class="color bg-green"></span>
                                    </span>
                                            <span class="color bg-gray-dark"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col mb">
                                    <div class="setting-color">
                                        <label data-load-css="css/theme-g.css">
                                            <input type="radio" name="setting-theme">
                                            <span class="icon-check"></span>
                                            <span class="split">
                                       <span class="color bg-purple-dark"></span>
                                       <span class="color bg-purple"></span>
                                    </span>
                                            <span class="color bg-gray-dark"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col mb">
                                    <div class="setting-color">
                                        <label data-load-css="css/theme-h.css">
                                            <input type="radio" name="setting-theme">
                                            <span class="icon-check"></span>
                                            <span class="split">
                                       <span class="color bg-danger-dark"></span>
                                       <span class="color bg-danger"></span>
                                    </span>
                                            <span class="color bg-gray-dark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p">
                            <h4 class="text-muted text-thin">Layout</h4>
                            <div class="clearfix">
                                <p class="pull-left">Fixed</p>
                                <div class="pull-right">
                                    <label class="switch">
                                        <input id="chk-fixed" type="checkbox" data-toggle-state="layout-fixed">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                            <div class="clearfix">
                                <p class="pull-left">Boxed</p>
                                <div class="pull-right">
                                    <label class="switch">
                                        <input id="chk-boxed" type="checkbox" data-toggle-state="layout-boxed">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                            <div class="clearfix">
                                <p class="pull-left">RTL</p>
                                <div class="pull-right">
                                    <label class="switch">
                                        <input id="chk-rtl" type="checkbox">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="p">
                            <h4 class="text-muted text-thin">Aside</h4>
                            <div class="clearfix">
                                <p class="pull-left">Collapsed</p>
                                <div class="pull-right">
                                    <label class="switch">
                                        <input id="chk-collapsed" type="checkbox" data-toggle-state="aside-collapsed">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                            <div class="clearfix">
                                <p class="pull-left">Collapsed Text</p>
                                <div class="pull-right">
                                    <label class="switch">
                                        <input id="chk-collapsed-text" type="checkbox" data-toggle-state="aside-collapsed-text">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                            <div class="clearfix">
                                <p class="pull-left">Float</p>
                                <div class="pull-right">
                                    <label class="switch">
                                        <input id="chk-float" type="checkbox" data-toggle-state="aside-float">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                            <div class="clearfix">
                                <p class="pull-left">Hover</p>
                                <div class="pull-right">
                                    <label class="switch">
                                        <input id="chk-hover" type="checkbox" data-toggle-state="aside-hover">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                            <div class="clearfix">
                                <p class="pull-left">Show Scrollbar</p>
                                <div class="pull-right">
                                    <label class="switch">
                                        <input id="chk-hover" type="checkbox" data-toggle-state="show-scrollbar" data-target=".sidebar">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="app-chat" role="tabpanel" class="tab-pane fade">
                        <h3 class="text-center text-thin">Connections</h3>
                        <ul class="nav">
                            <!-- START list title-->
                            <li class="p">
                                <small class="text-muted">ONLINE</small>
                            </li>
                            <!-- END list title-->
                            <li>
                                <!-- START User status-->
                                <a href="#" class="media-box p mt0">
                              <span class="pull-right">
                                 <span class="circle circle-success circle-lg"></span>
                              </span>
                                    <span class="pull-left">
                                 <!-- Contact avatar-->
                                 <img src="img/user/05.jpg" alt="Image" class="media-box-object img-circle thumb48">
                              </span>
                                    <!-- Contact info-->
                                    <span class="media-box-body">
                                 <span class="media-box-heading">
                                    <strong>Juan Sims</strong>
                                    <br>
                                    <small class="text-muted">Designeer</small>
                                 </span>
                              </span>
                                </a>
                                <!-- END User status-->
                                <!-- START User status-->
                                <a href="#" class="media-box p mt0">
                              <span class="pull-right">
                                 <span class="circle circle-success circle-lg"></span>
                              </span>
                                    <span class="pull-left">
                                 <!-- Contact avatar-->
                                 <img src="img/user/06.jpg" alt="Image" class="media-box-object img-circle thumb48">
                              </span>
                                    <!-- Contact info-->
                                    <span class="media-box-body">
                                 <span class="media-box-heading">
                                    <strong>Maureen Jenkins</strong>
                                    <br>
                                    <small class="text-muted">Designeer</small>
                                 </span>
                              </span>
                                </a>
                                <!-- END User status-->
                                <!-- START User status-->
                                <a href="#" class="media-box p mt0">
                              <span class="pull-right">
                                 <span class="circle circle-danger circle-lg"></span>
                              </span>
                                    <span class="pull-left">
                                 <!-- Contact avatar-->
                                 <img src="img/user/07.jpg" alt="Image" class="media-box-object img-circle thumb48">
                              </span>
                                    <!-- Contact info-->
                                    <span class="media-box-body">
                                 <span class="media-box-heading">
                                    <strong>Billie Dunn</strong>
                                    <br>
                                    <small class="text-muted">Designeer</small>
                                 </span>
                              </span>
                                </a>
                                <!-- END User status-->
                                <!-- START User status-->
                                <a href="#" class="media-box p mt0">
                              <span class="pull-right">
                                 <span class="circle circle-warning circle-lg"></span>
                              </span>
                                    <span class="pull-left">
                                 <!-- Contact avatar-->
                                 <img src="img/user/08.jpg" alt="Image" class="media-box-object img-circle thumb48">
                              </span>
                                    <!-- Contact info-->
                                    <span class="media-box-body">
                                 <span class="media-box-heading">
                                    <strong>Tomothy Roberts</strong>
                                    <br>
                                    <small class="text-muted">Designer</small>
                                 </span>
                              </span>
                                </a>
                                <!-- END User status-->
                            </li>
                            <!-- START list title-->
                            <li class="p">
                                <small class="text-muted">OFFLINE</small>
                            </li>
                            <!-- END list title-->
                            <li>
                                <!-- START User status-->
                                <a href="#" class="media-box p mt0">
                              <span class="pull-right">
                                 <span class="circle circle-lg"></span>
                              </span>
                                    <span class="pull-left">
                                 <!-- Contact avatar-->
                                 <img src="img/user/09.jpg" alt="Image" class="media-box-object img-circle thumb48">
                              </span>
                                    <!-- Contact info-->
                                    <span class="media-box-body">
                                 <span class="media-box-heading">
                                    <strong>Lawrence Robinson</strong>
                                    <br>
                                    <small class="text-muted">Developer</small>
                                 </span>
                              </span>
                                </a>
                                <!-- END User status-->
                                <!-- START User status-->
                                <a href="#" class="media-box p mt0">
                              <span class="pull-right">
                                 <span class="circle circle-lg"></span>
                              </span>
                                    <span class="pull-left">
                                 <!-- Contact avatar-->
                                 <img src="img/user/10.jpg" alt="Image" class="media-box-object img-circle thumb48">
                              </span>
                                    <!-- Contact info-->
                                    <span class="media-box-body">
                                 <span class="media-box-heading">
                                    <strong>Tyrone Owens</strong>
                                    <br>
                                    <small class="text-muted">Designer</small>
                                 </span>
                              </span>
                                </a>
                                <!-- END User status-->
                            </li>
                            <li>
                                <div class="p-lg text-center">
                                    <!-- Optional link to list more users-->
                                    <a href="#" title="See more contacts" class="btn btn-purple btn-sm">
                                        <strong>Load more..</strong>
                                    </a>
                                </div>
                            </li>
                        </ul>
                        <!-- Extra items-->
                        <div class="p">
                            <p>
                                <small class="text-muted">Tasks completion</small>
                            </p>
                            <div class="progress progress-xs m0">
                                <div role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-success progress-80">
                                    <span class="sr-only">80% Complete</span>
                                </div>
                            </div>
                        </div>
                        <div class="p">
                            <p>
                                <small class="text-muted">Upload quota</small>
                            </p>
                            <div class="progress progress-xs m0">
                                <div role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-warning progress-40">
                                    <span class="sr-only">40% Complete</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <!-- END Off Sidebar (right)-->
    </aside>

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

</div>



<#if env == 'dev' || env == 'staging' || env == 'prod' >
    <!-- 生产环境使用 bundle.js 文件 -->
    <script src="js/common.js"></script>
    <script src="js/adminLogin.bundle.js"></script>
</#if>

<#--<script src="js/common.js"></script>-->
<#--<script src="js/adminLogin.bundle.js"></script>-->



</body>
</html>