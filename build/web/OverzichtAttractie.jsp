<%-- 
    Document   : OverzichtAttractie
    Created on : May 11, 2019, 11:28:49 PM
    Author     : Yori
--%>

<%@page import="fact.it.www.beans.Pretpark"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <% Pretpark nieuwPretpark = (Pretpark) request.getAttribute("nieuwPretpark"); %>
        
        <div class="container jumbotron">
            <h1>Overzicht van de attracties van pretpark <%=nieuwPretpark.getNaam() %></h1>
            <button type="button" class="btn btn-outline-info"><a href="index.jsp">Home Pagina</a></button>
        </div>
        
    </body>
</html>
