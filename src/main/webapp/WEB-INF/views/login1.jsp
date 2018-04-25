<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!-- Hero Section-->
<section class="hero-page bg-black-3">
    <div class="container">
        <h1 class="h2">User Area</h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li aria-current="page" class="breadcrumb-item active">User Login</li>
            </ol>
        </nav>
    </div>
</section>
<section class="customer-login bg-black-2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="has-line">Login</h2>
                <h4 class="text-thin">Already our user?</h4>
                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit
                    amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                <hr>
                <form method="POST" action="${contextPath}/login" class="form-signin">
                    <div class="form-group">
                        <span>${message}</span>
                        <input type="email" name="email" placeholder="Type your email address" class="form-control">
                    </div>
                    <div class="form-group">

                        <input type="password" name="paddword" placeholder="Password" class="form-control">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-gradient col-md-12">Login</button>
                    </div>
                </form>
            </div>
            <%--//--%>
        </div>
    </div>
</section>
<!-- Clients Section -->
<!-- Clients Section -->
<section class="clients bg-black-4">
    <div class="container">
        <div class="swiper-container clients-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-1.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-2.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-3.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-4.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-5.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-1.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-1.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-2.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-3.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-4.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-5.svg" alt="undefined"></div>
                </div>
                <div class="swiper-slide">
                    <div class="client"><img src="img/logo-1.svg" alt="undefined"></div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/views/template/footer.jsp" %>