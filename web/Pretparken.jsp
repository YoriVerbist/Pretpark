<%-- 
    Document   : Pretparken
    Created on : May 19, 2019, 1:31:00 PM
    Author     : Yori Verbist
    r-nummer   : r0697651
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="fact.it.www.beans.Pretpark"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Overzicht Pretparken</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container jumbotron">
            <h1>Overzicht Pretparken</h1>
            <%ArrayList<Pretpark> pretparken = (ArrayList<Pretpark>) 
                    session.getAttribute("pretparken");%>
        <%if (pretparken != null) {%>
            <ul>
                <%for (Pretpark pretpark : pretparken) {%>
                <li><%= pretpark.getNaam() %></li><%}%>
            </ul><%}
        else {%>
            <p>Er zijn geen pretparken gevonden.</p> <%}%>
        </div>
    </body>
</html>
