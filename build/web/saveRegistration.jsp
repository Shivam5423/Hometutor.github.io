<%@page import="mypack.SMSSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Cryptography"%>
<%@page import="java.util.Date"%>
<%@page import="mypack.DBManager"%>
<%@page import="mypack.RenameFile"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<% 
String filepath=request.getRealPath("//Userpics");
out.print(filepath);
RenameFile rf=new RenameFile();
MultipartRequest mr=new MultipartRequest(request, filepath,2000000,rf);
String Name,Gender,DOB,SubjectTeach,Quali,Exp,ClassTeach,MobNo,EmailId,PicName,Address,Pass,UserCode,Message,City;
Name=mr.getParameter("name");
Gender=mr.getParameter("gender");
DOB=mr.getParameter("DOB");
City=mr.getParameter("city");
SubjectTeach=mr.getParameter("subject");
Quali=mr.getParameter("qualification");
Exp=mr.getParameter("experience");
ClassTeach=mr.getParameter("class");
MobNo=mr.getParameter("mob");
EmailId=mr.getParameter("emailid");
PicName=rf.MyFileName;
Address=mr.getParameter("address");
Pass=mr.getParameter("pass");
UserCode=mr.getParameter("captcha");
DBManager dm=new DBManager();
Date dt=new Date();
String rdt=dt.getDate()+"_"+dt.getMonth()+"_"+dt.getYear()+"_"+dt.getHours()+"_"+dt.getMinutes()+":"+dt.getSeconds();
String captcha=session.getAttribute("captcha").toString();
if(captcha.equals(UserCode))
{                                                                                                                                                                                          
 dm.cmd="Insert into tbl_registration(name,gender,DOB,subject,qualification,experience,classtoteach,mobno,email,picname,address,City) values('"+Name+"','"+Gender+"','"+DOB+"','"+SubjectTeach+"','"+Quali+"','"+Exp+"','"+ClassTeach+"','"+MobNo+"','"+EmailId+"','"+PicName+"','"+Address+"','"+City+"')";
 out.print(dm.cmd);
 boolean status=dm.DML();
 if(status==true)
 {
     dm.cmd="select Max(TutorId)as rno from tbl_registration";
     ResultSet rs=dm.DQL();
     String uid="";
     while(rs.next())
     {
         uid=rs.getString("rno");
     }
     Cryptography cg=new Cryptography();
     String ePass=cg.encryptMyData(Pass);
     dm.cmd="Insert into tbl_login values('"+uid+"','"+ePass+"','USER')";
     status=dm.DML();
     if(status==true)
     {
         Message="You are registration Successfully."+"Your User ID: "+uid+"and your password is: "+Pass;
         SMSSender ss=new SMSSender();
         String ms="Hi "+Name+",Thanks to join home tutors.your login id is:"+uid+"and your password is:"+Pass+"\\nRegards- Team home tutors chitrakoot";
    ss.SendMySMS(MobNo, ms);
     }
     else
     {
         Message="Registration Failed! Unable to set Login details.";
     }
 }
 else 
 {
     Message="Sorry ! due to some technical error, We are anable to register your acoount.";
 }
}
 else
 {
     Message="Invalid Captcha code,Please try again.";
 }
 out.print("<script>alert('"+Message+"');window.location.href='register.jsp';</script>");
%>