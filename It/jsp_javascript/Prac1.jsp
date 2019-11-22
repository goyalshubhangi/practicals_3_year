<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%  
           String n =  request.getParameter("n");
           out.print("Input Given: "+n+"<br>");
           out.print("<br>Using Scriplet Tags: <br>");
           for(int i=1;i<=Integer.parseInt(n);i++)
           {
               for(int j=1;j<=i;j++)
                   out.print(j+" ");
               out.print("<br>");
           }
           out.print("<br>Using 'c:forEach' loop: <br>");
        %>
        <c:forEach var = "i" begin = "1" end ="${param.n}">
            <c:forEach var = "j" begin = "1" end ="${i}">
                ${j}
            </c:forEach>
         <br>
        </c:forEach>
    </body>
</html>
© 2019 GitHub, Inc.
Terms
Privacy
Se