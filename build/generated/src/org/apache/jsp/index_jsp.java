package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/index.css\"/>\n");
      out.write("        <title>Notice Board</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h3 style=\"text-align:center\">Notice Board</h3>\n");
      out.write("        ");
 
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/notice_board","root","");
            Statement st = conn.createStatement();
            String sql = "SELECT * FROM notices";
            ResultSet rs = st.executeQuery(sql);
        
      out.write("\n");
      out.write("        \n");
      out.write("        <table class=\"table-fill\">            \n");
      out.write("            <tr>\n");
      out.write("            <th>Sr. num</th >\n");
      out.write("            <th>Faculty</th>\n");
      out.write("            <th>Date</th>\n");
      out.write("            <th style='width: 30px'>Notice</th>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");

                while(rs.next()){
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("sr") + "</td>");
                    out.println("<td>" + rs.getString("faculty") + "</td>");
                    out.println("<td>" + rs.getString("date") + "</td>");
                    out.println("<td>" + rs.getString("notice") + "</td>");
                    out.println("</tr>");
                }
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
