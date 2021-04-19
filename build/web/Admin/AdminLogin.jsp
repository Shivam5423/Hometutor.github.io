<%-- 
    Document   : AdminLogin
    Created on : 7 Aug, 2019, 5:43:46 PM
    Author     :Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Zone</title>
        <style>
            input
            {
                width: 98%;
                height: 26px;
                font-size: 18px;
                border-radius: 5px;
                padding: 3px;
            }
            
        </style>
    </head>
    <body>
    <center> <div style="margin: 100px;padding: 20px; background-color: pink; width: 450px; height: 250px; border-radius: 15px;">
            <h1 style="text-align: center;color: navy;">Admin Login</h1> 
            <hr/>
            <form action="alogin.jsp" method="post">
                <input type="text" name="adminid" required="required" placeholder="Admin Id"/>
                <br><br>
                <input type="password" name="pass" required="required" placeholder="Password"/>
                <br><br>
                <input type="submit" value="Login" style="background-color: green;color: white;"/>
                <br><br>       
                </form>
        </div></center>
    </body>
</html>
