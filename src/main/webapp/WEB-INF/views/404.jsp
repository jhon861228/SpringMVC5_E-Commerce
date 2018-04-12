<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>






<section class="bg-black-3 error-page">
    <div class="container text-center">
        <div class="error-page-holder d-flex align-items-center justify-content-center">
            <div class="error-page-inner">
                <h1>404 </h1>
                <p class="template-text">The page you were looking for is not here any more.</p><a href="index.html" class="btn btn-gradient">Return Home</a><img src="img/error-404.svg" alt="..." class="img-fluid mt-5">
            </div>
        </div>
    </div>
</section>





<%@include file="/WEB-INF/views/template/footer.jsp" %>
