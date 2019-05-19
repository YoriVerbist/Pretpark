<%-- 
    Document   : Bezoekers
    Created on : May 19, 2019, 1:19:12 PM
    Author     : Yori Verbist
    r-nummer   : r0697651
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="fact.it.www.beans.Bezoeker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bezoekers</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container jumbotron">
            <h1>Overzicht Bezoekers</h1>
            <%ArrayList<Bezoeker> bezoekers = (ArrayList<Bezoeker>) session.getAttribute("bezoekers");%>
        <%if (bezoekers != null) {%>
            <ul>
                <%for (Bezoeker bezoeker : bezoekers) {%>
                <li><%=bezoeker%></li><%}%>
            </ul><%}
        else {%>
            <p>Er zijn geen bezoekers gevonden.</p> <%}%>
        </div>
    </body>
</html>
