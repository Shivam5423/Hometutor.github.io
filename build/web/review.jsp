<%-- 
    Document   : review
    Created on : 28 Jul, 2019, 3:46:50 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
        .form-control
            {
                margin-bottom: 18px;
            }
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Tutors | Review</title>
         <%@include file="GeneralLinks.html" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="header.html" %>
            <div class="row main">
                <div class="col-sm-12" style="background-image: url('images/feedb.jpg'); background-size:100%;background-repeat: none;">
                     <div class="col-sm-6" >
                         
                    </div>
                    <div class="col-sm-6"style="background-color:lightcyan;padding:0px; margin: 0px;">
                        <center><h1 class="glyphicon glyphicon-pencil">Tutor's Feedback</h1></center><hr>
                        <select id="tutorname" name="tutorname" class="form-control">
                            <option value="">--Tutor's name--</option>
                            <option>Vinay Tiwari</option>
                            <option>Maneesh upadhyay</option>
                            <option>Amit Mishra</option>
                            <option>Atul Tripathi</option>
                            <option>Adarsh Singh</option>
                        </select>
                        <select id="course" name="course" class="form-control">
                                    <option value="">--Subject--</option>
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
                        <textarea id="message" name="message"  class="form-control"rows="3"style="resize:none"placeholder="Write your Feedback"></textarea>
                        <h3>Star Rating</h3>
                       
                        <div id="dvstar" >
                            <img data-star="1" class="rating" src="images/plainstar.png"/>
                            <img data-star="2" class="rating" src="images/plainstar.png"/>
                            <img data-star="3" class="rating"  src="images/plainstar.png"/>
                            <img data-star="4"  class="rating" src="images/plainstar.png"/>
                            <img data-star="5"  class="rating" src="images/plainstar.png"/>
                            <input type="hidden" id="star" name="star" />
                        </div>
                         <input id="name" type="text" name="name" class="form-control"placeholder="Name" required="required"/>
                          <input id="mobno" type="number" name="Mobno"class="form-control"placeholder="Mobile Number" required="required">
                          <input id="btnsave" type="button" value="Save Your Feeedback" class="btn btn-success form-control" onclick="validateData()"/>
                    
                    </div>
            
            </div>
            </div>
                <%@include file="footer.html" %>
        </div>
    </body>
</html>
<style>
    .rating
    {
        width: 35px;
        height: 35px;
        cursor: pointer;
    }
</style>
<script>
  $(document).ready(function(){
      $(".rating").click(function(){
          var star=$(this).attr("data-star");
          $(".rating").each (function(x){
              if(x<star)
                  $(this).attr("src","images/colorstar.png");
              else
                  $(this).attr("src","images/plainstar.png");
              
          });
          $("#star").val(star);
      });
      //to save review 
      $("#btnsave").click(function(){
        var tutorname,course,message,starrating,name,mobno;
        tutorname=$("#tutorname").val();
         course=$("#course").val();
          message=$("#message").val();
            starrating=$("#star").val();
            name=$("#name").val();
            mobno=$("#mobno").val();
           
        var mydata={ftutorname:tutorname,fcourse:course,fmessage:message,fstar:starrating,fname:name,fmobno:mobno};
        $.get("savereview.jsp",mydata,function(res){
            alert(res);
           $("#tutorname").val(""); 
           $("#course").val("");
           $("#message").val("");
           $(".rating").attr("src","images/plainstar.png");
           $("#name").val("");
           $("#mobno").val("");
        });
      });
  });  
    
</script>
