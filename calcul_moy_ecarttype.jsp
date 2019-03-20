<%-- 
    Document   : calcul_moy_ecarttype
    Created on : 13 mars 2019, 09:41:20
    Author     : ncassand
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calcul moyenne et écart type</h1>
        
    <%  
    String url = "jdbc:mysql://localhost:3306/g11";
    String utilisateur = "root";
    String motDePasse = "";
    Connection connexion = null;
   
    
    try {
       connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
       Statement statement = connexion.createStatement();
       //int statut = statement.executeUpdate( "INSERT INTO jeu (nombreTry) VALUES ("+nombreTry+");" );
       
       
    /* Exécution d'une requête de lecture */
       ResultSet resultat = statement.executeQuery( "SELECT * FROM jeu;" );
         %>  
    
    <fieldset>
        <legend>Vos moyennes</legend>

    <%
           /* CALCUL MOYENNE */
    int moyenne = 0;
    int esperance = 0;
    int variance = 0;
    int ecartype = 0;
    int indice = 0;

    if(resultat.first()!=false){
        while (resultat.next()) {
            moyenne += resultat.getInt(1);
            indice++;
        }
        moyenne = moyenne/indice;
    }
    %>
    <p><%=moyenne%></p>
    </fieldset>


<%
/* CALCUL ECART TYPE */

    esperance = (noteTP/60.0)+(noteDS/60.0)+(noteTD/60.0);
    variance = pow((noteTP - esperance), 2.0)/60.0+pow((noteDS - esperance), 2.0)/60.0+pow((noteTD - esperance), 2.0)/60.0;
    ecartype = sqrt(variance);


    } catch ( SQLException e ) {
        %><%="marche pas1"%><br><%
    } finally {

    if ( connexion != null )
        try {
            /* Fermeture de la connexion */
            connexion.close();
        } catch ( SQLException ignore ) {
            %><%="marche pas2"%><br><%
        }
    }
  %>
</fieldset>
        
    </body>
</html>
