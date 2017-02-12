
<%if("valid".equals((String)session.getAttribute("logstatus"))){%>  
<%  try{
           Integer y=(Integer)session.getAttribute("case");
           String x=request.getParameter("response");
           
        switch(y){
            case 1:session.setAttribute("case1",x);                 
            %><jsp:forward page="cpp.jsp?choice=1"/><%
                break;
            case 2:session.setAttribute("case2",x);                 
            %><jsp:forward page="cpp.jsp?choice=2"/><%
                break;
            case 3:session.setAttribute("case3",x);                 
            %><jsp:forward page="cpp.jsp?choice=3"/><%
                break;
            case 4:session.setAttribute("case4",x);                 
            %><jsp:forward page="cpp.jsp?choice=4"/><%
                break;
            case 5:session.setAttribute("case5",x);                
            %><jsp:forward page="cpp.jsp?choice=5"/><%
                break;
            case 6:session.setAttribute("case6",x);                 
            %><jsp:forward page="cpp.jsp?choice=6"/><%
                break;
            case 7:session.setAttribute("case7",x);                 
            %><jsp:forward page="cpp.jsp?choice=7"/><%
                break;
            case 8:session.setAttribute("case8",x);                 
            %><jsp:forward page="cpp.jsp?choice=8"/><%
                break;
            case 9:session.setAttribute("case9",x);                 
            %><jsp:forward page="cpp.jsp?choice=9"/><%
                break;
            case 10:session.setAttribute("case10",x);                 
            %><jsp:forward page="cpp.jsp?choice=10"/><%
                break;
            case 11:session.setAttribute("case11",x);                 
            %><jsp:forward page="cpp.jsp?choice=11"/><%
                break;
            case 12:session.setAttribute("case12",x);                 
            %><jsp:forward page="cpp.jsp?choice=12"/><%
                break;
            case 13:session.setAttribute("case13",x);                 
            %><jsp:forward page="cpp.jsp?choice=13"/><%
                break;
            case 14:session.setAttribute("case14",x);                 
            %><jsp:forward page="cpp.jsp?choice=14"/><%
                break;
            case 15:session.setAttribute("case15",x);                 
            %><jsp:forward page="cpp.jsp?choice=15"/><%
                break;
            case 16:session.setAttribute("case16",x);                 
            %><jsp:forward page="cpp.jsp?choice=16"/><%
                break;
            case 17:session.setAttribute("case17",x);                 
            %><jsp:forward page="cpp.jsp?choice=17"/><%
                break;
            case 18:session.setAttribute("case18",x);                 
            %><jsp:forward page="cpp.jsp?choice=18"/><%
                break;
            case 19:session.setAttribute("case19",x);                 
            %><jsp:forward page="cpp.jsp?choice=19"/><%
                break;
            case 20:session.setAttribute("case20",x);                 
            %><jsp:forward page="cpp.jsp?choice=20"/><%
                break;
            case 21:session.setAttribute("case21",x);                 
            %><jsp:forward page="cpp.jsp?choice=21"/><%
                break;
            case 22:session.setAttribute("case22",x);                 
            %><jsp:forward page="cpp.jsp?choice=22"/><%
                break;
            case 23:session.setAttribute("case23",x);                
            %><jsp:forward page="cpp.jsp?choice=23"/><%
                break;
            case 24:session.setAttribute("case24",x);                 
            %><jsp:forward page="cpp.jsp?choice=24"/><%
                break;
            case 25:session.setAttribute("case25",x);                 
            %><jsp:forward page="cpp.jsp?choice=25"/><%
                break;
        }
        
        }catch(Throwable t){out.println("error generated"+ t);}
        %>
        
<% }
else{%><h3>user logged out...plz log in Again</h3><jsp:include page="index.html"/><% }%>