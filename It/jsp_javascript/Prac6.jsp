<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="all" uri="WEB-INF/tlds/Prac6.tld" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP program6 tutorialsduniya.com</title>
	</head>
	<body>
		<all:hello name="${param.name}"/><br><br>
		<all:choco texture="${param.choc}"/>
	</body>
</html>