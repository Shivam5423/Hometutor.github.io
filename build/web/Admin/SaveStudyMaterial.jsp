<%@page import="java.util.Date"%>
<%@page import="mypack.DBManager"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="mypack.RenameFile"%>
<%
    String filepath=request.getRealPath("//Material");
out.print(filepath);
RenameFile rf=new RenameFile();
MultipartRequest mr=new MultipartRequest(request, filepath,2000000,rf);
String subject,title,description,file;
subject=mr.getParameter("subject");
title=mr.getParameter("title");
description=mr.getParameter("description");
file=rf.MyFileName;
DBManager dm=new DBManager();
Date dt=new Date();
String rdt=dt.getDate()+"_"+dt.getMonth()+"_"+dt.getYear()+"_"+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
dm.cmd="INSERT into Tbl_StudyMaterial(SubName,Title,Description,Filename,UploadDT) values('"+subject+"','"+title+"','"+description+"','"+file+"','"+dt+"')";
boolean status=dm.DML();
if(status==true)
out.print("<script>alert('Study Materirial Save Successfully.');window.location.href='StudyMaterial.jsp';</script>");
else
out.print("Sorry! We are unable to save your Study Material");

%>