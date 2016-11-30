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
                    <span data-localize="sidebar.heading.HEADER">仓押管理系统</span>
                </li>
                <li class=" ">
                    <a href="#dashboard" title="Dashboard" data-toggle="collapse">
                        <!--<div class="pull-right label label-info">3</div>-->
                        <em class="icon-speedometer"></em>
                        <span data-localize="sidebar.nav.DASHBOARD">控制台</span>
                    </a>
                    <ul id="dashboard" class="nav sidebar-subnav collapse">
                        <li class="sidebar-subnav-header">Dashboard</li>
                        <li class=" ">
                            <a href="/warehouse/admin/home" title="范例 - 搜索列表">
                                <span>范例 - 搜索列表</span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="/warehouse/admin/home/demo/form" title="范例 - 表单">
                                <span>范例 - 表单</span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="/warehouse/admin/home/demo/echart" title="范例 - Echart">
                                <span>范例 - Echart</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class=" ">
                    <a href="widgets.html" title="Widgets">
                        <!--<div class="pull-right label label-success">30</div>-->
                        <em class="icon-grid"></em>
                        <span data-localize="sidebar.nav.WIDGETS">Widgets</span>
                    </a>
                </li>

                <li class=" ">
                    <a href="#layout" title="Layouts" data-toggle="collapse">
                        <em class="icon-layers"></em>
                        <span>个人信息</span>
                    </a>
                    <ul id="layout" class="nav sidebar-subnav collapse">
                        <li class="sidebar-subnav-header">个人信息</li>
                        <li class=" ">
                            <a href="dashboard_h.html" title="Horizontal">
                                <span>基本信息</span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="dashboard_h.html" title="Horizontal">
                                <span>修改密码</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <!--<li class="nav-heading ">-->
                    <!--<span data-localize="sidebar.heading.COMPONENTS">Components</span>-->
                <!--</li>-->
                <li class=" ">
                    <a href="#forms" title="Forms" data-toggle="collapse">
                        <em class="icon-note"></em>
                        <span data-localize="sidebar.nav.form.FORM">系统设置</span>
                    </a>
                    <ul id="forms" class="nav sidebar-subnav collapse">
                        <li class="sidebar-subnav-header">系统设置</li>
                        <li class=" active">
                            <a href="/warehouse/admin/home/demo/form" title="Standard">
                                <span data-localize="sidebar.nav.form.STANDARD">用户管理</span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="form-extended.html" title="Extended">
                                <span data-localize="sidebar.nav.form.EXTENDED">角色管理</span>
                            </a>
                        </li>
                        <li class=" ">
                            <a href="form-validation.html" title="Validation">
                                <span data-localize="sidebar.nav.form.VALIDATION">业务线管理</span>
                            </a>
                        </li>

                    </ul>
                </li>


                <!--<li class=" ">-->
                    <!--<a href="#charts" title="Charts" data-toggle="collapse">-->
                        <!--<em class="icon-graph"></em>-->
                        <!--<span data-localize="sidebar.nav.chart.CHART">Charts</span>-->
                    <!--</a>-->
                    <!--<ul id="charts" class="nav sidebar-subnav collapse">-->
                        <!--<li class="sidebar-subnav-header">Charts</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="chart-flot.html" title="Flot">-->
                                <!--<span data-localize="sidebar.nav.chart.FLOT">Flot</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="chart-radial.html" title="Radial">-->
                                <!--<span data-localize="sidebar.nav.chart.RADIAL">Radial</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="chart-js.html" title="Chart JS">-->
                                <!--<span>Chart JS</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="chart-rickshaw.html" title="Rickshaw">-->
                                <!--<span>Rickshaw</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="chart-morris.html" title="MorrisJS">-->
                                <!--<span>MorrisJS</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="chart-chartist.html" title="Chartist">-->
                                <!--<span>Chartist</span>-->
                            <!--</a>-->
                        <!--</li>-->
                    <!--</ul>-->
                <!--</li>-->
                <!--<li class=" ">-->
                    <!--<a href="#tables" title="Tables" data-toggle="collapse">-->
                        <!--<em class="icon-grid"></em>-->
                        <!--<span data-localize="sidebar.nav.table.TABLE">Tables</span>-->
                    <!--</a>-->
                    <!--<ul id="tables" class="nav sidebar-subnav collapse">-->
                        <!--<li class="sidebar-subnav-header">Tables</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="table-standard.html" title="Standard">-->
                                <!--<span data-localize="sidebar.nav.table.STANDARD">Standard</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="table-extended.html" title="Extended">-->
                                <!--<span data-localize="sidebar.nav.table.EXTENDED">Extended</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="table-datatable.html" title="DataTables">-->
                                <!--<span data-localize="sidebar.nav.table.DATATABLE">DataTables</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="table-jqgrid.html" title="jqGrid">-->
                                <!--<span>jqGrid</span>-->
                            <!--</a>-->
                        <!--</li>-->
                    <!--</ul>-->
                <!--</li>-->
                <!--<li class=" ">-->
                    <!--<a href="#maps" title="Maps" data-toggle="collapse">-->
                        <!--<em class="icon-map"></em>-->
                        <!--<span data-localize="sidebar.nav.map.MAP">Maps</span>-->
                    <!--</a>-->
                    <!--<ul id="maps" class="nav sidebar-subnav collapse">-->
                        <!--<li class="sidebar-subnav-header">Maps</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="maps-google.html" title="Google Maps">-->
                                <!--<span data-localize="sidebar.nav.map.GOOGLE">Google Maps</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="maps-vector.html" title="Vector Maps">-->
                                <!--<span data-localize="sidebar.nav.map.VECTOR">Vector Maps</span>-->
                            <!--</a>-->
                        <!--</li>-->
                    <!--</ul>-->
                <!--</li>-->
                <!--<li class="nav-heading ">-->
                    <!--<span data-localize="sidebar.heading.MORE">More</span>-->
                <!--</li>-->
                <!--<li class=" ">-->
                    <!--<a href="#pages" title="Pages" data-toggle="collapse">-->
                        <!--<em class="icon-doc"></em>-->
                        <!--<span data-localize="sidebar.nav.pages.PAGES">Pages</span>-->
                    <!--</a>-->
                    <!--<ul id="pages" class="nav sidebar-subnav collapse">-->
                        <!--<li class="sidebar-subnav-header">Pages</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="login.html" title="Login">-->
                                <!--<span data-localize="sidebar.nav.pages.LOGIN">Login</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="register.html" title="Sign up">-->
                                <!--<span data-localize="sidebar.nav.pages.REGISTER">Sign up</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="recover.html" title="Recover Password">-->
                                <!--<span data-localize="sidebar.nav.pages.RECOVER">Recover Password</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="lock.html" title="Lock">-->
                                <!--<span data-localize="sidebar.nav.pages.LOCK">Lock</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="template.html" title="Starter Template">-->
                                <!--<span data-localize="sidebar.nav.pages.STARTER">Starter Template</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="404.html" title="404">-->
                                <!--<span>404</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="500.html" title="500">-->
                                <!--<span>500</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="maintenance.html" title="Maintenance">-->
                                <!--<span>Maintenance</span>-->
                            <!--</a>-->
                        <!--</li>-->
                    <!--</ul>-->
                <!--</li>-->
                <!--<li class=" ">-->
                    <!--<a href="#extras" title="Extras" data-toggle="collapse">-->
                        <!--<em class="icon-cup"></em>-->
                        <!--<span data-localize="sidebar.nav.extra.EXTRA">Extras</span>-->
                    <!--</a>-->
                    <!--<ul id="extras" class="nav sidebar-subnav collapse">-->
                        <!--<li class="sidebar-subnav-header">Extras</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="#blog" title="Blog" data-toggle="collapse">-->
                                <!--<em class="fa fa-angle-right"></em>-->
                                <!--<span>Blog</span>-->
                            <!--</a>-->
                            <!--<ul id="blog" class="nav sidebar-subnav collapse">-->
                                <!--<li class="sidebar-subnav-header">Blog</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="blog.html" title="List">-->
                                        <!--<span>List</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="blog-post.html" title="Post">-->
                                        <!--<span>Post</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="blog-articles.html" title="Articles">-->
                                        <!--<span>Articles</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="blog-article-view.html" title="Article View">-->
                                        <!--<span>Article View</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                            <!--</ul>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="#ecommerce" title="eCommerce" data-toggle="collapse">-->
                                <!--<em class="fa fa-angle-right"></em>-->
                                <!--<span>eCommerce</span>-->
                            <!--</a>-->
                            <!--<ul id="ecommerce" class="nav sidebar-subnav collapse">-->
                                <!--<li class="sidebar-subnav-header">eCommerce</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="ecommerce-orders.html" title="Orders">-->
                                        <!--<div class="pull-right label label-info">10</div>-->
                                        <!--<span>Orders</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="ecommerce-order-view.html" title="Order View">-->
                                        <!--<span>Order View</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="ecommerce-products.html" title="Products">-->
                                        <!--<span>Products</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="ecommerce-product-view.html" title="Product View">-->
                                        <!--<span>Product View</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="ecommerce-checkout.html" title="Checkout">-->
                                        <!--<span>Checkout</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                            <!--</ul>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="#forum" title="Forum" data-toggle="collapse">-->
                                <!--<em class="fa fa-angle-right"></em>-->
                                <!--<span>Forum</span>-->
                            <!--</a>-->
                            <!--<ul id="forum" class="nav sidebar-subnav collapse">-->
                                <!--<li class="sidebar-subnav-header">Forum</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="forum-categories.html" title="Categories">-->
                                        <!--<span>Categories</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="forum-topics.html" title="Topics">-->
                                        <!--<span>Topics</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="forum-discussion.html" title="Discussion">-->
                                        <!--<span>Discussion</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                            <!--</ul>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="contacts.html" title="Contacts">-->
                                <!--<span>Contacts</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="contact-details.html" title="Contact details">-->
                                <!--<span>Contact details</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="projects.html" title="Projects">-->
                                <!--<span>Projects</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="project-details.html" title="Projects details">-->
                                <!--<span>Projects details</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="team-viewer.html" title="Team viewer">-->
                                <!--<span>Team viewer</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="social-board.html" title="Social board">-->
                                <!--<span>Social board</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="vote-links.html" title="Vote links">-->
                                <!--<span>Vote links</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="bug-tracker.html" title="Bug tracker">-->
                                <!--<span>Bug tracker</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="faq.html" title="FAQ">-->
                                <!--<span>FAQ</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="help-center.html" title="Help Center">-->
                                <!--<span>Help Center</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="followers.html" title="Followers">-->
                                <!--<span>Followers</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="settings.html" title="Settings">-->
                                <!--<span>Settings</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="plans.html" title="Plans">-->
                                <!--<span>Plans</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="file-manager.html" title="File manager">-->
                                <!--<span>File manager</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="mailbox.html" title="Mailbox">-->
                                <!--<span data-localize="sidebar.nav.extra.MAILBOX">Mailbox</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="timeline.html" title="Timeline">-->
                                <!--<span data-localize="sidebar.nav.extra.TIMELINE">Timeline</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="calendar.html" title="Calendar">-->
                                <!--<span data-localize="sidebar.nav.extra.CALENDAR">Calendar</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="invoice.html" title="Invoice">-->
                                <!--<span data-localize="sidebar.nav.extra.INVOICE">Invoice</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="search.html" title="Search">-->
                                <!--<span data-localize="sidebar.nav.extra.SEARCH">Search</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="todo.html" title="Todo List">-->
                                <!--<span data-localize="sidebar.nav.extra.TODO">Todo List</span>-->
                            <!--</a>-->
                        <!--</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="profile.html" title="Profile">-->
                                <!--<span data-localize="sidebar.nav.extra.PROFILE">Profile</span>-->
                            <!--</a>-->
                        <!--</li>-->
                    <!--</ul>-->
                <!--</li>-->
                <!--<li class=" ">-->
                    <!--<a href="#multilevel" title="Multilevel" data-toggle="collapse">-->
                        <!--<em class="fa fa-folder-open-o"></em>-->
                        <!--<span>Multilevel</span>-->
                    <!--</a>-->
                    <!--<ul id="multilevel" class="nav sidebar-subnav collapse">-->
                        <!--<li class="sidebar-subnav-header">Multilevel</li>-->
                        <!--<li class=" ">-->
                            <!--<a href="#level1" title="Level 1" data-toggle="collapse">-->
                                <!--<span>Level 1</span>-->
                            <!--</a>-->
                            <!--<ul id="level1" class="nav sidebar-subnav collapse">-->
                                <!--<li class="sidebar-subnav-header">Level 1</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="multilevel-1.html" title="Level1 Item">-->
                                        <!--<span>Level1 Item</span>-->
                                    <!--</a>-->
                                <!--</li>-->
                                <!--<li class=" ">-->
                                    <!--<a href="#level2" title="Level 2" data-toggle="collapse">-->
                                        <!--<span>Level 2</span>-->
                                    <!--</a>-->
                                    <!--<ul id="level2" class="nav sidebar-subnav collapse">-->
                                        <!--<li class="sidebar-subnav-header">Level 2</li>-->
                                        <!--<li class=" ">-->
                                            <!--<a href="#level3" title="Level 3" data-toggle="collapse">-->
                                                <!--<span>Level 3</span>-->
                                            <!--</a>-->
                                            <!--<ul id="level3" class="nav sidebar-subnav collapse">-->
                                                <!--<li class="sidebar-subnav-header">Level 3</li>-->
                                                <!--<li class=" ">-->
                                                    <!--<a href="multilevel-3.html" title="Level3 Item">-->
                                                        <!--<span>Level3 Item</span>-->
                                                    <!--</a>-->
                                                <!--</li>-->
                                            <!--</ul>-->
                                        <!--</li>-->
                                    <!--</ul>-->
                                <!--</li>-->
                            <!--</ul>-->
                        <!--</li>-->
                    <!--</ul>-->
                <!--</li>-->
                <!--<li class=" ">-->
                    <!--<a href="documentation.html" title="Documentation">-->
                        <!--<em class="icon-graduation"></em>-->
                        <!--<span data-localize="sidebar.nav.DOCUMENTATION">Documentation</span>-->
                    <!--</a>-->
                <!--</li>-->


            </ul>
            <!-- END sidebar nav-->
        </nav>
    </div>
    <!-- END Sidebar (left)-->
</aside>
