<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>User Info Entry Form</title>
</head>
<body bgcolor="white">
<form action="Prac3.jsp" method="post">
Name:
<input type="text" name="userName">
Birth Date:
<input type="text" name="birthDate">
(Use format yyyy-mm-dd)
Email Address:
<input type="text" name="emailAddr">
(Use format name@company.com)
Gender:
<input type="radio" name="gender" value="m"
checked>Male<br>
<input type="radio" name="gender" value="f">Female
Lucky number:
<input type="text" name="luckyNumber">
(A number between 1 and 100)
Favorite Foods:
<input type="checkbox" name="food" value="z">Pizza<br>
<input type="checkbox" name="food" value="p">Pasta<br>
<input type="checkbox" name="food" value="c">Chinese
<input type="submit" value="Send Data">
</form>
You entered:<br>
Name: <c:out value="${param.userName}" /><br>
Birth Date: <c:out value="${param.birthDate}" /><br>
Email Address: <c:out value="${param.emailAddr}" /><br>
Gender: <c:out value="${param.gender}" /><br>
Lucky Number: <c:out value="${param.luckyNumber}" /><br>
Favorite Food:
<c:forEach items="${paramValues.food}" var="current">
<c:out value="${current}" />&nbsp;
</c:forEach>
</body>
</html>