<%-- 
    Document   : Pretpark
    Created on : May 11, 2019, 3:22:56 PM
    Author     : Yori
--%>

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
            <h1>Voeg hier een nieuw pretpark toe:</h1>
            <form action="MaakServlet">
                <p style="display: none;">
                    <input name="type" id="type" value="pretpark">
                </p>
            <div class="form-group"> 
                <label for="nieuwePretpark">Nieuw pretpark</label> 
                <input class="form-control" id="nieuwPretpark" placeholder="Timmyland" name="nieuwPretpark"> 
            </div> 

            <button type="submit" class="btn btn-primary" name="attractie">Submit</button>
            
        </form>
            <button type="button" class="btn btn-outline-info"><a href="index.jsp">Home Pagina</a></button>
        </div>
    </body>
</html>
