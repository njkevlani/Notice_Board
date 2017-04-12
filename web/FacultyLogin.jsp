<%-- 
    Document   : FacultyLogin
    Created on : 12 Apr, 2017, 3:31:30 PM
    Author     : nilesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Login</title>
    </head>
    <body>
        <form method="POST" action="doLogin.jsp">
            <input type="text" name="tid" placeholder="Teacher ID"><br>
            <input type="password" name="password" placeholder="Password"><br>
            <input type="submit" value="Eneter"><br>
        </form>
    </body>
</html>
