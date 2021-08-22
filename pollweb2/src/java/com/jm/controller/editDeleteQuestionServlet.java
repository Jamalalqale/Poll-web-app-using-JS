/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.controller;

import Items.StudentBean;
import Items.questionnaireUsersItem;
import Items.questionsItem;
import Items.subQuestionsItem;
import com.jm.module.MyDb;
import com.jm.module.addCheckboxQuestion;
import com.jm.module.addShortQuestion;
import com.jm.module.displayQuestions;
import com.jm.module.editDeleteQuestion;


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
@WebServlet(name = "editDeleteQuestionServlet", urlPatterns = {"/editDeleteQuestionServlet"})
public class editDeleteQuestionServlet extends HttpServlet {

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
            
        
         
        // System.out.println("---------question_id"+question_id);

               
     
            
      if (request.getParameter("editQuestionButton") != null) {  
         
          int questionnaire_id = Integer.parseInt(request.getParameter("lastidQuestionnaire"));
          int question_id = Integer.parseInt(request.getParameter("question_id"));
          int question_type = Integer.parseInt(request.getParameter("question_type"));
          String question_text = request.getParameter("question_text");

        if(question_type==1 || question_type==2 || question_type==5|| question_type==6)
        {
            request.setAttribute("question_type", question_type);
             request.setAttribute("question_id", question_id);
             request.setAttribute("question_text", question_text);
             request.getRequestDispatcher("editShorQuestion.jsp").forward(request, response);
            
        }
        
    
         
        
          else  if(question_type==3) // checkbox
        {
            
             request.setAttribute("question_id", question_id);
             request.setAttribute("question_text", question_text);
             
             ArrayList<subQuestionsItem> sub_questionslistById = displayQuestions.displaySubQuestionsById(question_id);
            request.setAttribute("sub_questionslistById", sub_questionslistById);
            
            request.getRequestDispatcher("editCheckboxQuestion.jsp").forward(request, response);
            
        }
        
        
          else  if(question_type==4)  // radio
        {
            
             request.setAttribute("question_id", question_id);
             request.setAttribute("question_text", question_text);
             
            ArrayList<subQuestionsItem> sub_questionslistById = displayQuestions.displaySubQuestionsById(question_id);
            request.setAttribute("sub_questionslistById", sub_questionslistById);
            
            
             request.getRequestDispatcher("editRadioQuestion.jsp").forward(request, response);
            
        }
        
        
        
      
        
          
          

      }
      
      
      else if (request.getParameter("deleteQuestionButton") != null) {
          
           int questionnaire_id =Integer.parseInt(request.getParameter("lastidQuestionnaire")) ;
         String  question_id =request.getParameter("question_id") ;
          
      if(new editDeleteQuestion().deleteQuestion(Integer.parseInt(question_id)))
           
           if(new editDeleteQuestion().deleteSubQuestion(Integer.parseInt(question_id)))
       {
           
           
           
           
   
                    HashMap<String, String> QuestionnaireByIdHashmap = new HashMap<String, String>();
                    QuestionnaireByIdHashmap = displayQuestions.getQuestionnaireById(questionnaire_id);

                    // Get values based on key
                    String var = QuestionnaireByIdHashmap.get("isprivate");
                    System.out.println("name:" + var);

                    ArrayList<questionsItem> questionslist = displayQuestions.displayQuestions(questionnaire_id);
                    request.setAttribute("questionslist", questionslist);

                    //
                    ArrayList<subQuestionsItem> sub_questionslist = displayQuestions.displaySubQuestions();
                    request.setAttribute("sub_questionslist", sub_questionslist);

                    ArrayList<questionnaireUsersItem> questionnaireUserslist = displayQuestions.questionnaireUsers(questionnaire_id);
                    request.setAttribute("questionnaireUserslist", questionnaireUserslist);

                    request.setAttribute("lastidQuestionnaire", questionnaire_id);
                    request.setAttribute("isprivate", Integer.parseInt(QuestionnaireByIdHashmap.get("isprivate")));
                    request.setAttribute("quesionnaireTitle", QuestionnaireByIdHashmap.get("name"));
                    request.getRequestDispatcher("addquestionnaire.jsp").forward(request, response);
        
        
        
        
       }

           else
           
         
           request.getRequestDispatcher("failure.jsp").forward(request, response);
           
           
           
          
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
