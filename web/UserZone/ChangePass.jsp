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
        <title>Change Password</title>
        <!-- Start links -->
        <%@include file="UserLinks.html" %>
               <!--End links -->
    </head>
    <body>
         
        
        
        <div class="container-fluid">
            <!-- header page -->
            <%@include file="UserHeader.jsp" %>
             <!-- End Header Page -->
                <div class="row main" style="min-height: 600px;">
                    <div class="col-sm-12" style="background-image: url('../images/pass.jpg');background-size:100%;background-repeat: none;">
                        
                         <div class="row" style="min-height: 250px;">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4" style="height: 450px; padding: 20px;border: 1px solid black; margin: 25px 0px;background-color: lightcyan;">
                            <p class="text-center" style="font-size: 30px;  ">
                            <span class="glyphicon glyphicon-user" style="font-size: 30px">
                              Change Password 
                                </span>
                            </p> 
                            <form action='changep.jsp' method="post">
                                <input type="password" name="pass" class="form-control" placeholder="Enter Your Current Password." style="height: 50px; font-size: 18px;" required="required"/>
                                       <br><br>
                                <input type="password" name="npass" class="form-control" placeholder="Enter Your New Password" style="height: 50px; font-size: 18px;" required="required"/>
                                       <br><br>
                                        <input type="password" name="cpass" class="form-control" placeholder="Confirm  Your New Password" style="height: 50px; font-size: 18px;" required="required"/>
                                        <br>
                                        <div class="row">
                                        <div class="col-sm-6">
                                        <input type="submit" class="form-control btn btn-info text-center" name="changepass" value=" Change Password "/>
                                        </div>
                                        <div class="col-sm-6">
                                        <input type="reset" class="form-control btn btn-danger text-center" name="reset" value="Clear All" />
                                        </div>
                        </div>
                            </form>
                        </div>
                       <div class="col-sm-4"></div>
                    </div>
                        
                        
                    </div> 
                </div>
            <!-- Start Footer -->
            <%@include file="UserFooter.html" %>
              <!-- End Footer -->
        </div> 
    </body>
</html>
