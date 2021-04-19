<%-- 
    Document   : TutionRequest
    Created on : 9 Aug, 2019, 8:15:05 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Tutor | Tution Request</title>
        <%@include file="GeneralLinks.html" %>
    </head>
    <body>
       <div class="container-fluid">
            <%@include file="header.html" %>
            <div class="row main">
                <div class="col-sm-12" style="background-image: url('images/Img10.jpeg'); background-size:100%;background-repeat: none;">
                    
                    <div class="col-sm-5" style="min-height: 565px;width: 100%;background-color: pink; border: 1px solid black;padding: 20px;margin:25px 0px;">
                        <h3 class="text-center">Please Fillout Below Details So That We Can Schedule a Best Tution For You.</h3> <hr>
                        <br>
                        <form action='savetuitionrequest.jsp' method="post">
                            <input type="hidden" name="tid" value="<%=request.getParameter("tid")%>"/>
                        <select class="form-control" name='subject'>
                                    <option value="">--Select Subject--</option>
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
                                    <select class="form-control" name='city'>
                                    <option value="">--Select City--</option>
                                    <option>Allahabad</option>
                                    <option>Kaushambi</option>
                                    <option>Chitrakoot</option>
                                    <option>Banda</option>
                                    <option>Lakhnow</option>
                                    <option>Kanpur</option>
                                    <option>Rewa</option>
                                     </select>
                        <br>
                         <input id="name" type="text" name="name" class="form-control"placeholder="Name"required="required"/>
                         <br>
                          <input id="mobno" type="number" name="mobno"class="form-control"placeholder="Contact Number">
                          <br>
                          <textarea id="msg" name="address"  class="form-control"rows="3"style="resize:none"placeholder="Address.."></textarea>
                          <br>
                          <textarea id="msg" name="remark"  class="form-control"rows="3"style="resize:none"placeholder="Reamrk.."></textarea>
                          <br>
                          <input id="saverequest" type="submit" value="Submit Request" class="btn btn-success form-control"/>
                        </form>
                    </div>
                      <div class="col-sm-7"></div>
                </div>
                
            </div>
                 <%@include file="footer.html" %>
        </div>
    </body>
</html>
