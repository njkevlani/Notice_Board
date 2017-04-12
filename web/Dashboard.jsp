<%-- 
    Document   : Dashboard
    Created on : 12 Apr, 2017, 9:21:05 PM
    Author     : nilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice Dashboard</title>
    </head>
    <body>
        <%
            HttpSession sess = request.getSession();
            if(sess.getAttribute("tid") == null){
                response.sendRedirect("FacultyLogin.jsp");
            }
            else{
                out.println("<h1>Welcome " + sess.getAttribute("tname") + "</h1>");
                out.println("<form action='PushNotice.jsp' method='POST'>");
                //out.println("<input type='text' name='notice' placeholder='Notice' style='height:200px; width:300px;'><br>");
                out.println("<textarea name='notice' placeholder='Notice'></textarea><br>");
                out.println("<input type='submit' value='Post'><br><br>");
                out.println("</form>");
                
                out.println("<form action='DoLogout.jsp' method='POST'>");
                out.println("<input type='submit' value='Log out'><br><br>");
                out.println("</form>");
            }
        %>
        
    </body>
</html>
