<?php
    session_start();
    $_SESSION['i'] = 0;
    $_SESSION['j'] = 0;    
?>

<%-- 
    Document   : index
    Created on : 13 mars 2019, 10:38:43
    Author     : sledoit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Bienvenue dans le jeu du carré</h1></center>
    <br>
    <form action="jeu.jsp">
        <center><input type="submit" value="jouer" > 
    </form>
    </body>
</html>
