<%@page import="mypack.SMSSender"%>
<%@page import="mypack.DBManager"%>
<%@page import="java.util.Date"%>
<%
String name,email,mob,msg,dt;
name=request.getParameter("name");
email=request.getParameter("email");
mob=request.getParameter("mob");
msg=request.getParameter("message");
Date d=new Date();
dt=d.getDate()+"/"+d.getMonth()+"/"+d.getYear()+" - "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
DBManager dm=new DBManager();
dm.cmd="INSERT into Tbl_Enquiry(Name,EmailId,MbNo,Message,EnquiryDT) values('"+name+"','"+email+"','"+mob+"','"+msg+"','"+dt+"')";
boolean status=dm.DML();
if(status==true)
{
String res="Hi "+name+",Thanks for enquiry.we will contact you shortly.\\nRegards-\\nTeam Home Tutor.";

SMSSender ss=new SMSSender();
ss.SendMySMS(mob, res);
msg="Thanks for your enquiry.";
}
else
{
    msg="Sorry! we are unable to save your enquiry.";  
}
out.print("<script>alert('"+msg+"');window.location.href='index.jsp';</script>");
%>