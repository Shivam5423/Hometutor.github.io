<%-- 
    Document   : AdminHome
    Created on : 7 Aug, 2019, 6:55:28 PM
    Author     :Lenovo
--%>

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
                <!-- Start : Send SMS -->
                <div class="row" style="margin-top: 30px;">
                <div class="col-sm-2"></div>
                <div class="col-sm-6" style="background-color: cyan;padding: 15px; min-height: 250px;">
                    <h1 class="text-center">Send SMS to Anyone</h1><hr>
                    <form action="processSMS.jsp" method="post">
                        <input type="number" value="<%=request.getParameter("mob")%>" name="mob" placeholder="Mobile No" class="form-control"/><br>
                        <textarea name="msg" class="form-control" rows="4" placeholder="Type Your Message Here.." ></textarea><br>
                        <input type="submit" value="Send SMS" class="btn btn-success"/>
                    </form>
                </div>
                        <div class="col-sm-2"></div>
                </div>
             <!-- End: Send SMS -->   
            </div>
        </div>
    <%@include file="AdminFooter.html" %>
    </div>
    </body>
</html>
