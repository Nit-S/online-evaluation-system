

<%@page import="java.util.concurrent.ExecutionException"%>
<%@page import="java.lang.Integer"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            static String driver="oracle.jdbc.OracleDriver",
                          url="jdbc:oracle:thin:@localhost:1521:xe",
                          user="criccric",
                          password="system";
        %>
        <%
        String w=request.getParameter("un");
        String x=request.getParameter("pw");
        String z=request.getParameter("em");
        long y;
            if(request.getParameter("tel").isEmpty()){
                y=0;
            }
            else{
                 y=Long.parseLong(request.getParameter("tel"));
            }
            try{
        Class.forName(driver);
        Connection conn=DriverManager.getConnection(url, user, password);
        PreparedStatement ps = conn.prepareStatement("insert into users values(?,?,?,?,?,?,?)");
        ps.setString(1, w);
        ps.setString(2, x);
        ps.setString(3, z);
        ps.setLong(4, y);
        ps.setInt(5, 0);
        ps.setInt(6, 0);
        ps.setInt(7, 0);
        ps.executeQuery();
        out.println("<h3>the record for mr. "+w+" has been recorded</h3>");
        out.println("<h3>login again to continue</h3>");
         %>
        <jsp:include page="index.html"/>
        <%
            }catch(Exception e){
                out.println("<h2>Account with same username and password already exsists or input is invalid<br><br>plz try again</h2>");
                %>
                <jsp:include page="signup.html"/>
        <%
            }
        %> 
    </body>
</html>
