<%-- 
    Document   : register
    Created on : 28 Jul, 2019, 3:47:56 PM
    Author     : Lenovo
--%>

<%@page import="mypack.Cryptography"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Tutors | Tutors Ragistration</title>
         <%@include file="GeneralLinks.html" %>
         <style>
             .form-control
             {
                 margin-bottom: 18px;
             }
         </style>
         <script>
             
           $(document).ready(function(){
               $("#imgrefresh").click(function(){
                   $.get("HumanDetection",null,function(){
                       $("#imgcaptcha").attr("src","http://localhost:8084/Hometutors/HumanDetection");
                   });
               });
           });  
             
             </script>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="header.html" %>
            <div class="row main">
                <div class="col-sm-12">
                    
                    <div class="row register" style="min-height: 400px; padding: 40px;  background-image: url('images/image17.jpg'); background-size:100% 1300px;background-repeat: none;">
                        <div class="col-sm-7">
                          
                            
                        </div>
                        <div class="col-sm-5" style="background-color: lightcyan; padding: 25px 20px;">
                            <h2 class="text-center"> 
                                <span class="glyphicon glyphicon-pencil"></span>Registration</h2>
                                <form action="saveRegistration.jsp" method="post" enctype="multipart/form-data">
                                    <input type="text" name="name" class="form-control" placeholder="Name" required="required"/>
                                    <span class="form-control" style="font-size: 18px"> Gender:&nbsp;&nbsp;
                                        <input type="radio" name="gender" value="Male"/>Male &nbsp;&nbsp;
                                         <input type="radio" name="gender" value="Female"/>Female&nbsp;&nbsp;
                                    </span>
                                    Date Of Birth: 
                                    <input type="date" name="DOB" class="form-control" />
                                    
                                    <select  name="city" class="form-control" >
                                    <option value="">--Select City--</option>
                                    <option>Allahabad</option>
                                    <option>Kaushambi</option>
                                    <option>Chitrakoot</option>
                                    <option>Banda</option>
                                    <option>Lakhnow</option>
                                    <option>Kanpur</option>
                                    <option>Rewa</option>
                                     </select>
                                    
                                    
                                    <select name="subject" class="form-control">
                                        <option value="">--Select subject--</option>
                                        <option>Hindi</option>
                                         <option>English</option>
                                          <option>Mathematics</option>
                                           <option>Science</option>
                                            <option>Social Science</option>
                                    </select>
                                     <select name="qualification" class="form-control">
                                        <option value="">--Highest Qualification--</option>
                                        <option>High School</option>
                                         <option>Intermediate</option>
                                          <option>Under Graduate</option>
                                           <option>Graduate</option>
                                            <option>Post Graduate</option>
                                            
                                
                                        
                                     </select>
                                     <select name="experience" class="form-control">
                                        <option value="">--Years Of Experience--</option>
                                        <option>No Experience</option>
                                         <option>Less Than 6 Months</option>
                                          <option>More Than 6 Months</option>
                                           <option>1 Year</option>
                                            <option>2 Year</option>
                                             <option>3 Year</option>
                                              <option>More Than 3 Years</option>
                                          </select>
                                    
                                     </select>
                                     <select name="class" class="form-control">
                                        <option value="">--Class to teach--</option>
                                        <option>From class 1 to class 5</option>
                                          <option>From class 6 to class 8</option>
                                           <option>From class 9 to class 12</option>
                                            <option>For Graduation</option>
                                             
                                          </select>
                                    
                                    
                                    Mobile No.:
                                     <input type="number" name="mob" class="form-control" placeholder=" Enter Mobile No." required="required"/>
                                     Email Id:
                                      <input type="email" name="emailid" class="form-control" placeholder="Enter EmailId" required="required"/>
                                      Profile Pic.:
                                      <input type="file" name="upic" class="form-control" />
                                      Current Address:
                                      <textarea name="address" class="form-control"  row="3" placeholder="Type Your Address Here..." style="resize:none;"></textarea>
                                       <input type="password" name="pass" class="form-control" placeholder=" Password"/> 
                                        <input type="password" name="cpass" class="form-control" placeholder="Confirm Password"/> 
                                        <span class="form-control" style="height:65px;">Captcha Code:
                                        <img id="imgcaptcha" src="http://localhost:8084/Hometutors/HumanDetection"/>
                                        <img id="imgrefresh" src="images/REFRESH 6.png"  style="width:50px;height: 40px; cursor: pointer" title="Refresh Code" />
                                        </span>
                                         <input type="text" name="captcha" class="form-control" placeholder="Enter Captcha Code Here.."/> 
                                         <div class="col-sm-6">
                                             <input type="submit" value="Register Now" class="btn btn-success form-control" /> 
                                         </div>
                                          <div class="col-sm-6">
                                             <input type="reset" value="Clear All" class="btn btn-success form-control" /> 
                                         </div>
                                      
                                    
                                </form>
                            <hr/>
                        </div>
                    </div>
            </div>
            </div>
                <%@include file="footer.html" %>
        </div>
    </body>
</html>

    
