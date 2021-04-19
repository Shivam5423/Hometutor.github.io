<%@page import="mypack.DBManager"%>
<%@page import="java.util.Date"%>
<%
String msg,result,ndt;
msg=request.getParameter("msg");
Date dt=new Date();
ndt=dt.getDate()+"/"+dt.getMonth()+"/"+dt.getYear()+"-"+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
DBManager dm=new DBManager();
dm.cmd="Insert into Tbl_Notification(Notification_Msg,Notification_DT) values('"+msg+"','"+ndt+"')";
boolean status=dm.DML();
if(status==true)
result="Notification saved successfully.";
else
result="unable to save Notification.";
out.print("<script>alert('"+result+"');window.location.href='AdminNotification.jsp';</script>");

%>