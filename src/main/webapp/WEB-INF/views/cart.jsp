<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%--<%@include file="/WEB-INF/views/template/header.jsp" %>--%>

<%--<div class="container-wrapper">--%>
        <%--<div class="container">--%>
                <%--<section>--%>
                        <%--<div class="jumbotron">--%>
                                <%--<div class="container">--%>
                                        <%--<h1>Cart</h1>--%>

                                        <%--<p>All the selected products in your shopping cart</p>--%>
                                <%--</div>--%>
                        <%--</div>--%>
                <%--</section>--%>

                <%--<section class="container" ng-app="cartApp">--%>
                        <%--<div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">--%>
                                <%--<div>--%>
                                        <%--<a class="btn btn-danger pull-left" ng-click="clearCart()"><span--%>
                                                <%--class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>--%>
                                <%--</div>--%>

                                <%--<table class="table table-hover">--%>
                                        <%--<tr>--%>
                                                <%--<th>Product</th>--%>
                                                <%--<th>Unit Price</th>--%>
                                                <%--<th>Quantity</th>--%>
                                                <%--<th>Price</th>--%>
                                                <%--<th>Action</th>--%>
                                        <%--</tr>--%>

                                        <%--<c:forEach var="items" items="${sessionScope.cart}">--%>

<%--\--%>


                                        <%--<tr ng-repeat = "item in cart.cartItems">--%>
                                                <%--<td>${item.productName}</td>--%>
                                                <%--<td>${item.productPrice}</td>--%>
                                                <%--<td>${item.productDescription}</td>--%>
                                                <%--<td>${item.productPrice}</td>--%>
                                                <%--<td><a href="/deletecartitem/${item.productId}" class="label label-danger" >--%>
                                                        <%--<span class="glyphicon glyphicon-remove"></span>remove</a></td>--%>
                                        <%--</tr>--%>
                                        <%--</c:forEach>--%>
                                        <%--<tr>--%>
                                                <%--<th></th>--%>
                                                <%--<th></th>--%>
                                                <%--<th>Grand Total</th>--%>
                                                <%--<th>{{calGrandTotal()}}</th>--%>
                                                <%--<th></th>--%>
                                        <%--</tr>--%>
                                <%--</table>--%>

                                <%--<a href="<spring:url value="/productList" />" class="btn btn-default">Continue Shopping</a>--%>
                        <%--</div>--%>
                <%--</section>--%>

        <%--</div>--%>
<%--</div>--%>

<%--<c:forEach var="item" items="${sessionScope.cart}">--%>


        <%--<li>${item.productName}</li>--%>
        <%--<li>${product.unitPrice}</li>--%>

<%--</c:forEach>--%>






<%--<%@include file="/WEB-INF/views/template/footer.jsp" %>--%>