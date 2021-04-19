<%@page import="mypack.DBManager"%>
<%! String picpath,uname;%>
 <%
            if(session.getAttribute("userid")==null)
            {
                out.print("<script>alert('Sorry! you are not authorise to enter in our website.');window.location.href='../login.jsp';</script>");
                
            }
            DBManager dm=new DBManager();
            String uid=session.getAttribute("userid").toString();
            String []ar=dm.getNameAndPhoto(uid);
            uname=ar[0];
            picpath=ar[1];
        %>



<div class="row">
    <div class="col-sm-12 menu" style="max-height: 40px;background-color: cyan;padding: 0px;margin: 0px;">
    
        <nav class="navbar navbar-expand-sm bg-cyan navbar-dark text-center" style="padding-top:3px">
  <!-- Brand -->
  <h4> Home Tutor-Tutors @ Your Doorsteps... </h4>
  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <!-- Links -->
  <ul class="navbar-nav" style="color: black; padding-top:3px;">
    <li class="nav-item">
      <a class="nav-link" href="Welcome.jsp" style="color: black;padding-top:3px;">Home</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="StudentReview.jsp" style="color: black; padding-top:3px">Student Review</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="TutionRequest.jsp" style="color: black; padding-top:3px">Tution Request</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: black; padding-top:3px">
        Setting
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="ChangePass.jsp">Change Password</a>
        <a class="dropdown-item" href="Logout.jsp">Logout</a>
      </div>
    </li>
  </ul>
</nav>
        
    </div> 
</div>
                
                <div class="row flash" style="min-height: 180px;background-color: yellow;color: white;">
                    <div class="col-sm-10" style="margin: 0px; padding: 0px;">
                        <embed src="../images/banner.swf" width="100%" height="180px" style="padding: 0px;margin: 0px;"/>
                    </div>
                        <div class="col-sm-2 pic">
                           <img id="upic" src="../Userpics/<%=picpath%>" title="User Picture" style="max-height:150px; width: 100%; border-radius: 50%;"/>
                           <br>
                           <span style="color: black;"> <%=uname%></span>
                        </div>
                    </div>
                <div class="row udetails text-center" style="min-height: 25px;; background-color: windowframe;">
                    <div class="col-sm-4"></div>
                     <div class="col-sm-4"></div>
                      <div class="col-sm-4"></div>
                </div>
            