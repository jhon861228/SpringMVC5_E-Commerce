
    <%--<form method="POST" action="${contextPath}/login" class="form-signin">--%>
        <%--<h2 class="form-heading">Log in</h2>--%>

        <%--<div class="form-group ${error != null ? 'has-error' : ''}">--%>
            <%--<span>${message}</span>--%>
            <%--<input name="username" type="text" class="form-control" placeholder="Username"--%>
                   <%--autofocus="true"/>--%>
            <%--<input name="password" type="password" class="form-control" placeholder="Password"/>--%>
            <%--<span>${error}</span>--%>
            <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>

            <%--<button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>--%>
            <%--<h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>--%>
        <%--</div>--%>

    <%--</form>--%>


    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@include file="/WEB-INF/views/template/header.jsp" %>


    <section class="customer-login bg-black-2">
        <div class="container" style="padding:3rem ,0;">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="has-line">User Login Portal</h2>
                    <h4 class="text-thin">Welcome Back ! Nice to See You Again.</h4>
                    <p></p>
                    <hr>
                    <form method="POST" action="${contextPath}/login" class="form-signin">


                        <div style="color: whitesmoke;" class="form-group ${error != null ? 'has-error' : ''}">
                            <span STYLE="color:whitesmoke;">${message}</span>
                            <input name="username" style="MARGIN-BOTTOM:30PX;" type="text" class="form-control" placeholder="Username"
                                   autofocus="true"/>
                            <input name="password" type="password" class="form-control" placeholder="Password"/>
                            <span>${error}</span>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                            <button class="col-md-12 btn btn-primary btn-gradient" type="submit">Log In</button>
                            <p STYLE="padding-top: 20px;" class="text-center"><a href="${contextPath}/registration">Not Registered? JOIN NOW</a></p>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </section>
    <%@include file="/WEB-INF/views/template/footer.jsp" %>