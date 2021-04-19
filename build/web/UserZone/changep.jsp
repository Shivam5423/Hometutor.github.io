<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.Cryptography"%>
<%@page import="mypack.DBManager"%>
<% 
String pass,npass,cpass,msg="";
pass=request.getParameter("pass");
npass=request.getParameter("npass");
cpass=request.getParameter("cpass");
if(npass.equals(cpass))
{
    DBManager dm=new DBManager();
    Cryptography cg=new Cryptography();
    String eoldpass,enewpass;
    eoldpass=cg.encryptMyData(pass);
    enewpass=cg.encryptMyData(cpass);
    String uid=session.getAttribute("userid").toString();
    dm.cmd="SELECT pass from Tbl_Login where userid='"+uid+"'";
    ResultSet rs=dm.DQL();
    String dbpass="";
    while(rs.next())
        dbpass=rs.getString("pass");
    if(dbpass.equals(eoldpass))
    {
    dm.cmd="UPDATE Tbl_Login set Pass='"+enewpass+"' where userid='"+uid+"' and Pass='"+eoldpass+"'";
    boolean status=dm.DML();
    if(status==true)
        msg="Password changed successfully.";
    else
    msg="Unable to change password.";
}
    else
    {
        msg="Invalid current password.";
}
}
else

{
    msg="New Password and confirm password must be same.";
    
}
out.print("<script>alert('"+msg+"');window.location.href='ChangePass.jsp';</script>");

%>