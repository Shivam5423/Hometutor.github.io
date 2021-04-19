/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.sun.javafx.iio.ImageStorage;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// import below package for captcha code
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.*;
import java.io.*;
import javax.imageio.ImageIO;

/**
 *
 * @author Heartless King Raj
 */
public class HumanDetection extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BufferedImage bi=new BufferedImage(150, 50,BufferedImage.TYPE_INT_RGB);
        Graphics2D gr=bi.createGraphics();
        // set background coloor
        gr.setBackground(Color.yellow);
        gr.clearRect(0, 0, 147, 49);
        
        Paint p=new Color(200,100,200);
        Font f=new Font("SansSerif",Font.ITALIC,28);
        
        Color c=new Color(100,0,0);//text color
        
        gr.setPaint(p);
        gr.drawRect(0, 0, 148, 48);
        gr.setColor(c);
        gr.setFont(f);
        String []mycode=new String[]{"mYksS","dhgh3","h4d6T9","gdg6B","a5o5SI","45mWdh","A5t4i","sis6dh","edhb5","39dnd7","gd5j4","2ptuN","cksKa3","8ndhgh","weqcA8","qwert7"};
        Random r=new Random();
        int index=Math.abs(r.nextInt()%mycode.length);
        String code=mycode[index];
        request.getSession().setAttribute("captcha", code);
        // Start:write character in up down
        char[]arr=code.toCharArray();
        int top=28,left=1;
        for(int x=0;x<arr.length;x++)
        {
            left+=20;
            int n=Math.abs(r.nextInt());
            top=n%2==0?(top+3):(top-3);
            if(top<28 && top>48)
                top=28;
            gr.drawChars(arr, x, 1, left, top);
        }
        // End write code up down
        
       // gr.drawString(code, 28, 28);
        gr.dispose();
        response.setContentType("image/png");
        OutputStream os=response.getOutputStream();
        ImageIO.write(bi, "png", os);
        os.close();
        
        
           }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
