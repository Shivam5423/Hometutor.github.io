<%@page import="mypack.DBManager"%>
<%
String uid,msg;
uid=request.getParameter("uid");
DBManager dm=new DBManager();
dm.cmd="DELETE from Tbl_Registration where TutorId='"+uid+"'";
boolean status=dm.DML();
if(status==true)
msg="User record deleted successfully.";
else
msg="Unable to delete user record.";
out.print("<script>alert('"+msg+"');window.location.href='ManageTProfile.jsp';</script>");

%>