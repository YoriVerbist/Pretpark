<%-- 
    Document   : Personeelslid
    Created on : 13-mei-2019, 9:43:44
    Author     : yoriv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personeelslid</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container jumbotron">
            <form action="MaakServlet">
                <p style="display: none;">
                    <input name="type" id="type" value="personeelslid">
                </p>
                <h1>Maak hier een nieuw personeelslid aan.</h1>
                <div class="form-group"> 
                    <label for="voorNaam">Voornaam:</label> 
                    <input class="form-control" id="voorNaam" placeholder="Elon" name="voorNaam" required> 
                </div> 
                <div class="form-group"> 
                    <label for="achterNaam">Achternaam</label> 
                    <input class="form-control" id="achterNaam" placeholder="Musk" name="achterNaam" required> 
                </div> 

            <button type="submit" class="btn btn-primary" name="personeelslid">Submit</button>
            
            </form>
            <button type="button" class="btn btn-outline-info"><a href="index.jsp">Home Pagina</a></button>
        </div>
    </body>
</html>
