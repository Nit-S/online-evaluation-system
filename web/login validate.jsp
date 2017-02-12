<%-- 
    Document   : login validate
    Created on : Jul 5, 2016, 10:51:04 PM
    Author     : Nishu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String x=request.getParameter("mode");
            String y=request.getParameter("un");
            String z=request.getParameter("pw");
            session.setAttribute("name", y);
            session.setAttribute("pass", z);
            if(x.equals("admin")){
                out.println("in admin");
         %>
         <hr>
          <jsp:include page="adminval.jsp"/>
         <hr>
         <%
             }
            else{
                out.println("in user");
          %>
          <hr>
          <jsp:include page="userval.jsp"/>
          <hr>
          <%
            }
        %>
        
    </body>
</html>
