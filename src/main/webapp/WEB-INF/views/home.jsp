<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<!-- Hero Section-->
<section class="hero-section bg-black-3">
    <div class="swiper-container hero-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div style="background: url(<c:url value="/resources/img/shopping.jpg" />);" class="hero-content has-overlay-dark">
                    <div class="container col-md-12">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 style="text-align: center;">Be Part of the "AFDemp Cooperation Today</h1>
                                <p class="template-text" style="text-align: center;">Welcome to the AFDemp Cooperation .<br> Here you Can Buy Products and Goods Or Sell Them And Be A Part Of Our Team.</p><a href="#" class="btn btn-gradient col-md-12">JOIN TODAY</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <hr><hr>



        <section class="new-properties bg-black-3">
            <div class="container">
                <header class="text-center">
                    <h2>Products <span class="text-primary">for sale</span></h2>
                    <div class="row">
                        <p class="template-text col-lg-8 mx-auto">Take A Look at Our Stunning Products and Buy Yours Today or Save it in your Wishlist.</p>
                    </div>
                </header>
                <div class="row">

<c:forEach items="${products}"
           var="product"
           begin="0"
           end="2"
           step="1"
>
                    <div class="col-lg-4">
                        <div class="property mb-5 mb-lg-0">
                            <div class="image"><img src="<spring:url value="/getUserImage/${product.productId}" />.do" class="img-fluid">
                                <div class="overlay d-flex align-items-center justify-content-center"><a href="<spring:url value="/viewProduct/${product.productId}" />" class="btn btn-gradient btn-sm">View Details</a></div>
                            </div>
                            <div class="info"><a href="<spring:url value="/viewProduct/${product.productId}" />" class="no-anchor-style">
                                <h3 class="h4 text-thin text-uppercase mb-1">${product.productName}</h3></a>
                                <ul class="tags list-inline">
                                    <li class="list-inline-item"><a href="#">${product.productCategory}</a></li>

                                </ul>
                                <div class="price text-primary"><strong class="mr-1">${product.productPrice} $</strong></div>
                            </div>

                        </div>
                    </div>
</c:forEach>

                </div>
            </div>
    </div>
    </div>
</section>


<!-- About Section-->

<section class="about pt-0 bg-black-3">
    <div class="container">
        <div class="row d-flex align-items-stretch">
            <div class="col-lg-6 pr-lg-0">
                <div class="image"><img src="<c:url value="/resources/img/about-img.jpeg" />" alt="..." class="img-fluid"></div>
            </div>
            <div class="col-lg-6 pl-lg-0">
                <div class="text d-flex align-items-center">
                    <div class="text-inner"><strong>About Us</strong>
                        <h3 class="text-transform text-thin text-uppercase has-line">Who are we</h3>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti. </p>
                        <p>Ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti. </p><a href="#" class="btn btn-gradient">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/WEB-INF/views/template/footer.jsp" %>