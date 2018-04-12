<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<section class="property-grid-sidebar bg-black-3">
    <div class="container">
        <h1 class="h2">Products </h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="property.html">Products</a></li>
                <li aria-current="page" class="breadcrumb-item active">Products List</li>
            </ol>
        </nav>

        <div class="row">
            <!-- Property Listings-->
            <div class="property-listing col-lg-12">
                <div class="row">
                    <c:forEach items="${products}" var="product">
                        <div class="col-lg-4">
                            <div class="property-listing-item">
                                <div class="image"><img src="<spring:url value="/getUserImage/${product.productId}" />.do" alt=" The Chalet Estate"
                                                        class="img-fluid">
                                    <div class="price">${product.productPrice} $</div>
                                </div>
                                <div class="info">
                                    <div class="badge badge-primary">${product.productStatus}</div>
                                    <a href="property-single.html" class="no-anchor-style">
                                        <h2 class="h3 text-thin">${product.productName}</h2></a>
                                    <p class="address">${product.productDescription}</p>
                                </div>
                                <div class="footer d-flex align-items-center justify-content-between">
                                    <div class="left">UNITS IN STOCK  : <span class="area"></span> <b>${product.unitInStock}</b></div>
                                    <div class="right">
                                        <div class="form-group">
                                            <button   class="btn btn-gradient col-md-12">Add To Cart</button>
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


<%@include file="/WEB-INF/views/template/footer.jsp" %>