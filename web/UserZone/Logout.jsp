<%
session.invalidate();
%>
<html>
    <head>
        <script>
            function keepMeLogout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp';",300);
            }  
        </script>
    </head>
    <body onload="keepMeLogout()">
        
    </body>
</html>

