<%-- 
    Document   : login
    Created on : 28 Jul, 2019, 3:48:18 PM
    Author     :Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Tutors | Login</title>
         <%@include file="GeneralLinks.html" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="header.html" %>
            <div class="row main">
                <div class="col-sm-12" style="background-image: url('images/20.jpg'); background-size:100%;background-repeat: none;">
                    <!-- Start login box -->
                    <div class="row login" style="min-height: 250px;">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4" style="height: 420px; padding: 20px;border: 1px solid black; margin: 25px 0px;">
                            <p class="text-center" style="font-size: 30px;  ">
                            <span class="glyphicon glyphicon-user" style="font-size: 30px"></span>
                              Login User  
                                
                            </p> 
                            <form action='processLogin.jsp' method="post">
                                <input type="text" name="uid" class="form-control" placeholder="Enter UserId" style="height: 50px; font-size: 18px;" required="required"/>
                                       <br><br>
                                <input type="password" name="pass" class="form-control" placeholder="Enter Password" style="height: 50px; font-size: 18px;" required="required"/>
                                       <br><br>
                                <input type="submit" value="Login" class="btn btn-info form-control" style="height: 50px;font-size: 18px;" />
                                <br>
                                <div class="col-sm-6" style="padding-top: 10px;">
                                    <a href="forgotpass.jsp" style="color: maroon">
                                        Forgot Password
                                    </a>   
                                </div>
                                <div class="col-sm-6" style="padding-top: 10px;">
                                    <a href="register.jsp" style="color: blue;">
                                       New user? Register here..
                                    </a>   
                                </div>
                            
                            </form>
                        </div>
                       <div class="col-sm-4"></div>
                    </div>
                    <!-- End: login box -->
            </div>
            </div>
                <%@include file="footer.html" %>
        </div>
    </body>
</html>

