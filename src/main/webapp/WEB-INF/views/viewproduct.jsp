<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<!-- Property Single Section-->
<section class="property-single bg-black-2 col-md-12">
    <div class="container">
        <nav aria-label="breadcrumb" class="col-md-12">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="property.html">Products</a></li>
                <li aria-current="page" class="breadcrumb-item active">${product.productId}</li>
            </ol>
        </nav>
        <header>
            <h1 class="h2 d-flex align-items-center"><span>Wallpaper22</span>
                <div class="badge badge-primary">LIVE</div>
            </h1>
            <p class="template-text">AnewCategory</p>
        </header>
        <div class="row">

            <!-- Image Slider -->
            <div class="col-md-6 col-sm-6 swiper-container gallery-top">
                <div class="swiper-wrapper col-md-12 col-sm-12">
                    <div style="background: url(<spring:url
                            value="/getUserImage/${product.productId}"/>.do); background-size: cover;"
                         class="swiper-slide"></div>

                </div>
            </div>
            <div class="property-single-description bg-black-3 col-md-6 col-sm-6 block">
                <h3 class="h4 has-line">Product Description </h3>
                <p>${product.productDescription}</p>

                <div class="property-single-details bg-black-3 mt-5 block">
                    <h3 class="h4 has-line col-md-12">Product Details</h3>
                    <div class="row col-md-12">
                        <div class="col-lg-3"><strong> 6723</strong><span>${product.unitInStock}</span></div>
                        <div class="col-lg-3"><strong>Type of location</strong><span>Apartment</span></div>
                        <div class="col-lg-3"><strong>Property status</strong><span>${product.productStatus}</span>
                        </div>
                        <div class="col-lg-3"><strong>821.0</strong><span>$${product.productPrice}</span></div>

                        <div class="col-md-6">
                            <br>

                            <div class="agent-contact col-md-12">
                                <form action="#" class="agent-contact-form">

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-gradient">ADD TO CART
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <!-- Property Details-->


</section>
<!-- Similar Properties Section-->
<section class="similar-properties bg-black-3">
    <div class="container">
        <div class="container">
            <header>
                <h2>Similar Products</h2>
                <p class="template-text">Checkout out some Similar Products</p>
            </header>
            <div class="row">

                <div class="col-lg-4">
                    <div class="property mb-5 mb-lg-0">
                        <div class="image"><img src="img/property-3.jpeg" alt="Condo with pool view" class="img-fluid">
                            <div class="overlay d-flex align-items-center justify-content-center"><a href="#"
                                                                                                     class="btn btn-gradient btn-sm">View
                                Details</a></div>
                        </div>
                        <div class="info"><a href="property-single.html" class="no-anchor-style">
                            <h3 class="h4 text-thin text-uppercase mb-1">Condo with pool view</h3></a>
                            <ul class="tags list-inline">
                                <li class="list-inline-item"><a href="#">Embarcadero,</a></li>
                                <li class="list-inline-item"><a href="#">San Francisco</a></li>
                            </ul>
                            <div class="price text-primary"><strong class="mr-1">$800</strong>
                                <small>/ Month</small>
                            </div>
                        </div>
                        <div class="statistics d-flex justify-content-between text-center">
                            <div class="item"><strong class="d-block">4</strong><span>Bedrooms</span></div>
                            <div class="item"><strong class="d-block">2</strong><span>Baths</span></div>
                            <div class="item"><strong class="d-block">120</strong><span>ft<sup>2</sup></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<p></p>


USD</h4>


<%@include file="/WEB-INF/views/template/footer.jsp" %>
