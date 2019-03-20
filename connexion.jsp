<%-- 
    Document   : connexion
    Created on : 20 mars 2019, 08:27:07
    Author     : ncassand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>   
        <form action="connect.jsp">
            <fieldset>
                <legend>Connexion</legend>
                Pseudo : <input type="text" name="pseudo" /> <br>
                Mot de passe : <input type="text" name="mdp" /><br><br>
                <input type="submit" value="Valider" name="valider" />
            </fieldset>
        </form>
        
    </body>
</html>