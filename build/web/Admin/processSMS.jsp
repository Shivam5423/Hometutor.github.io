<%@page import="mypack.SMSSender"%>
<% 
String mob,msg,result;
mob=request.getParameter("mob");
msg=request.getParameter("msg");
SMSSender ss=new SMSSender();
boolean status=ss.SendMySMS(mob, msg);
if(status==true)
result="SMS Sent Successfully.";
else
result="Unable to Send SMS.";
out.print("<script>alert('"+result+"');window.location.href='AdminSMS.jsp';</script>");


%>