<%@page import="java.util.Date"%>
<%@page import="mypack.DBManager"%>
<%
String remark,requestid,fdt,msg;
requestid=request.getParameter("requestid");
remark=request.getParameter("remark");
Date dt=new Date();
fdt=dt.getDate()+"/"+dt.getMonth()+"/"+dt.getYear()+" - "+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
DBManager dm=new DBManager();
dm.cmd="Insert into Tbl_Final(Requestid,Remark,FDT) values('"+requestid+"','"+remark+"','"+fdt+"')";
boolean status=dm.DML();
if(status==true)
msg="Tuition Request Finalized successfully.";
else
msg="Unable to finalize tuition Request";
out.print("<script>alert('"+msg+"');window.location.href='TutionRequest.jsp';</script>");
%>