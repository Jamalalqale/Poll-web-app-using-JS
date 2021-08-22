/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.controller;

import Items.StudentBean;
import com.jm.module.AddManager;
import com.jm.module.Login;
import com.jm.module.MyDb;
import com.jm.module.controlAdmin;
import com.jm.module.editManager;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JOEY
 */
@WebServlet(name = "editManagerServlet", urlPatterns = {"/editManagerServlet"})
public class editManagerServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

        
        
        
        
        
        
        
        
        try (PrintWriter out = response.getWriter()) {

            if (request.getParameter("updateUsername") != null) {

                String id = request.getParameter("tokenField");
                String username = request.getParameter("username");

                if (new editManager().checkIfUsernameExist(username, id)) {

                    
                    
                     request.setAttribute("errorCode", 1);
                     request.getRequestDispatcher("editmanager.jsp").forward(request, response);
                    
                } else if (new editManager().updateUsernameManager(username, id)) {

                    

                 

                    request.getRequestDispatcher("editmanager.jsp").forward(request, response);

                } else {
                    request.getRequestDispatcher("failure.jsp").forward(request, response);
                }

            } 
            
            
            
            else if (request.getParameter("updateEmail") != null) {

                String id = request.getParameter("tokenField");
                String email = request.getParameter("email");

                 if (new editManager().checkIfEmailExist(email, id)) {

                    
                    
                     request.setAttribute("errorCode", 2);
                     request.getRequestDispatcher("editmanager.jsp").forward(request, response);
                    
                }
                
                else if (new editManager().updateEmailManager(email, id)) {
        
           request.getRequestDispatcher("editmanager.jsp").forward(request, response);

                } else {
                    request.getRequestDispatcher("failure.jsp").forward(request, response);
                }

            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            else if (request.getParameter("updatePassword") != null) {

                String id = request.getParameter("tokenField");
                String password = request.getParameter("password");

                if (new editManager().updatePasswordManager(password, id)) {
                    
                    
                    
            request.getRequestDispatcher("editmanager.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("failure.jsp").forward(request, response);
                }

            } else if (request.getParameter("updateName") != null) {

                String id = request.getParameter("tokenField");
                String name = request.getParameter("name");

                if (new editManager().updateNameManager(name, id)) {

                    

           
           
                  request.getRequestDispatcher("editmanager.jsp").forward(request, response);

                } else {
                    request.getRequestDispatcher("failure.jsp").forward(request, response);
                }

            }  


            
            
            
        } catch (IllegalStateException e) {
            throw new IllegalStateException("Cannot find the driver in the classpath!", e);
        }

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
