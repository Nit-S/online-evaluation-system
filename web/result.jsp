<%-- 
    Document   :session.setAttribute("case",x);                 out.println("response recorded"); destructor
    Created on :session.setAttribute("case",x);                 out.println("response recorded"); Jul 8, 2016, 10:session.setAttribute("case",x);                 out.println("response recorded");32:session.setAttribute("case",x);                 out.println("response recorded");21 PM
    Author     :session.setAttribute("case",x);                 out.println("response recorded"); Nishu
--%>


<%if("valid".equals((String)session.getAttribute("logstatus"))){%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
       
         <div class="jumbotron" align="center">
         <h1>Cetpa Certifications</h1>
     <h2>Online Evaluation system</h2> 
    <h3>Thanks for taking up the test, Here is your progress report</h3> 
    
    <div class="col-md-4">
               
            </div>
            
            <div class="col-md-4">
                <a href="destructor.jsp"><input type="button" name="one" value="logout"/></a>
                
            </div>
            
            <div class="col-md-4">
                
            </div>
    
  </div>
        
        
        
        <%try{ int j=0;
            String c=request.getParameter("dl");
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","criccric","system");
            Statement st=conn.createStatement();
            ResultSet rs;
            
                 rs=st.executeQuery("select * from users where username='"+(String)session.getAttribute("name")+"' and password='"+(String)session.getAttribute("pass")+"'");
                       %>
                       <div align="center">
                       
                                       <%
                       while(rs.next()){
                           String name=rs.getString(1),
                                  email=rs.getString(3);
                           long no=rs.getLong(4);
                           %>
                              
                                   
                           <h3>NAME :<%=name%></h3>
                                   
                           <h3>E-MAIL :<%=email%></h3>
                                  
                           <h3>CONTACT :<%=no%></h3><br><br><br><br>
                           <% } %>
                       </div>
                       
                         <%
                             rs=st.executeQuery("select * from "+c+"");
                             for(int i=0;i<25;i++){
                                 rs.next();
                                 if(rs.getString(6).equals((String)session.getAttribute("case"+(i+1)+"")))
                                 {   
                                 j++;
                             }
                                 %>
                                 <div class="col-md-6" align="center">
                                   <h4>  <% out.println((String)session.getAttribute("case"+(i+1)+""));%></h4>
                                 </div>
                                 <div class="col-md-6" align="center">
                                     <h4> <% out.println(rs.getString(6)); %></h4>
                                 </div>
        <%                     }
out.println("<h4>total correct answer are :"+j+"<h4>");
out.println("<h4>marks obtained are :"+(j*4)+"</h4>");  
    PreparedStatement ps=conn.prepareStatement("update users set "+c+"=? where username='"+(String)session.getAttribute("name")+"' and password='"+(String)session.getAttribute("pass")+"'");
   
    ps.setInt(1, j*4);
    
   ps.executeUpdate();
session.invalidate();
}catch(Throwable t){out.println("<br><br><br><br><br><br>error ety :"+t+"<br><br><br><br><br><br>");} %>  
                     
        <br><hr><hr>
        <div class="row" align="center">
            <div class="col-md-4">
               
            </div>
            
            <div class="col-md-4">
                <a href="destructor.jsp"><input type="button" name="one" value="logout"/></a>
                
            </div>
            
            <div class="col-md-4">
                
            </div>
        </div>
        
    </body>
</html>

<% }
else{%><h3>user logged out...plz log in Again</h3><jsp:include page="index.html"/><% }%>