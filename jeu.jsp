<?php
    session_start();
?>

<!DOCTYPE html>
<%@ page import="java.lang.Math"%>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

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
    
    <div class="lancerdes" style="margin-bottom: 130px; width: 200px;
                                                              margin-left: 230px;">
            <img src="image/des.gif" alt="des" >
            <form action="jeu.jsp" methode="post">
                  <input type="text" value="pseudo" name = pseudo style="margin-left: 10px;"><br>
                <input type="submit" value="lancer le dés" style="margin-left: 10px;">
            </form>
    </div>
        
        <%  int tab[][]={{1,2},{3,4}};
            if((request.getParameter("pseudo")) != null){
               
                int rand =(int)(Math.random() * (10));
                %><%=rand%><%
                if (rand%2==0){
                    %>
                    <%="on avance horizontalement"%><%
                }
                else{
                    %>
                    <%="on avance verticalement"%><% 
                }
            
        }
        
           %>   
    
    
        
       </body>
</html>
