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
        <style>
            .drow
            {
                min-height: 160px;
                background-color: ;
                margin-bottom: 5px;
            }
            .dcol
            {
                background-color: red;
                color: white;
                font-size: 25px;
                text-align: center;
                margin: 15px;
                padding: 15px;
                min-height: 160px;
                width: 30%
            }
            .hover
            {
              cursor: pointer;    
            }
            
        </style>
    </head>
    <body>
       
        
        <div class="container-fluid">
            <%@include file="AdminHeader.jsp" %>
            <div class="col-sm-10" style="background-color: white; background-color: cyan;width: 100%;background-repeat: none;">
              <!-- Start Dashboard -->
              <div class="row drow">
                  <div class="dcol">
                      <a href="ManageTProfile.jsp">
                          <img src="../images/mtprofile.png" width="100%" height="158px" title="Manage Tutor Profile" style="margin:0px;padding: 0px;">
                      </a>
                  </div>
                  <div class="dcol">
                       <a href="TutionRequest.jsp">
                          <img src="../images/trequest.jpg" width="100%" height="158px" title="Tution Request">
                      </a>
                  </div>
                  <div class="dcol">
                       <a href="StudentReview.jsp">
                          <img src="../images/review.jpg" width="100%" height="158px" title="Student Review">
                      </a>
                  </div>
                                </div>
              <div class="row drow">
                 <div class="dcol">
                       <a href="CurrentTutions.jsp">
                          <img src="../images/current.png" width="100%" height="158px" title="Current Tution">
                      </a>
                  </div>

                  
                  <div class="dcol">
                       <a href="AdminEnquiry.jsp">
                          <img src="../images/enquiry.png" width="100%" height="158px" title="Enquiry">
                      </a>
                  </div>
                  <div class="dcol">
                      <a href="AdminNotification.jsp">
                          <img src="../images/noti.png" width="100%" height="158px" title="Notification Mgmt">
                      </a>
                  </div>
                
              </div>
              <div class="row drow">
                  <div class="dcol">
                       <a href="StudyMaterial.jsp">
                          <img src="../images/studym.jpeg" width="100%" height="157px" title="Study Material">
                      </a>
                  </div>
                  <div class="dcol">
                       <a href="AdminSMS.jsp">
                          <img src="../images/sms.jpg" width="100%" height="157px" title="Send SMS">
                      </a>
                  </div>
                  <div class="dcol">
                       <a href="AdminChangeP.jsp">
                          <img src="../images/cpass.jpg" width="100%" height="157px" title="Change Password">
                      </a>
                  </div>
                  
              </div>
              
              
              <!-- End Dashboard -->
            </div>
        </div>
    <%@include file="AdminFooter.html" %>
    </div>
    </body>
</html>
