
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintWriter"%>

        <%
      String filename =request.getParameter("fname");
      String filepath =request.getRealPath("//Material//"); 
      response.setContentType("APPLICATION/OCTET-STREAM");   
      response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");
      FileInputStream fis = new FileInputStream(filepath + filename);  
      int i;   
      while ((i=fis.read()) != -1) {  
      out.write(i);   
      }   
      fis.close();   
      out.close();  
        %>
