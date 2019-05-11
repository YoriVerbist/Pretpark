<%-- 
    Document   : Formulier
    Created on : May 10, 2019, 3:28:16 PM
    Author     : Yori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulier</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container jumbotron">
        <h1>Formulier</h1>
        <form action="MaakServlet"> 
            <p style="display: none;">
                <input type="text" name="type" id="type" value="bezoeker">
            </p>
            <div class="form-group"> 
                <label for="voornaam">Voornaam</label> 
                <input class="form-control" id="voornaam" placeholder="Elon" name="voornaam"> 
            </div> 
            <div class="form-group"> 
                <label for="achternaam">Achternaam</label> 
                <input class="form-control" id="achternaam" placeholder="Musk" name="achternaam"> 
            </div> 
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="nieuwe_bezoeker" name="nieuwe_bezoeker">
              <label class="form-check-label" for="nieuwe_bezoeker">Ben je al eens in dit pretpark geweest?</label>
            </div>
            <div class="from-group">
            <p>
                <label class="form-check-label" for="attractie">Wat is je favoriete attractie?</label>
                <select name="attractie" id="attractie" >
                <%String[] attracties = {"Geen", "Screaming Eagle", "Fury", "Dreamcather"};
                     for (int j = 0; j < attracties.length; j++) {%>
                    <option value= "<%=attracties[j]%>"><%=attracties[j]%></option>
                <%}%>
                </select>
            </p>
            </div>
            <button type="submit" class="btn btn-primary" name="verwelkoming">Submit</button>
            
        </form>
        <button type="button" class="btn btn-outline-info"><a href="index.jsp">Home Pagina</a></button>
        </div>
    </body>
</html>
