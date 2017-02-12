<%-- 
    Document   : adminjob
    Created on : Jul 7, 2016, 12:48:31 PM
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

    </head>
    <body>your choice is:
        <div class="jumbotron" align="center">
         <h1>Cetpa Certifications</h1>
     <h2>online evaluation system</h2> 
     
     
     <div class="col-md-4">
               
            </div>
            
            <div class="col-md-4">
                <a href="destructor.jsp"><input type="button" name="one" value="logout"/></a>
                
            </div>
            
            <div class="col-md-4">
                
            </div>
     
     
     
  </div> 
        <div class="row" align="center">
            <div class="col-md-4">
                <img src="img/admin.gif" alt="admin" height="500" width="500"/>
            </div>
            
            <div class="col-md-8">
                
        <%!static String driver="oracle.jdbc.OracleDriver",
                         url="jdbc:oracle:thin:@localhost:1521:xe",
                         user="criccric",
                         password="system";
                  String x,z;
                  long y;

            public  void total_users(Statement s){
              
            } 

            public void find_by_contact(){
            
            }
            
            public void find_by_subject(){

            }

            public void update_record(){

            }

            public void add_question(){

            }

            public void update_question(){

            }

            public void delete_question(){
            }

            public void delete_user(){

            }
        %>
        <%  
            String c=request.getParameter("button");
            Class.forName(driver);
            Connection conn=DriverManager.getConnection(url,user,password);
            Statement st=conn.createStatement();
            ResultSet rs;
            
            if (c.equals("total number of users")){
                 rs=st.executeQuery("select * from users");
                       %>
                       <div align="center">
                       <table border="5">
                               <tr>
                                   <td>name</td>
                                   <td>email</td>
                                   <td>contact</td>
                                   <td>marks in c</td>
                                   <td>marks in cpp </td>
                                   <td>marks in java</td>
                               </tr>
                                       <%
                       while(rs.next()){
                           String name=rs.getString(1),
                                  email=rs.getString(3);
                           long no=rs.getLong(4);
                           int cmarks=rs.getInt(5),
                               cppmarks=rs.getInt(6),
                               javamarks=rs.getInt(7);
                           %>
                               <tr>
                                   <td>
                                       <%=name%>
                                   </td>
                                   
                                   <td>
                                       <%=email%>
                                   </td>
                                   
                                   <td>
                                       <%=no%>
                                   </td>
                                   
                                   <td>
                                       <%=cmarks%>
                                   </td>
                                   
                                   <td>
                                       <%=cppmarks%>
                                   </td>
                                   
                                   <td>
                                       <%=javamarks%>
                                   </td>
                               </tr>
                            <%
                       }
                            %>
                            </table><br><br><br><hr><hr>
                       <a href="adminjob.html"><input type="button" name="one" value="Back to admin console"/></a>
                       </div>  
                       <%
            }
            else if (c.equals("find by contact")){
                x=request.getParameter("contact");
               if(x.isEmpty()){
                     %>invalid entry <jsp:forward page="adminjob.html"/><%
                         }
                else   
                { y=Long.parseLong(x);}
                
                rs=st.executeQuery("select * from users where mobile = "+y+"");
                %> 
                       <div align="center">
                       <table border="5">
                               <tr>
                                   <td>name</td>
                                   <td>email</td>
                                   <td>contact</td>
                                   <td>marks in c</td>
                                   <td>marks in cpp </td>
                                   <td>marks in java</td>
                               </tr>
                                       <%
                       while(rs.next()){
                           String name=rs.getString(1),
                                  email=rs.getString(3);
                           long no=rs.getLong(4);
                           int cmarks=rs.getInt(5),
                               cppmarks=rs.getInt(6),
                               javamarks=rs.getInt(7);
                           %>
                               <tr>
                                   <td>
                                       <%=name%>
                                   </td>
                                   
                                   <td>
                                       <%=email%>
                                   </td>
                                   
                                   <td>
                                       <%=no%>
                                   </td>
                                   
                                   <td>
                                       <%=cmarks%>
                                   </td>
                                   
                                   <td>
                                       <%=cppmarks%>
                                   </td>
                                   
                                   <td>
                                       <%=javamarks%>
                                   </td>
                               </tr>
                            <%
                       }
                            %>
                            </table><br><br><br><hr><hr>
                            <a href="adminjob.html"><input type="button" name="two" value="Back to admin console"/></a>
                       <%
            }
            else if (c.equals("find by subject")){
                x=request.getParameter("sub1");
               
                rs=st.executeQuery("select * from users where "+x+" > 0");
                       %>
                       <div align="center">
                       <table border="5">
                               <tr>
                                   <td>name</td>
                                   <td>email</td>
                                   <td>contact</td>
                                   <%
                                       if(x.equals("c")){
                                           %> <td>marks in c</td><%
                                       }
                                       else if(x.equals("cpp")){
                                            %><td>marks in c++ </td><%
                                       }
                                       else if(x.equals("java")){
                                            %><td>marks in java</td><%
                                       }

                                   %>
                               </tr>
                                       <%
                       while(rs.next()){
                           String name=rs.getString(1),
                                   email=rs.getString(3);
                           long no=rs.getLong(4);
                           int cmarks=rs.getInt(5),
                               cppmarks=rs.getInt(6),
                               javamarks=rs.getInt(7);
                           %>
                               <tr>
                                   <td>
                                       <%=name%>
                                   </td>
                                   
                                   <td>
                                       <%=email%>
                                   </td>
                                   
                                   <td>
                                       <%=no%>
                                   </td>
                                   
                                   <%
                                       if(x.equals("c")){
                                           %><td>
                                       <%=cmarks%>
                                   </td><%
                                       }
                                       else if(x.equals("cpp")){
                                            %> <td>
                                       <%=cppmarks%>
                                   </td><%
                                       }
                                       else if(x.equals("java")){
                                            %> <td>
                                       <%=javamarks%>
                                   </td><%
                                       }

                                   %> </tr>
                            <%
                       }
                            %>
                            </table><br><br><br><hr><hr>
                        <a href="adminjob.html"><input type="button" name="three" value="Back to admin console"/></a>
                       </div>  
                       <%
            }
            else if (c.equals("number of user")){
                 y=0;
                x=request.getParameter("sub");
                                       if(x.equals("C")){
                                            %><h3>total no.of users in c</h3><%
                                                rs=st.executeQuery("select * from users where c > 0");
                                                while(rs.next()){y++;}
                                                out.println("<h2>"+y+"</h2>");
                                       }
                                       else if(x.equals("cpp")){
                                            %><h3>total no.of users in cpp</h3><%
                                                rs=st.executeQuery("select * from users where cpp > 0");
                                                while(rs.next()){y++;}
                                                out.println("<h2>"+y+"</h2>");
                                       }
                                       else if(x.equals("java")){
                                            %><h3>total no.of users in java</h3><%
                                                rs=st.executeQuery("select * from users where java > 0");
                                                while(rs.next()){y++;}
                                                out.println("<h2>"+y+"</h2>");
                                       }
                 %>
                           <br> <a href="adminjob.html"><input type="button" name="four" value="Back to admin console"/></a>
                       <%
            }
            else if (c.equals("Add question")){
            %><form action="addq.jsp" method="post" >
        <select name="subz">
            <option value="C">c</option>
            <option value="cpp">cpp</option>
            <option value="java" >java</option>
        </select><br><br>
                                
                               question:<textarea name="q" rows="1" cols="100"></textarea><br>
                               option 1:<textarea name="a1" rows="1" cols="100"></textarea><br>
                               option 2:<textarea name="a2" rows="1" cols="100"></textarea><br>
                               option 3:<textarea name="a3" rows="1" cols="100"></textarea><br>
                               option 4:<textarea name="a4" rows="1" cols="100"></textarea><br>
                               answer:<textarea name="a" rows="1" cols="100"></textarea><br><br><hr><hr>
                               <input type="submit" value="add"/>
                           </form>
                            <%
            }
            else if (c.equals("Update question")){
                %><form action="updateq.jsp" method="post" >
        <select name="subz">
            <option value="C">c</option>
            <option value="cpp">cpp</option>
            <option value="java" >java</option>
        </select><br><br>
                               old question:<textarea name="old" rows="1" cols="100"></textarea><br> 
                               question:<textarea name="q" rows="1" cols="100"></textarea><br>
                               option 1:<textarea name="a1" rows="1" cols="100"></textarea><br>
                               option 2:<textarea name="a2" rows="1" cols="100"></textarea><br>
                               option 3:<textarea name="a3" rows="1" cols="100"></textarea><br>
                               option 4:<textarea name="a4" rows="1" cols="100"></textarea><br>
                               answer:<textarea name="a" rows="1" cols="100"></textarea><br><br><hr><hr>
                               <input type="submit" value="update"/>
                           </form>
                             <%
            }
            else if (c.equals("Delete question")){
                x=request.getParameter("name2");
                z=request.getParameter("sub4");
                rs=st.executeQuery("delete from "+z+" where q='"+x+"'");
                out.println("<h3>question  "+x+" </p></h3>");
                out.println("<h3><p>has been deleted</p></h3>");
                out.println("<h3><p>and no further usage of </p></h3>");
                out.println("<h3><p>this question in this </p></h3>");
                out.println("<h3><p>system is possible<p></h3>");
                out.println("<h3><p>thankyou<p></h3>");
                %>
                            <a href="adminjob.html"><input type="button" name="seven" value="Back to admin console"/></a>
                       <%
            }
            else if (c.equals("Delete user")){
                x=request.getParameter("name3");  
                rs=st.executeQuery("delete from users where username='"+x+"'");
                out.println("<h3>account with username mr "+x+" </p></h3>");
                out.println("<h3><p>has been deleted</p></h3>");
                out.println("<h3><p>and no further usage of </p></h3>");
                out.println("<h3><p>this account is possible</p></h3>");
                out.println("<h3><p>thankyou<p></h3>");
                %>
                            <a href="adminjob.html"><input type="button" name="eight" value="Back to admin console"/></a>
                       <%
            }%>        </div>
            
        </div>
        </body>
</html>


<% }
else{%> <h3>user logged out...plz log in Again</h3> <jsp:include page="index.html"/><%}%>
