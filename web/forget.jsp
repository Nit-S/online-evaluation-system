<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">

        <title>validation</title>
    </head>
    <body>
        <script src="bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
        <%!
            static String driver="oracle.jdbc.OracleDriver",
                          url="jdbc:oracle:thin:@localhost:1521:xe",
                          user="criccric",
                          password="system";
                   String u,p;
        %>
     <%
            Class.forName(driver);
            Connection conn=DriverManager.getConnection(url,user,password);
            PreparedStatement ps=conn.prepareStatement("select * from  users where email=? and mobile=?");
            String email=request.getParameter("em");
            long mobile;
            if(request.getParameter("tel").isEmpty()){
                mobile=0;
            }
            else{
                 mobile=Long.parseLong(request.getParameter("tel"));
            }
            ps.setString(1, email);
            ps.setLong(2, mobile);
            ResultSet r=ps.executeQuery();
            if(r.next()){
                  out.println("<h3>username is: "+r.getString(1)+"</h3>");
                  out.println("<h3>password is: "+r.getString(2)+"</h3>");
                %>
                <jsp:include page="index.html"/>
        <%
            }
            else{
                out.println("invalid email/phonenumber.... plz sign up!!");
                %>
                <jsp:include page="signup.html"/>
        <%
            }
        %>
    </body>
</html>
