<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body bgcolor="white">
    <form action="Prac4.jsp" method="post">
        Name:<input type="text" name="name">
        <input type="submit" name="submit" value"Enter data">
    </form>
<jsp:useBean id="clock" class="java.util.Date" />
<c:choose>
<c:when test="${clock.hours < 12}">
   <c:out value="(${param.name}" /><br>
</c:when>
<c:when test="${clock.hours < 18}">
    Good day!<c:out value="${param.name}" /><br>
</c:when>
<c:otherwise>
    Good evening!<c:out value="${param.name}" /><br>
</c:otherwise>
</c:choose>
</body>
</html>