<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<%@ page import="java.lang.Math"%>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<%/* Chargement du driver JDBC pour MySQL */
try {
    Class.forName( "com.mysql.jdbc.Driver" );
} catch ( ClassNotFoundException e ) {
    /* Gérer les éventuelles erreurs ici. */
} %>

<html>
    
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    <center><div>Jeux du carré</div></center>
    <br><br><br>
        <div class ="AetB" style="margin-left: 150px;">
            <span id="A" >A</span> <span id="B" style="margin-left: 280px;">B</span>
            
        </div>
        <div class ="carre" style="margin-left: 150px; width: 400px">
            <img src="image/carre.jpg" id="carre" alt="carre" />
           
        </div>
    <div class="CetD" style="margin-left: 150px;">
        <span id="D" >D</span> <span id="C" style="margin-left: 280px;">C</span>
    </div>
    <br><br>
    
    <div class="lancerdes" style="margin-bottom: 130px; width: 200px; margin-left: 230px;">
            <img src="image/des.gif" alt="des" >
            <form action="jeu.jsp" methode="post">
              
                <input type="submit" value="Lancer les 5 parties" name="bouton" style="margin-left: 10px;">
            </form>
    </div>
    On lance 5 parties<br>
        
        <%  int tab[][]={{1,2},{4,3}};
           //jdbc:mysql://localhost:3306/g11;
        
String url = "jdbc:mysql://localhost:3306/g11";
String utilisateur = "g11";
String motDePasse = "g11";
Connection connexion = null;
   
         %>                    
            <%="Vous Partez du point A et devez arriver au point C bonne chance."%><br><%
            boolean finit= false;
            int nombreTry=0;
            if((request.getParameter("bouton")) != null){
               int i =0;
               int j=0;
               int nombrePartie =0;
               while (nombrePartie <5){
                while (tab[i][j]!=3 && nombreTry<20){
                    int rand =(int)(Math.random() * (10));
                    
                    if (rand%2==0){
                        
                        
                        nombreTry+=1;
                        if(j%2==0){
                            j+=1;
                        }
                    }
                    else{
                        
                        nombreTry +=1;
                        if(i%2==0){
                            i+=1;
                        }
                    }
                }
        if(nombreTry <20){
            %>      
            <%="On est arrivé au point C en moins de 21 coups !"%><br><%
        }
        else{
            %><%="FAIL ! Nombre de tentative supérieure à 20 vous avez perdu!"%><br><%
        }
                
try {
   connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
   Statement statement = connexion.createStatement();
   int statut = statement.executeUpdate( "INSERT INTO jeu (nombreTry) VALUES ("+nombreTry+");" );
   /* Exécution d'une requête de lecture */
   
   if (finit==true){
        ResultSet resultat = statement.executeQuery( "SELECT * FROM jeu;" );
        int colonne1;
        int colonne2;
 %>
<br><br>

<p>Affichage de mes parties :</p>
<table border="1">
    <tr>
        <th>Nombre de coups</th>
        <th>Partie</th>
    </tr>
 
 <%
while(resultat.next()){
 colonne1=resultat.getInt(1);
 colonne2=resultat.getInt(2);
 %>
 <tr>
     <td><%=colonne1%></td>
     <td><%=colonne2%></td>
 </tr>                    
                        
<% 
}
   
   
}
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
  
               i =0;
                    j=0;
                    nombreTry =0;
                
                
               
nombrePartie +=1 ;
if (nombrePartie==4){
    finit=true;
}
            
}               
        
            }            
                
  
        
        
           %>   

 </table>   
        
       </body>
</html>