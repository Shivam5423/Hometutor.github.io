<%-- 
    Document   : StudyMaterial
    Created on : 11 Aug, 2019, 6:19:26 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Study Material</title>
         <%@include file="GeneralLinks.html" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="header.html" %>
            <div class="row main">
                <div class="col-sm-12" style="background-color: red">
                    <!-- Start -->
                     <h1 class="text-center">Study Material</h1><hr/>
                <table  style="width: 100%;padding: 15px;background-color:yellow;" border="1">
                    <tr>
                        <th class='text-center'>Study Details</th>
                        <th class='text-center'>Download</th>
                    </tr>
                    <%
                    DBManager dm=new DBManager();
                    dm.cmd="SELECT *from Tbl_StudyMaterial order by MaterialId desc";
                    ResultSet rs=dm.DQL();
                    int sno=1;
                    while(rs.next())
                    {
                   %>
                   <tr>
                       <td>
                           <table style="width: 100%" border="1">
                               <tr colspan="5">
                                   <td class="text-center">
                                       <img src="Material/<%=rs.getString("Filename")%>" style="width: 70px;height: 70px;border-radius: 15px;margin: 5px;"/>
                                   </td>
                                   <td><span style="color: navy;font-weight: bold;">Srno. </span><%=sno%></td>
                                   <td>
                                       <span style="color: navy;font-weight: bold;">MaterialId: </span><%=rs.getString("MaterialId")%>
                                   </td>
                                   <td>
                                       <span style="color: navy;font-weight: bold;">Subject Name: </span><%=rs.getString("SubName")%>
                                   </td>
                                   <td>
                                       <span style="color: navy;font-weight: bold;">Title: </span><%=rs.getString("Title")%>
                                   </td>
                                   <td>
                                         <span style="color: navy;font-weight: bold;">Upload On: </span><%=rs.getString("UploadDT") %>
                                    </td>
                               <tr>
                                   <td colspan="6">
                                       <span style="color: navy;font-weight: bold;">Description: </span><%=rs.getString("Description")%>
                                   </td>
                               </tr>
                               
                           </table>
                                   </td>        
                       <td class='text-center'>
                           <a href="Download.jsp?fname=<%=rs.getString("Filename")%>">Download</a>
                      </td>
                     </tr>
                   <%
                       sno++;
                    }
                   
                    %>
                           </table>
                    <!-- End -->
                     </div>
            </div>
                <%@include file="footer.html" %>
        </div>
    </body>
</html>
