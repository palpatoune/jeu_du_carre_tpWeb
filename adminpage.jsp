<%-- 
    Document   : adminpage
    Created on : 13 mars 2019, 09:21:33
    Author     : ncassand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Connection conn=null;
        Statement stmt=null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        }catch(Exception e){out.print(e);}
            
        try{
            String jdbc="jdbc:mysql://localhost:3306/g11";
            String root="root";
            String mdp="";
            conn=DriverManager.getConnection(jdbc,root,mdp);
            stmt=conn.createStatement();
        }catch(Exception e){out.print(e);}
        %>
        
        <h1>Bienvenue à vous, admin !</h1>
        Actions possible :<br>
        
        <a href="calcul_stat.jsp">Afficher les statistiques des parties du user</a><br>
        <a href="calcul_moy_ecarttype.jsp">Calcul de la moyenne et l'écart-type des parties du user</a><br>
        
        <p><a href="deco.jsp">DECONNEXION</a></p>
    </body>
    
    
        
    
    
</html>
