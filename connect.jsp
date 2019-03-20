<%-- 
    Document   : connect
    Created on : 13 mars 2019, 09:08:28
    Author     : ncassand
--%>
import javax.servlet.http.HttpServletRequest;
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- CONNEXION & REDIRECTION -->
        <%
        String pseudo = request.getParameter("pseudo");
        String passwd = request.getParameter("mdp");
        
            if(pseudo.equals("admin")&&passwd.equals("admin")){
                response.sendRedirect("adminpage.jsp");
            }
            else if(pseudo.equals("user")&&passwd.equals("user")){
                
                response.sendRedirect("userpage.jsp");
            }
            else{
                response.sendRedirect("index.html");
            }
            
        %>
    </body>
</html>
