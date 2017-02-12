package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.ArrayList;

public final class result_jsp extends org.apache.jasper.runtime.HttpJspBase
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
if("valid".equals((String)session.getAttribute("logstatus"))){
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("         <div class=\"jumbotron\" align=\"center\">\n");
      out.write("         <h1>Cetpa Certifications</h1>\n");
      out.write("     <h2>Online Evaluation system</h2> \n");
      out.write("    <h3>Thanks for taking up the test, Here is your progress report</h3> \n");
      out.write("    \n");
      out.write("    <div class=\"col-md-4\">\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <a href=\"destructor.jsp\"><input type=\"button\" name=\"one\" value=\"logout\"/></a>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
try{ int j=0;
            String c=request.getParameter("dl");
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","criccric","system");
            Statement st=conn.createStatement();
            ResultSet rs;
            
                 rs=st.executeQuery("select * from users where username='"+(String)session.getAttribute("name")+"' and password='"+(String)session.getAttribute("pass")+"'");
                       
      out.write("\n");
      out.write("                       <div align=\"center\">\n");
      out.write("                       \n");
      out.write("                                       ");

                       while(rs.next()){
                           String name=rs.getString(1),
                                  email=rs.getString(3);
                           long no=rs.getLong(4);
                           
      out.write("\n");
      out.write("                              \n");
      out.write("                                   \n");
      out.write("                           <h3>NAME :");
      out.print(name);
      out.write("</h3>\n");
      out.write("                                   \n");
      out.write("                           <h3>E-MAIL :");
      out.print(email);
      out.write("</h3>\n");
      out.write("                                  \n");
      out.write("                           <h3>CONTACT :");
      out.print(no);
      out.write("</h3><br><br><br><br>\n");
      out.write("                           ");
 } 
      out.write("\n");
      out.write("                       </div>\n");
      out.write("                       \n");
      out.write("                         ");

                             rs=st.executeQuery("select * from "+c+"");
                             for(int i=0;i<25;i++){
                                 rs.next();
                                 if(rs.getString(6).equals((String)session.getAttribute("case"+(i+1)+"")))
                                 {   
                                 j++;
                             }
                                 
      out.write("\n");
      out.write("                                 <div class=\"col-md-6\" align=\"center\">\n");
      out.write("                                   <h4>  ");
 out.println((String)session.getAttribute("case"+(i+1)+""));
      out.write("</h4>\n");
      out.write("                                 </div>\n");
      out.write("                                 <div class=\"col-md-6\" align=\"center\">\n");
      out.write("                                     <h4> ");
 out.println(rs.getString(6)); 
      out.write("</h4>\n");
      out.write("                                 </div>\n");
      out.write("        ");
                     }
out.println("<h4>total correct answer are :"+j+"<h4>");
out.println("<h4>marks obtained are :"+(j*4)+"</h4>");  
    PreparedStatement ps=conn.prepareStatement("update users set "+c+"=? where username='"+(String)session.getAttribute("name")+"' and password='"+(String)session.getAttribute("pass")+"'");
   
    ps.setInt(1, j*4);
    
   ps.executeUpdate();
session.invalidate();
}catch(Throwable t){out.println("<br><br><br><br><br><br>error ety :"+t+"<br><br><br><br><br><br>");} 
      out.write("  \n");
      out.write("                     \n");
      out.write("        <br><hr><hr>\n");
      out.write("        <div class=\"row\" align=\"center\">\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                <a href=\"destructor.jsp\"><input type=\"button\" name=\"one\" value=\"logout\"/></a>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
 }
else{
      out.write("<h3>user logged out...plz log in Again</h3>");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "index.html", out, false);
 }
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
