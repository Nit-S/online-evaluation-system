
<%if("valid".equals((String)session.getAttribute("logstatus"))){%>

<%@page import="java.sql.*"%>
<%!static String driver="oracle.jdbc.OracleDriver",
                 url="jdbc:oracle:thin:@localhost:1521:xe",
                 user="criccric",
                 password="system";
          String x,z;
          long y;

%>
<%
    x=request.getParameter("subz");
    z=request.getParameter("old");
    Class.forName(driver);
    Connection conn=DriverManager.getConnection(url, user, password);
    PreparedStatement ps=conn.prepareStatement("update "+x+" set q=?,a1=?,a2=?,a3=?,a4=?,a=? where q='"+z+"'");
   
    ps.setString(1,request.getParameter("q"));
    ps.setString(2,request.getParameter("a1"));
    ps.setString(3,request.getParameter("a2"));
    ps.setString(4,request.getParameter("a3"));
    ps.setString(5,request.getParameter("a4"));
    ps.setString(6,request.getParameter("a"));
    
   ps.executeUpdate();
%>
<h3>Record Updated in the data base</h3>
<jsp:include page="adminjob.html"/>


<% }
else{%><h3>user logged out...plz log in Again</h3><jsp:include page="index.html"/><% }%>