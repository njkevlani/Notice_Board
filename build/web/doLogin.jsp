<%-- 
    Document   : doLogin
    Created on : 12 Apr, 2017, 3:34:52 PM
    Author     : nilesh
--%>

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
        <%
            HttpSession sess = request.getSession();
            if(sess.getAttribute("tid") != null){
                response.sendRedirect("Dashboard.jsp");
            }
            else{
                String tid = request.getParameter("tid");
                String password = request.getParameter("password");

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/notice_board","root","");
                Statement st = conn.createStatement();
                String sql = "SELECT A.password, B.tname FROM teacher_login as A INNER JOIN teacher_detail as B WHERE A.tid='" + tid + "' AND B.tid ='" + tid + "'";
                ResultSet rs = st.executeQuery(sql);
                rs.next();
                String db_password = rs.getString("password");

                if(password.equals(db_password)){
                    sess.setAttribute("tid", tid);
                    sess.setAttribute("tname", rs.getString("tname"));
                }
                response.sendRedirect("Dashboard.jsp");
            }                  
        %>
        
        
        
    </body>
</html>
