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
                <form:form method="POST" modelAttribute="userForm" class="form-signin">
                    <select name="accountType" path="accountType">
                        <option value="User">User</option>
                        <option value="Member">Member</option>

                    </select>



                    <spring:bind path="username">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="text" path="username" class="form-control" placeholder="Username"
                                        autofocus="true"></form:input>
                            <form:errors path="username"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="password">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="password" path="password" class="form-control"
                                        placeholder="Password"></form:input>
                            <form:errors path="password"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="passwordConfirm">
                        <div style="color: whitesmoke;" class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="password" path="passwordConfirm" class="form-control"
                                        placeholder="Confirm your password"></form:input>
                            <form:errors path="passwordConfirm"></form:errors>
                        </div>
                    </spring:bind>

                    <button class="col-md-12 btn btn-primary btn-gradient" type="submit">Submit</button>
                </form:form>
            </div>

        </div>
    </div>
</section>
<%@include file="/WEB-INF/views/template/footer.jsp" %>