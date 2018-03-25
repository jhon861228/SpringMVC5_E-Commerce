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
                    <%--<td><img  src="http://localhost:8080/eMusicStore/getUserImage/<c:out value="${product.productId}"  />.do"</td>--%>
                   <td><img style="width:120px; height: auto; " src="<spring:url value="/getUserImage/${product.productId}" />.do"/></td>

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


                    <h2><a href="<spring:url value="/deleteProduct/${product.productId}" />"
                    >DELETE PRODUCT</a></h2>
                        <h2><a href="<spring:url value="/editProduct/${product.productId}" />"
                    >EDIT PRODUCT</a></h2>
                </div>
            </div>
        </div>




        <%@include file="/WEB-INF/views/template/footer.jsp" %>
