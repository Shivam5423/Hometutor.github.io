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
            <div class="col-sm-10" style="background-color: cyan;">
                <!-- Start Tution Request -->
                
                 <table style="width:95%;padding:10px;background-color:#ffbfbf;margin:30px;"border="2">
                    
            <%
                DBManager dm=new DBManager();
                dm.cmd="SELECT *from Tbl_TutionRequest order by RequestId desc";
                ResultSet rs=dm.DQL();
                int sno=1;
                while(rs.next())
                {
                %>
                <tr style="border-bottom:2px solid red;margin-bottom:5px;">
                    <td colspan="5">
                        <table style="width:100%" border="1">
                            
                                <td>
                                    <span style="font-weight: bold; color: navy;">Request Id:</span><%=rs.getString("RequestId")%>
                                </td>
                                <td>
                                    <span style="font-weight: bold; color: navy;">Tutor Id:</span><%=rs.getString("TutorId")%>
                                </td>
                                 <td>
                                    <span style="font-weight: bold; color: navy;">Subject:</span><%=rs.getString("Subject")%>
                                </td>
                                 <td>
                                     <span style="font-weight: bold; color: navy;">City:</span><%=rs.getString("City")%>
                                </td>
                                <td>
                                  <span style="font-weight: bold; color: navy;">Requested By:</span><%=rs.getString("RequestedBy")%>
                                </td> 
                                 <td>
                                    <span style="font-weight: bold; color: navy;">Contact No:</span><%=rs.getString("ContactNo")%>
                                </td>
                            </tr>
                       
                                <tr>
                                 <td colspan="6">
                                    <span style="font-weight: bold; color: navy;">Address:</span><%=rs.getString("Address")%>
                                </td>
                            </tr>
                            <tr>
                                 <td colspan="5">
                                     <span style="font-weight: bold; color: navy;">Remark:</span><%=rs.getString("Remark")%>
                                </td>
                             
                                <td>
                                  <span style="font-weight: bold; color: navy;">RequestDT:</span><%=rs.getString("RequestDT")%>
                                </td>  
                                </tr>
                               </table>
                    </td>
                <td>
                    <a href="Finalize.jsp?rid=<%=rs.getString("RequestId")%>">Finalize Request</a></td>
                </tr>
                <%
                    sno++;
                }
                %>
      </table>
                
                <!-- End Tution Request -->
            </div>
        </div>
    <%@include file="AdminFooter.html" %>
    </div>
    </body>
</html>
