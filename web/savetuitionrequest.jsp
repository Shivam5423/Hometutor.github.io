<%@page import="java.util.Date"%>
<%@page import="mypack.DBManager"%>
<%
String tutorid,subject,city,name,mobno,address,remark,msg;
tutorid=request.getParameter("tid");
subject=request.getParameter("subject");
city=request.getParameter("city");
name=request.getParameter("name");
mobno=request.getParameter("mobno");
address=request.getParameter("address");
remark=request.getParameter("remark");
DBManager dm=new DBManager();
Date dt=new Date();
String rdt=dt.getDate()+"_"+dt.getMonth()+"_"+dt.getYear()+"_"+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
dm.cmd="Insert into Tbl_TutionRequest(TutorId,Subject,City,RequestedBy,ContactNo,Address,Remark,RequestDT) values('"+tutorid+"','"+subject+"','"+city+"','"+name+"','"+mobno+"','"+address+"','"+remark+"','"+rdt+"')";
boolean status=dm.DML();
if(status==true)
{
msg="Your Tution Request Save Successfully.";
}
else
{
    msg="Sorry! we are unable to save your Tution Request.";  
}
out.print("<script>alert('"+msg+"');window.location.href='TutionRequest.jsp';</script>");
%>

%>