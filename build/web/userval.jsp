<%@page import="java.util.*"%>
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
                          password="system",
                          logstatus=null;
        %>
     <%
            Class.forName(driver);
            Connection conn=DriverManager.getConnection(url,user,password);
            Statement st=conn.createStatement();
            String name=(String)session.getAttribute("name");
            String pass=(String)session.getAttribute("pass");
            
            ResultSet rs=st.executeQuery("select * from  users where username='"+name+"' and password='"+pass+"'");
            if(rs.next()){
                out.println("<h3>logged in</h3>");
                logstatus="valid";
                session.setAttribute("logstatus", logstatus);
                  out.println("<h3>Choose the desired subject</h3>");
                  %>
                <jsp:include page="subject.html"/>
        <%
            }
            else{
                out.println("invalid username/password.... plz sign up!!");
                %>
                <jsp:include page="signup.html"/>
        <%
            }
        %>
    </body>
</html>
