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
import com.jm.module.updateQuestion;


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
@WebServlet(name = "updateQuestionServlet", urlPatterns = {"/updateQuestionServlet"})
public class updateQuestionServlet extends HttpServlet {

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

               
     
            
      if (request.getParameter("updateShortQuestion") != null) {  
         
  
          
          
          String question_text = request.getParameter("shortQuestion");
          int questionnaire_id = Integer.parseInt(request.getParameter("lastidQuestionnaire"));
          int question_id = Integer.parseInt(request.getParameter("question_id"));


             if( new updateQuestion().updateShortQuestion(question_id, question_text) )
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
      
 
      
          else if (request.getParameter("updateChechboxQuestion") != null) {
              
              
          String question_text = request.getParameter("checkboxQuestion");
          int questionnaire_id = Integer.parseInt(request.getParameter("lastidQuestionnaire"));
          int question_id = Integer.parseInt(request.getParameter("question_id"));

          String[] checkboxText = request.getParameterValues("checkboxText");
          List checkboxTextList = Arrays.asList(checkboxText);
          
          
          
           if(new updateQuestion().updateCheckboxQuestion(question_id, question_text))
               
            if(new updateQuestion().deleteAllSubQuestionByQuesId(question_id) )    
               
               
            if(new updateQuestion().updateCheckboxList(question_id, checkboxTextList) )     
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
      
        else if (request.getParameter("updateRadioQuestion") != null) {
            
            
         String question_text = request.getParameter("radioQuestion");
          int questionnaire_id = Integer.parseInt(request.getParameter("lastidQuestionnaire"));
          int question_id = Integer.parseInt(request.getParameter("question_id"));
            
            
             String[] radioText = request.getParameterValues("radioText");
          List radioTextList = Arrays.asList(radioText);
          
          
          
           if(new updateQuestion().updateRadioQuestion(question_id, question_text))
               
            if(new updateQuestion().deleteAllSubQuestionByQuesId(question_id) )    
               
               
            if(new updateQuestion().updateradioTextList(question_id, radioTextList) )     
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
