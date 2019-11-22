<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Program 10</title>
	</head>
	<body>
        <c:out value="${param.uname}" />
        <form method="post" action="product.jsp">
        Product 1:<input type="checkbox" id="chk1" name="chk"/>
        Product 2:<input type="checkbox" id="chk2" name="chk"/>				    
        Product 3:<input type="checkbox" id="chk3" name="chk" />
 	<button type="submit" name="action" value="true">Submit
	</form>
        <c:if test="${ param.action }">
                <c:set var = "product" value="${param.chk}" scope="session" />
                <jsp:forward page="product.jsp" />
        </c:if>
	</body>

</html>