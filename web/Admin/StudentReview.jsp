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
         <script>
            
            $(document).ready(function(){
                $("#tbl tr:odd").css("background-color","yellow");
                $("#tbl tr:even").css("background-color","silver");
                $("#tbl tr:first").css("background-color","green");
                $("#tbl tr:first").css("color","white");
                $(".spquery").click(function(){
                   var ntr=$(this).parents("tr").next();
                   ntr.fadeToggle(2000);
                });
            });
            </script>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="AdminHeader.jsp" %>
            <div class="col-sm-10" style="background-color: lightgreen;">
                 <!-- Start Review -->
                <h2 class="text-center">Student Review</h2> <hr>
                <table id="tbl" border="1" style="width: 100%; font-size: 15px;">
                    <tr>
                        <th>Sno.</th>
                        <th>Tutor's Name</th>
                        <th>Subject</th>
                        <th>Name</th>
                        <th>Mobile No.</th>
                        <th>Starrating</th>
                        <th>Asked On</th>
                        <th>Revert</th>
                         <th>View Details</th>
                    </tr>
                    
                     <%
                    DBManager dm=new DBManager();
                    dm.cmd="SELECT *from Tbl_Review order by ReviewId desc";
                    ResultSet rs=dm.DQL();
                    int x=1;
                    while(rs.next())
                    {
                        %>
                        <tr>
                            <td><%=x%></td>
                            <td><%=rs.getString("Name") %></td>
                             <td><%=rs.getString("Subject") %></td>
                             <td><%=rs.getString("SubmittedBy") %></td>
                              <td><%=rs.getString("MobNo") %></td>
                              <td><%=rs.getString("StarRating") %></td>
                              <td><%=rs.getString("SubmittedOn") %></td>
                              <td><a href="AdminSMS.jsp?mob=<%=rs.getString("MobNo")%>">Reply</a></td>
                              <td><span class="spquery" style="cursor:pointer;">View Query</span></td>
                        </tr>
                        <tr class="trmsg" style="display: none">
                            <td colspan="9" ><span style="color: green;font-size: 17px;">Query:</span><%=rs.getString("Message") %></td>
                        </tr>
                        <%
                            x++;
                    }
                    %>
                    
                </table>
                <!-- End Review -->
            </div>
        </div>
    <%@include file="AdminFooter.html" %>
    </div>
    </body>
</html>
