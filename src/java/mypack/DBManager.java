/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

/**
 *
 * @author Heartless King Raj
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
public class DBManager {

    Connection con;
    boolean status;
   public String cmd;

    public  DBManager() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HTDB", "root", "");
        } catch (Exception e) {
            System.err.println(e);
            con = null;

        }
       
    }
public boolean DDL()
{
    try {
        Statement stmt=con.createStatement();
        stmt.execute(cmd);
        status=true;
    } catch (Exception e) {
        System.err.println(e);
        status=false;
    }   
    return status;
}
public boolean DML()
{
    try {
        Statement stmt=con.createStatement();
        stmt.executeUpdate(cmd);
        status=true;
    } catch (Exception e) {
       System.err.println(e);
       status=false;
    }
    return status;
}    
//for DQL() select......................................................
public ResultSet DQL()
{
   ResultSet rs; try {
     Statement stmt=con.createStatement();
     rs=stmt.executeQuery(cmd);
     
    } catch (Exception e) {
        System.err.println(e);
         rs = null;
    }
        
    return rs;
} 
public String[] getNameAndPhoto(String uid)
{
    cmd="SELECT name,picname from Tbl_Registration where TutorId='"+uid+"'";
    String []arr=new String[2];
    ResultSet r=DQL();
    try
    {
    while(r.next())
    {
        arr[0]=r.getString("name");
        arr[1]=r.getString("picname");
    }
}
catch(Exception e)
{
    
}
return arr;
}
}
