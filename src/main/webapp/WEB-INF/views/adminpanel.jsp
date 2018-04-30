<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AfDemp Cooperation - DimouJohn</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->

    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
    <!-- Fontastic-->
    <link href="<c:url value="/resources/css/fontastic.css" />" rel="stylesheet">

    <!-- Bootstrap Select-->
    <link href="<c:url value="/resources/vendor/bootstrap-select/css/bootstrap-select.css" />" rel="stylesheet">

    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700">
    <!-- swiper carousel-->
    <link href="<c:url value="/resources/vendor/swiper/css/swiper.css" />" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Gallery-->

    <link href="<c:url value="/resources/css/gallery.css" />" rel="stylesheet">
    <!-- theme stylesheet-->
    <link href="<c:url value="/resources/css/style.default.css" />" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes-->
    <link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet">

    <!-- Favicon-->
    <link href="<c:url value="/resources/img/favicon.ico" />" rel="shortcut icon">

    <!-- Modernizr-->
    <script src="js/modernizr.custom.js"></script>
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<!-- navbar-->
<header class="header">
    <!-- Top Bar    -->
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-none d-lg-block menu-left">
                    <ul class="list-inline">

                        <li class="list-inline-item"><a href="#">Payment</a></li>

                        <li class="list-inline-item"><a href="#">Contact Us</a></li>
                    </ul>
                </div>

            </div>
        </div>

    </div>
    <!-- Navbar-->
    <nav class="navbar navbar-expand-lg">
        <div class="container"><a href="<spring:url value="/" /> class=" navbar-brand"><img
                src="<c:url value="/resources/img/logo.png" />" alt="..." width="180"
                class="img-fluid"></a>
            <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                    class="navbar-toggler navbar-toggler-right"><span></span><span></span><span></span></button>
            <div id="navbarSupportedContent" class="collapse navbar-collapse">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item active"><a href="/" class="nav-link">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                    <li class="nav-item"><a href="<spring:url value="/productlist" />" class="nav-link">PRODUCTS</a>
                    </li>

                    <li class="nav-item"><a href="agents.html" class="nav-link">Contact</a></li>

                </ul>


                <ul class="secondary-nav-menu list-inline ml-auto mb-0">

                    <c:if test="${pageContext.request.userPrincipal.name == null}">

                        <li class="list-inline-item"><a href="<spring:url value="/loginpage" />"
                                                        class="btn btn-primary btn-gradient">LOGIN</a></li>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name != null}">

                        <li class="list-inline-item"><a href="<spring:url value="/profile" />"
                                                        class="btn btn-primary btn-gradient" style="color:white;">Admin Panel</a>

                            <a style="color:white;" class="btn btn-primary btn-gradient" onclick="document.forms['logoutForm'].submit()">Logout<i
                                    class="fa fa-window-close"></i></a>

                            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </form>


                        </li>

                    </c:if>

                </ul>
            </div>
        </div>
    </nav>
</header>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dark Bootstrap Admin by Bootstrapious.com</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link href="<c:url value="/resources/vendor/bootstrap/css/style.default.css" />" rel="stylesheet">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="css/font.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>

<div class="d-flex align-items-stretch">
    <!-- Sidebar Navigation-->
    <nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="https://i.pinimg.com/originals/47/7d/1e/477d1e8f71d9bb3720831d667faaa795.jpg"
                                     alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
                <h1 class="h5">ADMINISTRATOR</h1>
                <p>AFDEMP Cooperation Admin</p>
            </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
        <ul class="list-unstyled">
            <li class="active"><a href="/adminpanel"> <i class="icon-home"></i>Dashboard</a></li>
            <li><a href="productInventory.jsp"> <i class="icon-grid"></i>Product Inventory</a></li>


    </nav>
    <!-- Sidebar Navigation end-->
    <div class="page-content">
        <div class="page-header">
            <div class="container-fluid">
                <h2 class="h5 no-margin-bottom">Dashboard</h2>
            </div>
        </div>
        <section class="no-padding-top no-padding-bottom">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="statistic-block block">
                            <div class="progress-details d-flex align-items-end justify-content-between">
                                <div class="title">
                                    <div class="icon"><i class="icon-user-1"></i></div>
                                    <strong>New Clients</strong>
                                </div>
                                <div class="number dashtext-1">27</div>
                            </div>
                            <div class="progress progress-template">
                                <div role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0"
                                     aria-valuemax="100" class="progress-bar progress-bar-template dashbg-1"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="statistic-block block">
                            <div class="progress-details d-flex align-items-end justify-content-between">
                                <div class="title">
                                    <div class="icon"><i class="icon-contract"></i></div>
                                    <strong>New Projects</strong>
                                </div>
                                <div class="number dashtext-2">375</div>
                            </div>
                            <div class="progress progress-template">
                                <div role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0"
                                     aria-valuemax="100" class="progress-bar progress-bar-template dashbg-2"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="statistic-block block">
                            <div class="progress-details d-flex align-items-end justify-content-between">
                                <div class="title">
                                    <div class="icon"><i class="icon-paper-and-pencil"></i></div>
                                    <strong>New Invoices</strong>
                                </div>
                                <div class="number dashtext-3">140</div>
                            </div>
                            <div class="progress progress-template">
                                <div role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0"
                                     aria-valuemax="100" class="progress-bar progress-bar-template dashbg-3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="statistic-block block">
                            <div class="progress-details d-flex align-items-end justify-content-between">
                                <div class="title">
                                    <div class="icon"><i class="icon-writing-whiteboard"></i></div>
                                    <strong>All Projects</strong>
                                </div>
                                <div class="number dashtext-4">41</div>
                            </div>
                            <div class="progress progress-template">
                                <div role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0"
                                     aria-valuemax="100" class="progress-bar progress-bar-template dashbg-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="margin-bottom-sm">
            <div class="container-fluid">
                <div class="row d-flex align-items-stretch">
                    <div class="col-lg-4">
                        <div class="stats-with-chart-1 block">
                            <div class="title"><strong class="d-block">Sales Difference</strong><span class="d-block">Lorem ipsum dolor sit</span>
                            </div>
                            <div class="row d-flex align-items-end justify-content-between">
                                <div class="col-5">
                                    <div class="text"><strong class="d-block dashtext-3">$740</strong><span
                                            class="d-block">May 2017</span>
                                        <small class="d-block">320 Sales</small>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <div class="bar-chart chart">
                                        <canvas id="salesBarChart1"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="stats-with-chart-1 block">
                            <div class="title"><strong class="d-block">Visit Statistics</strong><span class="d-block">Lorem ipsum dolor sit</span>
                            </div>
                            <div class="row d-flex align-items-end justify-content-between">
                                <div class="col-4">
                                    <div class="text"><strong class="d-block dashtext-1">$457</strong><span
                                            class="d-block">May 2017</span>
                                        <small class="d-block">210 Sales</small>
                                    </div>
                                </div>
                                <div class="col-8">
                                    <div class="bar-chart chart">
                                        <canvas id="visitPieChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="stats-with-chart-1 block">
                            <div class="title"><strong class="d-block">Sales Activities</strong><span class="d-block">Lorem ipsum dolor sit</span>
                            </div>
                            <div class="row d-flex align-items-end justify-content-between">
                                <div class="col-5">
                                    <div class="text"><strong class="d-block dashtext-2">80%</strong><span
                                            class="d-block">May 2017</span>
                                        <small class="d-block">+35 Sales</small>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <div class="bar-chart chart">
                                        <canvas id="salesBarChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="stats-with-chart-2 block">
                            <div class="title"><strong class="d-block">Credit Sales</strong><span class="d-block">Lorem ipsum dolor sit</span>
                            </div>
                            <div class="piechart chart">
                                <canvas id="pieChartHome1"></canvas>
                                <div class="text"><strong class="d-block">$2.145</strong><span
                                        class="d-block">Sales</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="stats-with-chart-2 block">
                            <div class="title"><strong class="d-block">Channel Sales</strong><span class="d-block">Lorem ipsum dolor sit</span>
                            </div>
                            <div class="piechart chart">
                                <canvas id="pieChartHome2"></canvas>
                                <div class="text"><strong class="d-block">$7.784</strong><span
                                        class="d-block">Sales</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="stats-with-chart-2 block">
                            <div class="title"><strong class="d-block">Direct Sales</strong><span class="d-block">Lorem ipsum dolor sit</span>
                            </div>
                            <div class="piechart chart">
                                <canvas id="pieChartHome3"></canvas>
                                <div class="text"><strong class="d-block">$4.957</strong><span
                                        class="d-block">Sales</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
</body>

</body>
<div id="scrollTopButton"><i class="fa fa-long-arrow-up"></i></div>
<br>
<footer style="padding:20px 0 0;" class="footer bg-black-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 brief">
                <div class="logo"><img src="<c:url value="/resources/img/logo.png" />" alt="..." width="170"></div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna </p>
                <ul class="social list-inline">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-instagram"></i></a></li>
                </ul>
            </div>
            <div class="col-lg-2 links">
                <h3 class="h4 text-thin text-uppercase">Company</h3>
                <ul class="list-unstyled">
                    <li><a href="#">Properties</a></li>
                    <li><a href="#">Landlords</a></li>
                    <li><a href="#">Renters</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Pricing</a></li>
                </ul>
            </div>
            <div class="col-lg-2 links">
                <h3 class="h4 text-thin text-uppercase">Support</h3>
                <ul class="list-unstyled">
                    <li><a href="#">Help & FAQ</a></li>
                    <li><a href="#">Policy Privacy</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Our Partners</a></li>
                </ul>
            </div>
            <div class="col-lg-4 newsletter">
                <h3 class="h4 text-thin text-uppercase">Newsletter</h3>
                <p>p Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna</p>
                <form class="newsletter-form">
                    <div class="form-group">
                        <input type="email" name="email" placeholder="Enter your email address" class="form-control">
                        <button type="submit" class="btn btn-gradient submit"><i class="icon-email-plane"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div style="margin-top:0px;" class="copyrights bg-black-6">
        <div class="container text-center">
            <p>&copy; Copyrights 2018 Dimou John</a></p>
        </div>
    </div>
</footer>
<!-- Javascript files-->

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="<c:url value="/resources/vendor/popper.js/umd/popper.min.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap-select/js/bootstrap-select.js" />"></script>
<script src="<c:url value="/resources/vendor/jquery.cookie/jquery.cookie.js" />"></script>
<script src="<c:url value="/resources/vendor/swiper/js/swiper.js" />"></script>
<script src="<c:url value="/resources/js/front.js" />"></script>
<script src="<c:url value="/resources/js/charts-custom.js" />"></script>
<script src="<c:url value="/resources/js/charts-home.js" />"></script>
<script src="<c:url value="/resources/vendor/swiper/js/swiper.js" />"></script>
<script src="<c:url value="/resources/js/front.js" />"></script>
<script src="<c:url value="/resources/js/charts-custom.js" />"></script>
<script src="http://www.chartjs.org/dist/2.7.2/Chart.bundle.js"></script>

<html>