<%-- 
    Document   : DoLogout
    Created on : 12 Apr, 2017, 9:28:20 PM
    Author     : nilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>I don't think that this will be seen anyway.</title>
    </head>
    <body>
        <%
            HttpSession sess = request.getSession();
            
            if(sess == null){
                //unset session
                sess.invalidate();
            }
            response.sendRedirect("FacultyLogin.jsp");     
        %>
    </body>
</html>
