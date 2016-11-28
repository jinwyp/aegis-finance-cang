<!-- top navbar-->
<header class="topnavbar-wrapper">
    <!-- START Top Navbar-->
    <nav role="navigation" class="navbar topnavbar">
        <!-- START navbar header-->
        <div class="navbar-header">
            <a href="#/" class="navbar-brand">
                <div class="brand-logo ym-header-logo">
                    <img src="${staticPathAdmin}/css/images/logo_wite.png" alt="App Logo" class="img-responsive">
                </div>
                <div class="brand-logo-collapsed ym-header-logo-collapsed">
                    <img src="${staticPathAdmin}/css/images/logo_noText.png" alt="App Logo" class="img-responsive">
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
            <!--<ul class="nav navbar-nav navbar-right">-->
                <!--&lt;!&ndash; Search icon&ndash;&gt;-->
                <!--<li>-->
                    <!--<a href="#" data-search-open="">-->
                        <!--<em class="icon-magnifier"></em>-->
                    <!--</a>-->
                <!--</li>-->
                <!--&lt;!&ndash; Fullscreen (only desktops)&ndash;&gt;-->
                <!--<li class="visible-lg">-->
                    <!--<a href="#" data-toggle-fullscreen="">-->
                        <!--<em class="fa fa-expand"></em>-->
                    <!--</a>-->
                <!--</li>-->
                <!--&lt;!&ndash; START Alert menu&ndash;&gt;-->
                <!--<li class="dropdown dropdown-list">-->
                    <!--<a href="#" data-toggle="dropdown">-->
                        <!--<em class="icon-bell"></em>-->
                        <!--<div class="label label-danger">11</div>-->
                    <!--</a>-->
                    <!--&lt;!&ndash; START Dropdown menu&ndash;&gt;-->
                    <!--<ul class="dropdown-menu animated flipInX">-->
                        <!--<li>-->
                            <!--&lt;!&ndash; START list group&ndash;&gt;-->
                            <!--<div class="list-group">-->
                                <!--&lt;!&ndash; list item&ndash;&gt;-->
                                <!--<a href="#" class="list-group-item">-->
                                    <!--<div class="media-box">-->
                                        <!--<div class="pull-left">-->
                                            <!--<em class="fa fa-twitter fa-2x text-info"></em>-->
                                        <!--</div>-->
                                        <!--<div class="media-box-body clearfix">-->
                                            <!--<p class="m0">New followers</p>-->
                                            <!--<p class="m0 text-muted">-->
                                                <!--<small>1 new follower</small>-->
                                            <!--</p>-->
                                        <!--</div>-->
                                    <!--</div>-->
                                <!--</a>-->
                                <!--&lt;!&ndash; list item&ndash;&gt;-->
                                <!--<a href="#" class="list-group-item">-->
                                    <!--<div class="media-box">-->
                                        <!--<div class="pull-left">-->
                                            <!--<em class="fa fa-envelope fa-2x text-warning"></em>-->
                                        <!--</div>-->
                                        <!--<div class="media-box-body clearfix">-->
                                            <!--<p class="m0">New e-mails</p>-->
                                            <!--<p class="m0 text-muted">-->
                                                <!--<small>You have 10 new emails</small>-->
                                            <!--</p>-->
                                        <!--</div>-->
                                    <!--</div>-->
                                <!--</a>-->
                                <!--&lt;!&ndash; list item&ndash;&gt;-->
                                <!--<a href="#" class="list-group-item">-->
                                    <!--<div class="media-box">-->
                                        <!--<div class="pull-left">-->
                                            <!--<em class="fa fa-tasks fa-2x text-success"></em>-->
                                        <!--</div>-->
                                        <!--<div class="media-box-body clearfix">-->
                                            <!--<p class="m0">Pending Tasks</p>-->
                                            <!--<p class="m0 text-muted">-->
                                                <!--<small>11 pending task</small>-->
                                            <!--</p>-->
                                        <!--</div>-->
                                    <!--</div>-->
                                <!--</a>-->
                                <!--&lt;!&ndash; last list item&ndash;&gt;-->
                                <!--<a href="#" class="list-group-item">-->
                                    <!--<small>More notifications</small>-->
                                    <!--<span class="label label-danger pull-right">14</span>-->
                                <!--</a>-->
                            <!--</div>-->
                            <!--&lt;!&ndash; END list group&ndash;&gt;-->
                        <!--</li>-->
                    <!--</ul>-->
                    <!--&lt;!&ndash; END Dropdown menu&ndash;&gt;-->
                <!--</li>-->
                <!--&lt;!&ndash; END Alert menu&ndash;&gt;-->
                <!--&lt;!&ndash; START Offsidebar button&ndash;&gt;-->
                <!--<li>-->
                    <!--<a href="#" data-toggle-state="offsidebar-open" data-no-persist="true">-->
                        <!--<em class="icon-notebook"></em>-->
                    <!--</a>-->
                <!--</li>-->
                <!--&lt;!&ndash; END Offsidebar menu&ndash;&gt;-->
            <!--</ul>-->
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