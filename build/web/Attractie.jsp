<%-- 
    Document   : Attractie
    Created on : May 11, 2019, 3:45:49 PM
    Author     : Yori Verbist
    r-nummer   : r0697651
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
        <div class="container jumbotron">
           
            <% String nieuwPretpark = request.getParameter("nieuwPretpark"); %>
            <h1>Welkom bij pretpark <%=nieuwPretpark %>.</h1>
            
            <form action="MaakServlet">
                <p style="display: none;">
                    <input name="type" id="type" value="attractie">
                </p>
                <div class="form-group"> 
                    <label for="nieuwPretpark">Naam van het pretpark:</label> 
                    <input class="form-control" id="naamPretpark" value="<%=nieuwPretpark %>" name="naamPretpark" readonly> 
                </div> 
                <div class="form-group"> 
                    <label for="naamAttractie">Naam voor de attractie:</label> 
                    <input class="form-control" id="naamAttractie" placeholder="Typhoon" name="naamAttractie" required> 
                </div> 
                <div class="form-group"> 
                    <label for="duurAttractie">Duur:</label> 
                    <input class="form-control" type="number" min="1" max="20" id="duurAttractie" name="duurAttractie" value="1"> 
                </div> 
                <div class="form-group"> 
                    <label for="naamFotoBestand">Foto bestand </label> 
                    <input class="form-control" id="naamFotoBestand" placeholder="Foto.jpg" name="naamFotoBestand" required> 
                </div> 


            <button type="submit" class="btn btn-primary" name="attractie">Submit</button>
            
            </form>
            <button type="button" class="btn btn-outline-info"><a href="index.jsp">Home Pagina</a></button>
        </div>
    </body>
</html>
