<%-- 
    Document   : Finalize
    Created on : 11 Aug, 2019, 1:48:01 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="AdminLink.html"%>
    </head>
    <body>
       <div class="container-fluid">
            <%@include file="AdminHeader.jsp"%>
            <div class="col-sm-10" style="background-color:white">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4" style="border: 1px solid black; height: 300px;background-color: cyan;">
                        <form method="post" action="processFinalize.jsp">
           <input type="hidden" name="requestid" value="<%=request.getParameter("rid")%>" />
                            <h1 class="text-center" style="margin-top:30px;">Finalize Request</h1><hr style="background-color:red; height:3px;">
                            <textarea class="form-control" name="remark" placeholder="Remark"></textarea>
                            <br>  <input type="submit" value="finalize" class="btn btn-danger form-control">
                        </form>
                    </div>
                </div>
                </div>
       
    </div>
    </body>
    <%@include file="AdminFooter.html" %>
</div>
</html>
