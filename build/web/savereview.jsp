<%@page import="mypack.DBManager"%>
<%@page import="java.util.Date"%>
<% 
String tname=request.getParameter("ftutorname");
String course=request.getParameter("fcourse");
String message=request.getParameter("fmessage");
String name=request.getParameter("fname");
String mobno=request.getParameter("fmobno");
int star=Integer.parseInt(request.getParameter("fstar"));
Date dt=new Date();
String rdt=dt.getDate()+"/"+dt.getMonth()+"/"+dt.getYear()+"-"+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
DBManager dm=new DBManager();
dm.cmd="Insert into Tbl_review(Name,Subject,Message,SubmittedBy,MobNo,StarRating,SubmittedOn) values('"+tname+"','"+course+"','"+message+"','"+name+"','"+mobno+"','"+star+"','"+rdt+"')";
boolean status=dm.DML();
if(status==true)
out.print("Thanks for your valuable feedback.");
else
out.print("Sorry! We are unable to save your feedback");

%>