<%-- 
    Document   : index
    Created on : 12 Apr, 2017, 2:31:43 PM
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
        <title>Notice Board</title>
    </head>
    <body>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/notice_board","root","");
            Statement st = conn.createStatement();
            String sql = "SELECT * FROM notices";
            ResultSet rs = st.executeQuery(sql);
        %>
        
        <table border="1">            
            <tr>
            <th>Sr. num</th >
            <th>Faculty</th>
            <th>Date</th>
            <th style='width: 30px'>Notice</th>
            </tr>
            
            <%
                while(rs.next()){
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("sr") + "</td>");
                    out.println("<td>" + rs.getString("faculty") + "</td>");
                    out.println("<td>" + rs.getString("date") + "</td>");
                    out.println("<td>" + rs.getString("notice") + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
    </body>
</html>
