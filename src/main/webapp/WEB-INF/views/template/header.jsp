<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
                <div class="col-lg-6 text-right menu-right">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="#" class="search-btn"><i class="icon-search"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-heart-o"></i>Wishlist</a></li>
                        <li class="list-inline-item"><a href="<spring:url value="/login" />"
                                                        class="pr-0 border-right-0"><i
                                class="icon-user-1"></i>Sumbit Product</a>


                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="search-area">
            <div class="search-inner d-flex align-items-center justify-content-center">
                <div class="close-btn">Close<i class="icon-close-round"></i></div>
                <form class="search-form">
                    <div class="form-group">
                        <input type="search" placeholder="What are you searching for...">
                        <button type="submit" class="submit">Search</button>
                    </div>
                </form>
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

                        <li class="list-inline-item"><a href="<spring:url value="/login" />"
                                                        class="btn btn-primary btn-gradient">LOGIN</a></li>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <sec:authorize access="hasRole('ROLE_USER') or hasRole('ROLE_MEMBER')">
                        <li class="list-inline-item"><a href="<spring:url value="/profile" />"
                                                        class="btn btn-primary btn-gradient">${pageContext.request.userPrincipal.name}
                            PROFILE </a>
                            <a href="<spring:url value="/loginpage" />" class="btn btn-primary btn-gradient">Cart <i
                                    class="fa fa-cart-arrow-down"></i></a>
                            <a class="btn btn-primary btn-gradient" onclick="document.forms['logoutForm'].submit()">Logout<i
                                    class="fa fa-window-close"></i></a>

                            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </form>


                        </li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            <li class="list-inline-item"><a href="<spring:url value="/profile" />"
                                                            class="btn btn-primary btn-gradient">Admin Dashboard </a>

                                <a class="btn btn-primary btn-gradient" onclick="document.forms['logoutForm'].submit()">Logout<i
                                        class="fa fa-window-close"></i></a>

                                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </form>


                            </li>
                        </sec:authorize>
                    </c:if>


                </ul>
            </div>
        </div>
    </nav>
</header>