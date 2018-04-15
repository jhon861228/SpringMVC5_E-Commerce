<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<!-- Hero Section-->
<section class="hero-page bg-black-3">
    <div class="container">
        <h1 class="h2">Login Portal</h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li aria-current="page" class="breadcrumb-item active">AFDEMP Login</li>
            </ol>
        </nav>
    </div>
</section>
<section class="customer-login bg-black-2 col-md-12">
    <div class="container">
        <div class="col-md-12">
            <div class="col-md-12">
                <h2 class="has-line">Select Your Account Type</h2>
                <h4 class="text-thin">Not Registered? <a href=""><B>JOIN NOW</B></a></h4>
                <p style="text-align: center;">Welcome to the LOGIN PORTAL <BR>Select Your Account Type To Procceed Or
                    Select "JOIN" If you Are Not Registered Yet</p>
                <hr>

                <div class="form-group">
                    <button onclick="location.href = 'http://google.gr';" class="btn btn-gradient col-md-12">USER /
                        CLIENT
                    </button>
                </div>

                <div class="form-group">
                    <button onclick="location.href = 'http://google.gr';" class="btn btn-gradient col-md-12">MEMBER OF
                        AFDEMP COOPERATION
                    </button>
                </div>

                <div class="form-group">
                    <button onclick="location.href = '<spring:url value="/login" />';" class="btn btn-gradient col-md-12">
                        ADMINISTRATOR
                    </button>
                </div>

            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/views/template/footer.jsp" %>