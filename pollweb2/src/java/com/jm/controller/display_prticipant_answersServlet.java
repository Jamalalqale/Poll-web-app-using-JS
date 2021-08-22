/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.controller;

import Items.StudentBean;
import Items.answers;
import Items.participant_id;

import Items.questionnaireUsersItem;
import Items.questionsItem;
import Items.subQuestionsItem;
import com.jm.module.MyDb;
import com.jm.module.addCheckboxQuestion;
import com.jm.module.addShortQuestion;
import com.jm.module.displayQuestions;
import com.jm.module.display_prticipant_answers;


import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
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
@WebServlet(name = "display_prticipant_answersServlet", urlPatterns = {"/display_prticipant_answersServlet"})
public class display_prticipant_answersServlet extends HttpServlet {

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
            
        
         
      

                int questionnaire_id = Integer.parseInt(request.getParameter("lastidQuestionnaire"));
                int pointer=Integer.parseInt(request.getParameter("participant_pointer"));
                String quesionnaireTitle=request.getParameter("quesionnaireTitle");                
                 int participant_length=Integer.parseInt(request.getParameter("participant_length"));
                
                
                    //System.out.println("---------questionnaire_id   "+questionnaire_id);
                    
                    
                      ArrayList<participant_id> participant_token_list =  display_prticipant_answers.get_participant_id(questionnaire_id);
                     
                      
                      
                        if(participant_token_list.size()<1  ){
                           
                    
                     request.getRequestDispatcher("empty_participant_list.jsp").forward(request, response); 
                           
                       }
                        
                        else{
                     // takae the user token where the pointer indicates to it
                      participant_id item3 = new participant_id();
                      item3=participant_token_list.get(pointer);
                      int participant_id = item3.get_id();
            
                                      
                      
                      
                      // grong the questions 
                     ArrayList<questionsItem> questionslist =  displayQuestions.displayQuestions(questionnaire_id);                  
                 
                      
                      // bring the answers of the pointed user token
                       ArrayList<answers> answers_list =  display_prticipant_answers.get_answers(participant_id,questionnaire_id);    
                       
                       
                      String particibant_name= display_prticipant_answers.get_participant_name(participant_id);
                       
       
                    
                       
                      request.setAttribute("participant_pointer", pointer);
                      request.setAttribute("questionslist", questionslist);
                      request.setAttribute("answers_list", answers_list);
                        request.setAttribute("quesionnaireTitle", quesionnaireTitle);
                        request.setAttribute("questionnaire_id", questionnaire_id);
                         request.setAttribute("participant_length", participant_token_list.size());
                           request.setAttribute("particibant_name", particibant_name); 
                      request.getRequestDispatcher("display_participation.jsp").forward(request, response);
                       }
                      
                      
                      
                      
                      
                      
                      /*
                                   for (int i = 0; i < answers_list.size(); i++) {
                                        answers item4 = new answers();
                                        item4 = answers_list.get(i);
                                        System.out.println("---------get_id   "+item4.get_id()  + '\n');
                                        System.out.println("---------get_answer   "+item4.get_answer()+ '\n');
                                        System.out.println("---------get_date_created   "+item4.get_date_created()+ '\n');
                                        System.out.println("---------get_user_token   "+item4.get_user_token()+ '\n');
                                        System.out.println("---------get_ques_id   "+item4.get_ques_id()+ '\n');
                                        System.out.println("---------get_ques_type   "+item4.get_ques_type()+ '\n');
                                        System.out.println("---------get_questionnaire_id   "+item4.get_questionnaire_id()+ '\n');

                                    }
                      */
                      
                      
            
    
         
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
