<%-- 
    Document   : index
    Created on : 27 Jul, 2019, 3:49:21 PM
    Author     : Lenevo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="mypack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Tutors</title>
        <%@include file="GeneralLinks.html" %>
       
    </head>
    <body>
        <div class="container-fluid" >
            <!--Include Header  -->
            <%@include file="header.html"%>
                    <div class="row main">
                         <!-- Start:Search Tution -->
                         <div class="col-sm-12" style="min-height: 35px;background-color: #e63e18;margin:0px;padding:0px;">
                            <form action="SearchTutor.jsp" method="post">
                                
                                    <div class="col-sm-3 text-center" style="font-size: 32px;padding: 10px">
                                    Search A Tutor-
                                    </div>
                                    <div class="col-sm-3" style="padding: 18px;">
                                     <select id="subject" name="subject" class="form-control" style="font-size: 20px;">
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
                                        </div>
                                    <div class="col-sm-3" style="padding: 18px;">
                                    <select id="city" name="city" class="form-control" style="font-size: 20px;">
                                    <option value="">--Select City--</option>
                                    <option>Allahabad</option>
                                    <option>Kaushambi</option>
                                    <option>Chitrakoot</option>
                                    <option>Banda</option>
                                    <option>Lakhnow</option>
                                    <option>Kanpur</option>
                                    <option>Rewa</option>
                                     </select>
                                    </div>
                                    <div class="col-sm-3"style="padding: 16px;margin: 0px;">
                                        <input type="submit" class="form-control" value="Search" style="font-size: 20px;background-color: blue;color: white;" /> 
                                    </div>
                               
                                    
                            </form>
                         </div>
                      <!-- End: search Tution -->
                        <div class="col-sm-12">
                            
                           
                            <!-- Start: Slider portion -->
                            <div class="row">
                               <div class="container-fluid" style="padding:0px;">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" >

      <div class="item active">
        <img src="images/image1.jpg" alt="Los Angeles" style="width:100%; height:500px;">
        <div class="carousel-caption">
          <h3>Welcome To Home Tutors</h3>
          <p>"Make Your Future Bright."</p>
        </div>
      </div>

      <div class="item">
        <img src="images/image2.jpg" alt="Chicago" style="width:100%;  height:500px;">
        <div class="carousel-caption">
          <h3>Home Tutors</h3>
          <p>"Tutors Of Your Choice." </p>
        </div>
      </div>
    
      <div class="item">
        <img src="images/image4.jpg" alt="New York" style="width:100%;  height:500px;">
        <div class="carousel-caption">
          <h3>Home Tutors</h3>
          <p>"Knowledge Is Life And a Cure."</p>
        </div>
      </div>
  
     <div class="item">
        <img src="images/image16.jpg" alt="New York" style="width:100%;  height:500px;">
        <div class="carousel-caption">
          <h3>Home Tutors</h3>
          <p>"The Roots Of Education Are Better."</p>
        </div>
      </div>
 
       <div class="item">
        <img src="images/image6.jpg" alt="New York" style="width:100%;  height:500px;">
        <div class="carousel-caption">
          <h3>Home Tutors</h3>
          <p>"Thankyou Childrens"</p>
        </div>
      </div>
  
   

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
                               </div>

                            </div>
                            <!-- End: Slider Portion-->
                           
                
                    <div class="row news">
                        <div class="col-sm-12" style="min-height: 60px;font-size: 18px; padding:14px 5px; color:mediumslateblue; font-weight: bold;">
                            <marquee>
                                <div class="spinner-grow text-info"></div>
                                 <div class="spinner-grow text-warning"></div>
                            <%
                                DBManager dm=new DBManager();
                                dm.cmd="SELECT *from Tbl_Notification order by Notification_Id desc";
                                ResultSet rs=dm.DQL();
                                while(rs.next())
                                {
                                    out.print("<span style='margin-right:20px'>"+rs.getString("Notification_Msg")+"</span>");
                                }
                                %>
                            </marquee>
                        </div>
                    </div>
                            <div class="row" style="min-height: 200px; background-color: lightpink; font-size: 21px;">
                                <div class="col-sm-12">
                              "Home Tutors.com" provides tuition for all students on a single platform.
                              This portal will help students to search for consultants online and study tuition under the guidance
                              <br>
                                  of expert tutors. This portal also helps the consultants to search for the students by registering their details 
                              on the "Home Tutors.com" portal and providing it to the 
                              <br>
                              respected student who is in the need for the same.
                              <br>
                              As our country is growing day by day, people are too busy in their own world, when they don't have time to even
                              interact with each other in their respected houses,it's hard to
                              <br>
                              believe that they will go out and look for a good and wrathful tutor for their children to secure their future.
                              At this type of situation  "City tutors.com" is playing a vital
                              <br>
                              role in solving  the problem of parents of searching a good consultant for their child...
                              
                                </div>
                            </div>
                        </div>
                        </div>
            <!--Include Footer -->
            <%@ include file="footer.html"  %>
        </div>
        <!-- Start: Enquiry form -->
      <span  id="speq" class="btn btn-info" style="position:fixed;top: 250px;left:-28px; text-transform: uppercase; transform: rotate(90deg); z-index: 1;" onclick="managePopup()">Enquiry</span>
       
        <form action="saveEnquiry.jsp" method="post">
        <div id="dveq" style="background-color: pink;width: 220px; height: 300px;padding: 8px; position: fixed;top:260px; left:0px; border-radius: 0px 20px 20px 0px; display: none; ">
            <p class="text-center" style="background-color: cyan; color:black; margin: 8px; border-radius: 5px;">May i Help You?</p>
            <input type="text" class="form-control" name="name" style="margin-bottom: 5px;" placeholder="Name" required="required"/>
             <input type="email" class="form-control" name="email"  style="margin-bottom: 5px;" placeholder="EmailId" required="required"/>
              <input type="number" class="form-control" name="mob"  style="margin-bottom: 5px;" placeholder="Mobile Number" required="required"/>
              <textarea class="form-control" rows="4" name="message"  style="margin-bottom: 5px; resize: none;" placeholder="Type Your Message Here..." required="required">
               </textarea>
              <input type="submit" value="Submit" class="btn btn-success form-control"/>
        </div>
        </form>
        
        <!-- End: Enquiry form -->
    </body>
</html>
<script>
    function managePopup()
    {
        var dv,sp;
        sp=document.getElementById("speq");
         dv=document.getElementById("dveq");
         var status=dv.style.display.trim();
         if(status=="none")
             dv.style.display="block";
 else
     dv.style.display="none";
    }
    </script>

