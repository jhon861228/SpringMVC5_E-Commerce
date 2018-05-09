<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<section style="padding:2rem 0; " class="property-single bg-black-2">
    <div class="container">

        <header>
            <h1 class="h2 d-flex align-items-center"><span>Cart <i class="fa fa-shopping-cart"></i></span>

            </h1>
            <p class="template-text">Here you can see the products of your cart & proceed to Checkout.</p>
        </header>
        <div class="row">
            <div class="col-md-12">
                <div class="property-single-details bg-black-3 mt-5 block">

                    <div class="row">


                        <table>
                            <tr>
                                <th><h3 style="padding-left: 60px; padding-right: 30px;" class="h4 has-line">
                                    Product </h3></th>
                                <th><h3 style="padding-right: 90px;" class="h4 has-line">Product Name </h3></th>
                                <th><h3 style="padding-right: 90px;" class="h4 has-line">Quantity</h3></th>
                                <th><h3 style="padding-right: 90px;" class="h4 has-line">Price </h3></th>
                                <th><h3 style="padding-right: 90px;" class="h4"></h3></th>
                            </tr>


                            <c:if test="${sessionScope.cart.totalPrice != 0}">
                            <c:forEach items="${sessionScope.cart.cart}" var="cartItem">

                                <tr>
                                    <td>
                                        <div class="col-md-3"><strong>
                                            <div class=" " style="width: 75px;"><img style="border-radius: 30px;"
                                                                                     src="<spring:url value="/getUserImage/${cartItem.product.productId}"/>.do"
                                                                                     alt="..." class="img-fluid"></div>
                                        </strong></div>
                                    </td>
                                    <td><p> ${cartItem.product.productName}</p></td>
                                    <td><p> ${cartItem.itemQuantity}</p></td>
                                    <td><p> ${cartItem.itemQuantity * cartItem.product.productPrice}</p></td>
                                    <td><i style="font-size:30px; color:darkgray;" class="fa fa-trash"></i> <a
                                            href="/deletecartitem/${cartItem.product.productId}">
                                        <button class="btn btn-gradient col-md-12">Remove(1)</button>
                                    </a></td>

                                </tr>
                            </c:forEach>
                        </table>
                        </c:if>

                        <c:if test="${sessionScope.cart.totalPrice == 0}">

                            <h2 style="margin-bottom: 30%;">Hmm..It Seems like Your Cart is Empty</h2>

                        </c:if>

                        <h2 style="float: right; padding-top: 10%;"><i class="fa fa-money" aria-hidden="true"></i> Total
                            Price: ${sessionScope.cart.totalPrice}</h2>

                    </div>
                </div>

            </div>
        </div>
    </div>

</section>


<%@include file="/WEB-INF/views/template/footer.jsp" %>