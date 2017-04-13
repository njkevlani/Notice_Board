<%-- 
    Document   : Dashboard
    Created on : 12 Apr, 2017, 8:58:02 PM
    Author     : nilesh
--%>

<%@page import="java.time.ZoneId"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                String faculty = (String)sess.getAttribute("tname"), 
                       date = "",
                        notice = request.getParameter("notice");
                LocalDate dt = new Date().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();;
                date += dt.getDayOfMonth()+ "/" + dt.getMonthValue()+ "/" + dt.getYear();
                
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/notice_board","root","");
                Statement st = conn.createStatement();
                String sql = "INSERT INTO notices(faculty, date, notice) VALUES ('" + faculty + "', '" + date + "','"+  notice +"')";
                st.executeUpdate(sql);
                response.sendRedirect("Dashboard.jsp");
            }
        %>
    </body>
</html>
