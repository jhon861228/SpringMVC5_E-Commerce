<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>




<c:forEach var="item" items="${sessionScope.cart}">


        <li>${item.productName}</li>
        <li>${product.unitPrice}</li>

</c:forEach>






<%@include file="/WEB-INF/views/template/footer.jsp" %>