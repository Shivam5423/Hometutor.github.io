<%-- 
    Document   : Welcome
    Created on : 3 Aug, 2019, 7:46:23 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome User</title>
        <!-- Start links -->
        <%@include file="UserLinks.html" %>
               <!--End links -->
    </head>
    <body>
        
        <%
            if(session.getAttribute("userid")==null)
            {
                out.print("<script>alert('Sorry! you are not authorise to enter in our website.');window.location.href='../login.jsp';</script>");
                
            }
        %>
        <div class="container-fluid">
            <!-- header page -->
            <%@include file="UserHeader.jsp" %>
             <!-- End Header Page -->
                <div class="row main" style="min-height: 600px; background-color: greenyellow;">
                    <div class="col-sm-12" style="background-image: url('../images/Img2.jpg'); background-size:100%;background-repeat: none;"></div> 
                </div>
            <!-- Start Footer -->
            <%@include file="UserFooter.html" %>
              <!-- End Footer -->
        </div> 
    </body>
</html>
