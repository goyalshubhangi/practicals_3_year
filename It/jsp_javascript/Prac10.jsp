<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Program 10</title>
	</head>
	<body>
        <form action="product.jsp" method="post">		
	Name:<input  type="text" class="validate" name="name" required>
        <input type="submit" name="action" value="Enter">
        </form>	
	<c:if test="${ param.action }">
	<c:set var = "uname" value="${param.name}" scope="session" />
	<jsp:forward page="product.jsp" />
	</c:if>
	</body>
</html