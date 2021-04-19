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
        <title>Tution Request</title>
        <!-- Start links -->
        <%@include file="UserLinks.html" %>
              
    </head>
    <body>
         
        
        <div class="container-fluid">
            <!-- header page -->
            <%@include file="UserHeader.jsp" %>
             <!-- End Header Page -->
                <div class="row main" style="min-height: 600px; background-color: cyan;">
                    <div class="col-sm-12">
                         <table id="tbl" style="width:95%;padding:10px;background-color:#ffbfbf;margin:30px;"border="2">
                    
            <%
                DBManager d=new DBManager();
                d.cmd="SELECT *from Tbl_TutionRequest where TutorId='"+uid+"'";
                ResultSet rs=d.DQL();
                int sno=1;
                while(rs.next())
                {
                %>
                <tr style="border-bottom:2px solid red;margin-bottom:5px;">
                    <td colspan="5">
                        <table style="width:100%" border="1">
                            
                                <td>
                                    <span style="color: navy;font-weight: bold;">Sno: </span><%=sno%>
                                </td>
                                 <td>
                                    <span style="color: navy;font-weight: bold;">Subject: </span><%=rs.getString("Subject")%>
                                </td>
                                 <td>
                                     <span style="color: navy;font-weight: bold;">City: </span><%=rs.getString("City")%>
                                </td>
                                <td>
                                    <span style="color: navy;font-weight: bold;">Requested By: </span><%=rs.getString("RequestedBy")%>
                                </td> 
                                <td>
                                  <span style="color: navy;font-weight: bold;">RequestDT: </span><%=rs.getString("RequestDT")%>
                                </td>  
                            </tr>
                            <tr>
                                 <td colspan="6">
                                     <span style="color: navy;font-weight: bold;">Remark:  </span><%=rs.getString("Remark")%>
                                </td>
                                </tr>
                               </table>
                  
                <%
                    sno++;
                }
                %>
      </table>
                    </div> 
                </div>
            <!-- Start Footer -->
            <%@include file="UserFooter.html" %>
              <!-- End Footer -->
        </div> 
    </body>
</html>
