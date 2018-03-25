<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here is the detail information of the product!</p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <td><img style="width:120px; height: auto; " src="http://localhost:8080/eMusicStore/getUserImage/<c:out value="${product.productId}"  />.do"</td>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                       <strong>Manufacturer</strong> : ${product.productId}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${product.productCondition}
                    </p>
                    <h4>${product.productPrice} USD</h4>

                <h2> <a href="http://localhost:8080/eMusicStore/deleteProduct/<c:out value="${product.productId}" />"> DELETE PRODUCTt</a></h2>
                </div>
            </div>
        </div>


                        <a href="<spring:url value="/addProduct" />" class="btn btn-primary">Add Product</a>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
