<%-- 
    Document   : Example_1
    Created on : 21 Oct, 2019, 9:58:10 AM
    Author     : Jhanjhi
--%>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" name="viewport">
    <title>First JSP</title>
    <style>
        body{padding:0;margin:0;background-color:black;color:yellow;font-family:'Raleway',serif;}
        h2,p,a{position:absolute;width:100%;text-align:center;}
        h2{top:45%;transform:translateY(-45%);}
        p{top:50%;transform:translateY(-50%);}
        a{top:57.5%;transform:translateY(-57.5%);}
    </style>
</head>
<body>
  <%
    int num = (int)((Math.random())*100);
    if (num > 50) {
  %>
      <h2>You'll have a luck day!</h2><p>(<%= num %>)</p>
  <%
    } else {
  %>
      <h2>Well, life goes on ... </h2><p>(<%= num %>)</p>
  <%
    }
  %>
  <a href="<%= request.getRequestURI() %>"><h3>Try Again</h3></a>
</body>
</html>
