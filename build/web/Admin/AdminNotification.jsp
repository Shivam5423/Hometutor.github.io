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
    </head>
    <body>
        
        
        
        
        <div class="container-fluid">
            <%@include file="AdminHeader.jsp" %>
            <div class="col-sm-10" style="background-color: white; background-image: url('../images/1.jpg');width: 100%;background-repeat: none;">
                <!-- start notification-->
                 <div class="row" style="margin-top: 30px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-6" style="background-color: cyan;padding: 15px; min-height: 180px;">
                    <h1 class="text-center">Manage Notification</h1><hr>
                    <form action="addNews.jsp" method="post">
                        <textarea name="msg" class="form-control" rows="4" placeholder="Type Notification Message Here.." ></textarea><br>
                        <input type="submit" value="Send Notification" class="btn btn-success"/>
                    </form>
                </div>
                        <div class="col-sm-2"></div>
                </div>
                <!-- end noti-->
                <table border="1" style="background-color: #b1dfbb;width: 100%">
                    <tr>
                        <th>Sno.</th>
                        <th>Notification Msg</th>
                        <th>DateTime</th>
                        <th>Delete</th>
                    </tr>
                    <% 
                    DBManager dm=new DBManager();
                    dm.cmd="SELECT *from Tbl_Notification order by Notification_Id desc";
                    ResultSet rs=dm.DQL();
                    int sno=1;
                    while(rs.next())
                    {%>
                    <tr>
                        <td><%=sno%></td>
                        <td><%= rs.getString("Notification_Msg") %></td>
                        <td><%= rs.getString("Notification_DT") %></td>
                        <td><a href="deleteNews.jsp?nid=<%= rs.getString("Notification_Id") %>">Remove</a></td>
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
