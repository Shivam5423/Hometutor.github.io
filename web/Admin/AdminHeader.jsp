<%
            if(session.getAttribute("adminid")==null)
            {
                out.print("<script>alert('Sorry! you are not authorise to enter in our website.');window.location.href='../AdminLogin.jsp';</script>");
                
            }
        %>

<style>
    #mymenu li
    {
        width: 100%;
        background-color:pink ;
        padding: 5px 15px;
        border-bottom: 1px solid white;
        margin: 0px;
    }
    #mymenu
    {
        list-style-type: none;
        margin: 0px;
        padding-inline-start:0px;
    }
    #mymenu li a
    {
        color: navy;
        font-size: 30px;
    }
    
</style>
<div class="row header" style="min-height: 130px; background-color:pink; color: white;font-size: 40px;">
    <div class="col-sm-2" style="margin:0px; padding: 0px;">
        <img src="../images/Logo.png" height="130px" width="100%" padding="0px" margin="0px">
        
    </div>
    <div class="col-sm-10 text-center" style="color:navy;padding-top:10px;">
       Home Tutors-Welcome to Admin Zone
        <br>
        <p class="text-right" style="font-size: 26px;color: white;">
            Tutor @ your doorsteps
        </p>
    </div>
</div>
<div class="row main" style="min-height: 600px;background-color: pink;">
    <div class="col-sm-2 menu" style="margin:0px; padding: 0px;">
        <ul id="mymenu">
            <li><a href="AdminHome.jsp">Home</a></li>
            <li><a href="ManageTProfile.jsp">Manage Tutor Profile</a></li>
            <li><a href="TutionRequest.jsp">Tution Request</a></li>
                 <li><a href="StudentReview.jsp">Student Review</a></li>
                 <li><a href="AdminEnquiry.jsp">Enquiry</a></li>
                 <li><a href="AdminNotification.jsp">Notification Mgmt</a></li>
                 <li><a href="StudyMaterial.jsp">Study Material</a></li>
                 <li><a href="AdminSMS.jsp">Send SMS</a></li>
                 <li><a href="AdminChangeP.jsp">Change Password</a></li>
                 <li><a href="AdminLogout.jsp">Logout</a></li>
            
        </ul>
        
    </div>
