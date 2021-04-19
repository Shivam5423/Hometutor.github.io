<%-- 
    Document   : AdminHome
    Created on : 7 Aug, 2019, 6:55:28 PM
    Author     : Lenovo
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
        
          
             <div class="col-sm-10 text-center" style="background-color: lightgreen;">
                 <div class="row" style="padding:20px;margin: 25px 0px;">
                 <div class="col-sm-2"></div>
                <div class="col-sm-6" style="background-color:lightcyan;padding:0px; margin: 0px;height: 400px;">
                        <center><h1 class="glyphicon glyphicon-pencil">Upload Study Material</h1></center><hr>
                       
                        <form action='SaveStudyMaterial.jsp' method="post" enctype="multipart/form-data">  
                            <select id="course" name="subject" class="form-control">
                                    <option value="">--Subject Name--</option>
                                    <option>Hindi</option>
                                    <option>Chemistry</option>
                                    <option>physics</option>
                                    <option>Sanskrit</option>
                                    <option>Social study</option>
                                    <option>Mathematics</option>
                                    <option>English</option>
                                    <option>Science</option>
                                    <option>Computer</option>
                        </select>
                        <br>
                        <input id="title" type="text" name="title" class="form-control"placeholder="Title"/>
                        <br>
                         <input id="description" type="text" name="description" class="form-control"placeholder="Description"/>
                         <br>
                         <input type="file" name="sfile" class="form-control" />
                         <br>
                          <input id="upload" type="submit" value="Upload" class="btn btn-success form-control"/>
                        </form>
                    </div>
                 <div class="col-sm-2"></div>
             </div>
        </div>
    <%@include file="AdminFooter.html" %>
    </div>
    </body>
</html>
