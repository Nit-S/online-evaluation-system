<%-- 
    Document   : cpp
    Created on : Jul 8, 2016, 12:04:48 AM
    Author     : Nishu
--%>

<%if("valid".equals((String)session.getAttribute("logstatus"))){%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
<style>
 td {
    padding: 15px;
}
</style>
    </head>
    <body>
        <div class="jumbotron" align="center">
         <h1>Cetpa Certifications</h1>
     <h2>questions for c++</h2> 
     
     <div class="col-md-4">
               
            </div>
            
            <div class="col-md-4">
                <a href="destructor.jsp"><input type="button" name="one" value="logout"/></a>
                
            </div>
            
            <div class="col-md-4">
                
            </div>
     
     
  </div>
        <div class="col-md-3">
                 <img src="img/cpp.png" alt="java" height="300" width="300"/>
             </div>
          <div class="col-md-6" align="center">
            <%!static String driver="oracle.jdbc.OracleDriver",
                         url="jdbc:oracle:thin:@localhost:1521:xe",
                         user="criccric",
                         password="system";
                         int x;
                         
              %>  
            <%
                    String y=request.getParameter("choice");   
                    if(y.isEmpty()){}
                    else{
                      x=Integer.parseInt(y);
                    }Class.forName(driver);
                     Connection conn=DriverManager.getConnection(url, user, password);
                    Statement st=conn.createStatement();
                    ResultSet rs=st.executeQuery("select * from cpp");
                switch(x)
                {   case 1:
                    session.setAttribute("case", x);
                    for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
                        <br><hr><hr><a href="cpp.jsp?choice=2"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 2:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
                       
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=1"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=3"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 3:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=2"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=4"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 4:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=3"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=5"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 5:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=4"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=6"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 6:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                       <a href="cpp.jsp?choice=5"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=7"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 7:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=6"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=8"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 8:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=7"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=9"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 9:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=8"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=10"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 10:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=9"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=11"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 11:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=10"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=12"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 12:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=11"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=13"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 13:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=12"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=14"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 14:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=13"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=15"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 15:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=14"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=16"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                            break;
                    case 16:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=15"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=17"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 17:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=16"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=18"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 18:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=17"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=19"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 19:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=18"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=20"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 20:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=19"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=21"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 21:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=20"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=22"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 22:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=21"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=23"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 23:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=22"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=24"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 24:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
 
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=23"><input type="button" value="previous question"/></a>
                        <a href="cpp.jsp?choice=25"><input type="button" value="next question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                    case 25:session.setAttribute("case", x);
                       for(int i=0;i<=x;i++){rs.next();}
            %> <div class="row" align="left">
                <%out.println("<pre>Q"+x+" : "+rs.getString(1)+"</pre>");%><br><br><br>
                <form action="resgencpp.jsp" > 
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="A"/><%out.println(rs.getString(2));%><br><br>
                    <input type="submit"  name="response" value="B"/><%out.println(rs.getString(3));%>
                </div>
                <div class="col-md-6" >
                    <input type="submit"  name="response" value="C"/><%out.println(rs.getString(4));%><br><br>
                    <input type="submit"  name="response" value="D"/><%out.println(rs.getString(5));%>
                </div>
                </form>
               </div>
                        <br><hr><hr>
                        <a href="cpp.jsp?choice=24"><input type="button" value="previous question"/></a>
                        <a href="result.jsp?dl=cpp"><input type="button" value="Submit"/></a>
                        <%
                        break;
                        
                }
            %>
            
             </div>
         <div class="col-md-3">
                            
                            <table border="1">
                                <caption><h3>select question</h3></caption>
                                <tr>
                                    <td><a href="cpp.jsp?choice=1">1</a></td><td><a href="cpp.jsp?choice=2">2</a></td><td><a href="cpp.jsp?choice=3">3</a></td><td><a href="cpp.jsp?choice=4">4</a></td><td><a href="cpp.jsp?choice=5">5</a></td>
                                </tr>
                                <tr>
                                    <td><a href="cpp.jsp?choice=6">6</a></td><td><a href="cpp.jsp?choice=7">7</a></td><td><a href="cpp.jsp?choice=8">8</a></td><td><a href="cpp.jsp?choice=9">9</a></td><td><a href="cpp.jsp?choice=10">10</a></td>
                                </tr>
                                <tr>
                                    <td><a href="cpp.jsp?choice=11">11</a></td><td><a href="cpp.jsp?choice=12">12</a></td><td><a href="cpp.jsp?choice=13">13</a></td><td><a href="cpp.jsp?choice=14">14</a></td><td><a href="cpp.jsp?choice=15">15</a></td>
                                </tr>
                                <tr>
                                    <td><a href="cpp.jsp?choice=16">16</a></td><td><a href="cpp.jsp?choice=17">17</a></td><td><a href="cpp.jsp?choice=18">18</a></td><td><a href="cpp.jsp?choice=19">19</a></td><td><a href="cpp.jsp?choice=20">20</a></td>
                                </tr>
                                <tr>
                                    <td><a href="cpp.jsp?choice=21">21</a></td><td><a href="cpp.jsp?choice=22">22</a></td><td><a href="cpp.jsp?choice=23">23</a></td><td><a href="cpp.jsp?choice=24">24</a></td><td><a href="cpp.jsp?choice=25">25</a></td>
                                </tr>
                            </table>         
                        </div>
        
        
        
        
        
    </body>
</html>

<% }
else{%><h3>user logged out...plz log in Again</h3><jsp:include page="index.html"/><% }%>