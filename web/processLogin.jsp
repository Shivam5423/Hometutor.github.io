<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Cryptography"%>
<%@page import="mypack.DBManager"%>
<%
String userid,userpass;    
userid=request.getParameter("uid");
userpass=request.getParameter("pass");
Cryptography cg=new Cryptography();
userpass=cg.encryptMyData(userpass);
DBManager dm=new DBManager();
dm.cmd="SELECT *from Tbl_Login where UserId='"+userid+"' and Pass='"+userpass+"' and Utype='USER'";
ResultSet rs=dm.DQL();
boolean status=false;
while(rs.next())
{
    status=true;
    break;
}
String msg="";
if(status==true)
{
    session.setAttribute("userid",userid);
    out.print("<script>window.location.href='UserZone/Welcome.jsp';</script>");
    
}
else
{
    out.print("<script>alert('Invalid UserId or Password.');window.location.href='login.jsp';</script>");
}
    
%>