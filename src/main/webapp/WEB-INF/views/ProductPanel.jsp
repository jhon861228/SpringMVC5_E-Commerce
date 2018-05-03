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
            <li ><a href="<c:url value="/admin/adminPanel" />"> <i class="icon-home"></i>Dashboard</a></li>
            <li class="active"><a href="<c:url value="/admin/productInventory" />"> <i class="fa fa-cogs"></i>Product Inventory</a></li>


    </nav>
    <!-- Sidebar Navigation end-->
    <div class="page-content">
        <div class="page-header">
            <div class="container-fluid">
                <h2 class="h5 no-margin-bottom">Product Configuration Panel</h2>
            </div>
        </div>
        <section class="no-padding-top no-padding-bottom">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <div class="statistic-block block">
                            <div class="progress-details d-flex align-items-end justify-content-between">
                                <div class="title has-line">

                                    <strong>ADD PRODUCT</strong>
                                </div>
                                <a href="/addProduct" onMouseOver="this.style.color='#0F0'"
                                   onMouseOut="this.style.color='#00F'"  ><div style="font-size:40px;" class="icon"><i class="fa fa-plus-square"></i></div></a>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="statistic-block block">
                            <div class="progress-details d-flex align-items-end justify-content-between">
                                <div class="title has-line">

                                    <strong>DELETE PRODUCT</strong>
                                </div>
                               <a href="/admin/deleteProduct/"><div style="font-size:40px;" class="icon"><i class="fa fa-minus-square"></i></div></a>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="statistic-block block">
                            <div class="progress-details d-flex align-items-end justify-content-between">
                                <div class="title has-line">

                                    <strong class="">EDIT PRODUCT</strong>
                                </div>
                                <a href="/productlist"><div style="font-size:40px;" class="icon"><i class="fa fa-edit"></i></div></a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </section>



        <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="stats-with-chart-2 block">
                            <div class="title"><strong class="d-block">LIVE PRODUCTS MANAGER</strong><span class="d-block">Set Or Unset Products As Live</span>
                            </div>

                        </div>
                        <section class="property-grid-sidebar">
                            <div class="container">


                                <div class="row">
                                    <!-- Property Listings-->
                                    <div class="property-listing col-lg-12">
                                        <div class="row">
                                            <c:forEach items="${products}" var="product">
                                                <div class="col-lg-4">
                                                    <div class="property-listing-item">
                                                        <div class="image"><img
                                                                src="<spring:url value="/getUserImage/${product.productId}" />.do"
                                                                alt=" The Chalet Estate"
                                                                class="img-fluid">
                                                            <div class="price">${product.productStatus} </div>
                                                        </div>
                                                        <%--<div class="info">--%>
                                                            <%--<div class="badge badge-primary">${product.productStatus}</div>--%>
                                                            <%--<a href="<spring:url value="/viewProduct/${product.productId}" />"--%>
                                                               <%--class="no-anchor-style">--%>
                                                                <%--<h2 class="h3 text-thin">${product.productName}</h2></a>--%>
                                                            <%--<p class="address">${product.productDescription}</p>--%>
                                                        <%--</div>--%>
                                                        <div class=" align-items-center justify-content-between">
                                                            <div class="left">Product Name: <span class="area"></span>
                                                                <b>${product.productName}</b></div>
                                                            <div class="right">
                                                                <div class="form-group">

                                                                            <c:set var="myVar" value="Live"/>

                                                                               <c:if test="${product.productStatus == myVar}">

                                                                    <button style="background-color: firebrick; color: white;" class="btn col-md-12">Set Inactive</button>
                                                                            </c:if>
                                                                    <c:if test="${product.productStatus != myVar}">

                                                                       <a href="<spring:url value="/admin/setProductLive/${product.productId}" />.do"><button style="background-color: #4cae4c; color:white;" class="btn  col-md-12">Set Active</button></a>

                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>


                                            </c:forEach>


                                        </div>
                                    </div>
                                </div>
                                <div class="property-listing-footer">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="left mt-5">
                                            <p class="mb-0">Showing <span class="text-primary">1 </span> of <span class="text-primary">6 </span>
                                            </p>
                                        </div>
                                        <div class="right mt-5">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination m-0">
                                                    <li class="page-item"><a href="#" aria-label="Previous" class="page-link"><span
                                                            aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
                                                    <li class="page-item"><a href="#" class="page-link active">1</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                                                    <li class="page-item"><a href="#" aria-label="Next" class="page-link"><span
                                                            aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </div>
                </div>
        </section>


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