<%-- 
    Document   : Welcome
    Created on : 3 Aug, 2019, 7:46:23 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Tutions</title>
        <!-- Start links -->
        <%@include file="UserLinks.html" %>
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
            <!-- header page -->
            <%@include file="UserHeader.jsp" %>
             <!-- End Header Page -->
                <div class="row main" style="min-height: 600px; background-color: cyan;">
                    <div class="col-sm-12">
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
                         <th>View Details</th>
                    </tr>
                    
                     <%
                    DBManager d=new DBManager();
                    d.cmd="SELECT *from Tbl_Review order by ReviewId desc";
                    ResultSet rs=d.DQL();
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
            <!-- Start Footer -->
            <%@include file="UserFooter.html" %>
              <!-- End Footer -->
        </div> 
    </body>
</html>
