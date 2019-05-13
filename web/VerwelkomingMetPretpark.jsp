<%-- 
    Document   : VerwelkomingMetPretpark
    Created on : May 13, 2019, 3:11:05 PM
    Author     : Yori
--%>

<%@page import="fact.it.www.beans.Bezoeker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container jumbotron">
            <%Bezoeker bezoeker = (Bezoeker)request.getAttribute("bezoeker");%>
            <p>Welkom terug <%=bezoeker.toString()%>.</p>
        </div>
    </body>
</html>
