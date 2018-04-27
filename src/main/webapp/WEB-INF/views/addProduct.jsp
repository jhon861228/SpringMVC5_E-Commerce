
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>




<section style="padding:4.5rem 0;" class="customer-login bg-black-2">
    <div class="container" style="padding:3rem ,0;">
        <div class="row">
            <div class="col-md-12">
                <h2 class="has-line">Create your Account</h2>
                <h4 class="text-thin">Join The AfDemp Cooperation Today!</h4>

                <p></p>
                <hr>
                <form:form method="POST" modelAttribute="product" class="form-signin" >

                    <spring:bind path="productName">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="text" path="productName" class="form-control" placeholder="Username"
                                        autofocus="true"></form:input>
                            <form:errors path="productName"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="productCategory">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="text" path="productName" class="form-control" placeholder="Category"
                                        autofocus="true"></form:input>
                            <form:errors path="productCategory"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="">
                    <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="" path="pic" class="form-control" placeholder="pic"
                                    autofocus="true"></form:input>
                        <form:errors path="productCategory"></form:errors>
                    </div>
                </spring:bind>






                    <button class="col-md-12 btn btn-primary btn-gradient" type="submit">Submit</button>
                </form:form>
            </div>

        </div>
    </div>
</section>
<%@include file="/WEB-INF/views/template/footer.jsp" %>


<%@include file="/WEB-INF/views/template/footer.jsp" %>