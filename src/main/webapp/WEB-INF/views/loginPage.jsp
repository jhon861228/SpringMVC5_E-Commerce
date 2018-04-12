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
                <p style="text-align: center;">Welcome to the LOGIN PORTAL <BR>Select Your Account Type To Procceed Or Select "JOIN" If you Are Not Registered Yet</p>
                <hr>

                <div class="form-group">
                    <button onclick="location.href = 'http://google.gr';"  class="btn btn-gradient col-md-12">USER / CLIENT</button>
                </div>

                <div class="form-group">
                    <button onclick="location.href = 'http://google.gr';"  class="btn btn-gradient col-md-12">MEMBER OF AFDEMP COOPERATION</button>
                </div>

                <div class="form-group">
                    <button onclick="location.href = 'http://google.gr';"  class="btn btn-gradient col-md-12">ADMINISTRATOR</button>
                </div>

            </div>
        </div>
    </div>
</section>

<footer class="footer bg-black-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 brief">
                <div class="logo"><img src="img/logo-light.svg" alt="..." width="170"></div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna </p>
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
                <p>p Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna</p>
                <form class="newsletter-form">
                    <div class="form-group">
                        <input type="email" name="email" placeholder="Enter your email address" class="form-control">
                        <button type="submit" class="btn btn-gradient submit"><i class="icon-email-plane"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>