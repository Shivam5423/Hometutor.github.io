<%-- 
    Document   : AdminLogout
    Created on : 10 Aug, 2019, 10:46:19 AM
    Author     :Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Logout</title>
        <%
        session.invalidate();
        %>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='AdminLogin.jsp'",500);
            }
            
        </script>
    </head>
    <body onload="logout()">
    </body>
</html>
