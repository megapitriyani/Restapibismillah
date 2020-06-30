<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop3 d-none d-lg-block">
            <div class="section__content section__content--p35">
                <div class="header3-wrap">
                    <div class="header__logo">
                        <a href="#">
                            <img src="<?= base_url('assets/'); ?>images/icon/logo-white.png" alt="" />
                        </a>
                    </div>
                    <div class="header__navbar">
                        <ul class="list-unstyled">
                            <li class="has-sub">
                                <a href="http://localhost/bismillah/user ">
                                    <i class="fas fa-home"></i>Home
                                    <span class="bot-line"></span> </a>
                            </li>
                            <li>
                                <a href="http://localhost/bismillah/user/token">
                                    <i class="fas fa-desktop"></i>
                                    <span class="bot-line"></span>Token</a>
                            </li>
                            <li>
                                <a href="http://localhost/bismillah/user/rest_client">
                                    <i class="fas fa-group"></i>
                                    <span class="bot-line"></span>Rest Client</a>
                            </li>
                        </ul>
                    </div>
                    <div class="header__tool">
                        <div class="header-button-item has-noti js-item-menu">
                            <div class="account-wrap">
                                <div class="account-item account-item--style2 clearfix js-item-menu">
                                    <div class="image">
                                        <i class="fa fa-users" aria-hidden="true"></i>
                                    </div>
                                    <div class="account-dropdown js-dropdown">
                                        <div class="info clearfix">
                                            <div class="image">
                                                <a href="#">
                                                    <i class="fa fa-users" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h5 class="name">
                                                    <a href="#"><?= $user['name']; ?></a>
                                                </h5>
                                                <span class="email"><?= $user['email']; ?></span>
                                            </div>
                                        </div>
                                        <!-- <div class="account-dropdown__body"></div> -->
                                        <div class="account-dropdown__footer">
                                            <a href="<?= base_url('auth/logout'); ?>">
                                                <i class="zmdi zmdi-power"></i>Logout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </header>
        <!-- END HEADER DESKTOP-->