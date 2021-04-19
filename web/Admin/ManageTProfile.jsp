<%-- 
    Document   : AdminHome
    Created on : 7 Aug, 2019, 6:55:28 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Zone</title>
        <%@include file="AdminLink.html" %>
        <style>
            table span
            {
                color:blue;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
          
        <%
            if(session.getAttribute("adminid")==null)
            {
                out.print("<script>alert('Sorry! you are not authorise to enter in our website.');window.location.href='../AdminLogin.jsp';</script>");
                
            }
        %>
        
        
        <div class="container-fluid">
            <%@include file="AdminHeader.jsp" %>
            <div class="col-sm-10" style="background-color: white; background-image: url('../images/1.jpg');width: 100%;background-repeat: none;">
                <h1 class="text-center">Tutor's Record</h1><hr/>
                <table style="width: 95%;padding: 15px;background-color: cyan;" border="1">
                    <tr>
                        <th colspan="5" class='text-center'>User Details</th>
                        <th>Delete</th>
                    </tr>
                    <%
                    DBManager dm=new DBManager();
                    dm.cmd="SELECT *from Tbl_Registration order by TutorId desc";
                    ResultSet rs=dm.DQL();
                    int sno=1;
                    while(rs.next())
                    {
                   %>
                   <tr>
                       <td colspan="5">
                           <table style="width: 100%" border="1">
                               <tr>
                                   <td class="text-center">
                                       <img src="../Userpics/<%=rs.getString("picname")%>" style="width: 70px;height: 70px;border-radius: 15px;margin: 5px;"/>
                                   </td>
                                   <td><span>Srno. </span><%=sno%></td>
                                   <td>
                                       <span>TutorId:</span><%=rs.getString("TutorId")%>
                                   </td>
                                   <td>
                                       <span>Name:</span><%=rs.getString("name")%>
                                   </td>
                                   <td>
                                       <span>Gender:</span><%=rs.getString("gender")%>
                                   </td>
                                   <td>
                                       <span>DOB:</span><%=rs.getString("DOB")%>
                                   </td>
                                   <td>
                                       <span>Subject:</span><%=rs.getString("subject")%>
                                   </td>
                               </tr>
                               <tr>
                                   <td>
                                       <span>Qualification:</span><%=rs.getString("qualification")%>
                                   </td>
                                   <td>
                                       <span>Experience:</span><%=rs.getString("experience")%>
                                   </td>
                                   <td>
                                       <span>Class To Teach:</span><%=rs.getString("classtoteach")%>
                                   </td>
                                   <td>
                                       <span>Mobile No:</span><%=rs.getString("mobno")%>
                                   </td>
                                   <td>
                                       <span>Email Id:</span><%=rs.getString("email")%>
                                   </td>
                                   <td>
                                       <span>City:</span><%=rs.getString("City")%>
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="7">
                                       
                                       <span>Address:</span><%=rs.getString("address")%>
                                   </td>
                               </tr>
                           </table>
                       </td>
                       <td>
                           <a href="DeleteUser.jsp?uid=<%=rs.getString("TutorId")%>">Delete</a>
                       </td>
                   </tr>
                   <%
                       sno++;
                    }
                   
                    %>
                </table>
            </div>
        </div>
    <%@include file="AdminFooter.html" %>
    </div>
    </body>
</html>
