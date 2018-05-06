<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<section style="padding:4.5rem 0;" class="customer-login bg-black-2">
    <div class="container" style="padding:3rem ,0;">
        <div class="row">
            <div class="col-md-12">
                <h2 class="has-line">Submit a Product For Sale.</h2>
                <h4 class="text-thin">Submit your by filling the form below.</h4>

                <p></p>
                <hr>
                <form:form action="${pageContext.request.contextPath}/editProduct" method="POST"
                           modelAttribute="product" class="form-signin" enctype="multipart/form-data">
                    <form:hidden path="productId" value="${product.productId}"/>

                    <spring:bind path="productName">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="text" path="productName" class="form-control"
                                        value="${product.productName}" autofocus="true"></form:input>
                            <form:errors path="productName"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="productCategory">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="text" path="productCategory" class="form-control"
                                        value="${product.productCategory}"
                                        autofocus="true"></form:input>
                            <form:errors path="productCategory"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="productDescription">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="text" path="productDescription" class="form-control"
                                        value="${product.productDescription}"
                                        autofocus="true"></form:input>
                            <form:errors path="productDescription"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="productPrice">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="number" path="productPrice" class="form-control"
                                        value="${product.productPrice}"
                                        autofocus="true"></form:input>
                            <form:errors path="productPrice"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="unitInStock">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="number" path="unitInStock" class="form-control"
                                        value="${product.unitInStock}"
                                        autofocus="true"></form:input>
                            <form:errors path="unitInStock"></form:errors>
                        </div>
                    </spring:bind>


                    <td><p>Product Image:</p></td>
                    <td><input class="col-md-12 btn btn-primary btn-gradient" type="file" name="fileUpload" size="90"/>
                    </td>
                    <br><br><br>


                    <button class="col-md-12 btn btn-primary btn-gradient" type="submit">Submit</button>
                </form:form>
            </div>

        </div>
    </div>
</section>
<%@include file="/WEB-INF/views/template/footer.jsp" %>


<%@include file="/WEB-INF/views/template/footer.jsp" %>