<%-- 
    Document   : SearchTutor
    Created on : 9 Aug, 2019, 3:52:54 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Tutors | Search Tutor</title>
         <%@include file="GeneralLinks.html" %>
         <style>
             span
             {
                 color:maroon;
                 font-weight: bold;
             }
         </style>
    </head>
    <body>
         <div class="container-fluid">
            <%@include file="header.html" %>
            <div class="row main">
                <div class="col-sm-12" style="margin-top:20px;font-size:20px;">
                    <% 
                    String city,subject;
                    city=request.getParameter("city");
                     subject=request.getParameter("subject");
                     DBManager dm=new DBManager();
                     dm.cmd="SELECT *from Tbl_Registration where Subject like '%"+subject+"%' and city like '%"+city+"%'";
                     ResultSet rs=dm.DQL();
                     int count=1;
                     while(rs.next())
                     {
                         if(count%3==0)
                         out.print("<div class='row search' style='margin-top:10px;padding-top:8px;'>");
                         %>
                             <div class="col-sm-4 text-center" style="border:1px solid blue;padding:8px 0px;">
                      <img src="Userpics/<%=rs.getString("picname")%>"
                           style="width:100px;height:100px;border-radius: 5px;
                           border:1px solid blue;" /><br>
                      <span>Tutor Name: </span><%=rs.getString("Name")%> <br>
                      <span>Subject: </span><%=rs.getString("Subject")%> <br>
                      <span>Qualification: </span><%=rs.getString("Qualification")%> <br>
                      <span>Years of Experience: </span><%=rs.getString("experience")%> <br>
                      <span>Teaches for Class: </span><%=rs.getString("classtoteach")%> <br>
                      <a href="TutionRequest.jsp?tid=<%=rs.getString("TutorId")%>"
                         class="btn btn-success text-center" style="width:90%" >Request for Tuition</a>
                             </div>
                      <%
                          if(count%3==0)
                              out.print("</div>");
                     }
                     
                    
                    %>
                </div>
            </div>
                     <%@include file="footer.html" %>
        </div>
    </body>
</html>
