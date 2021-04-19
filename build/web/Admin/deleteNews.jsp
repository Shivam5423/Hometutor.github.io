<%@page import="mypack.DBManager"%>
<% 
int nid;
String result;
nid=Integer.parseInt(request.getParameter("nid"));
DBManager dm=new DBManager();
dm.cmd="DELETE from Tbl_Notification where Notification_Id='"+nid+"'";
boolean status=dm.DML();
if(status==true)
result="Notification deleted Successfully.";
else
result="Unable to Delete notification.";
out.print("<script>alert('"+result+"');window.location.href='AdminNotification.jsp';</script>");


%>
