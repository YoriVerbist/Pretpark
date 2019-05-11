<%-- 
    Document   : Verwelkoming
    Created on : May 10, 2019, 6:32:10 PM
    Author     : Yori Verbist
--%>

<%@page import="fact.it.www.beans.Attractie"%>
<%@page import="fact.it.www.beans.Bezoeker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verwelkoming</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        

        <div class="container jumbotron">
              <%Bezoeker bezoeker = (Bezoeker)request.getAttribute("bezoeker");%>
            <%int pretparkcode = bezoeker.getPretparkcode();%>
            <%if (pretparkcode == 1000) {%>
                <p>Welkom <%=bezoeker.toString()%>, danku om u te registreren.</p><%}
            else {
                %><p>Welkom terug <%=bezoeker.toString()%>.</p><%
                };
            %>
            
            <%
            if(!bezoeker.getWishlist().isEmpty()){
                %><p>Uw favoriete attractie is <%=bezoeker.getWishlist().get(0)%>.</p><%}
            else{
               %><p>Je hebt geen favoriete attractie gekozen.</p><%};%>
            
            
            <button type="button" class="btn btn-outline-info"><a href="Formulier.jsp">Formulier</a></button>
            <button type="button" class="btn btn-outline-info"><a href="index.jsp">Home Pagina</a></button>
        </div>
        
    </body>
</html>
