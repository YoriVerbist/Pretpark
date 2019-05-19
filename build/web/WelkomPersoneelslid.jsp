<%-- 
    Document   : WelkomPersoneelslid
    Created on : 13-mei-2019, 9:56:05
    Author     : yori Verbist
    r-nummer   : r0697651
--%>

<%@page import="fact.it.www.beans.Personeelslid"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welkom personeelslid</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container jumbotron">
            
            <% Personeelslid personeelslid = (Personeelslid) request.getAttribute("personeelslid") ;%>
            
            <h1>Verwelkoming</h1>
            <p><%=personeelslid.toString() %>, welkom bij het team.</p>
        </div>
    </body>
</html>
