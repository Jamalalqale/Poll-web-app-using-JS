/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.controller;

import Items.StudentBean;
import Items.questionnaireUsersItem;
import Items.questionnairesItem;
import Items.questionsItem;
import Items.subQuestionsItem;
import com.jm.module.EnDisDelQuestinnaire;
import com.jm.module.LoginManager;
import com.jm.module.MyDb;
import com.jm.module.submitAnswers;
import com.jm.module.addShortQuestion;
import com.jm.module.displayQuestions;
import com.jm.module.showAllQuestionnaires;
import com.jm.module.checkquestionnaire;
import com.mysql.cj.xdevapi.JsonArray;


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


import com.jm.module.Login;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author JOEY
 */
@WebServlet(name = "authServlet", urlPatterns = {"/authServlet"})
public class authServlet extends HttpServlet {

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
            
        
         
       // System.out.println("---------new Login().generate_token()    "+new Login().generate_token());

        
          String email = request.getParameter("email");
          String password = request.getParameter("password");
          String questionnaire_token = request.getParameter("questionnaire_token");
          
          
          int questionnaire_id=checkquestionnaire.getId(questionnaire_token);  
         String questionnaire_title=checkquestionnaire.getTitle(questionnaire_token);
     
   
        
        
      // msg= "you already have taken this questionnaire";
        //msg= "you are not allowed to access this questionnaire";
          // msg="not found";
            
        
        
      //  System.out.println("%%%%%%%%%%%%  "+username+"----- "+password);
        
        int msg_code=new Login().auth(email, password,questionnaire_id);
      
        
        
        if (msg_code==0)
            {
            
             request.setAttribute("questionnaire_token", questionnaire_token);
                        request.setAttribute("loginmsg", "User not found");
                       request.getRequestDispatcher("auth.jsp").forward(request, response);
        }
            
        else if (msg_code==1)
             {
            
             request.setAttribute("questionnaire_token", questionnaire_token);
                        request.setAttribute("loginmsg", "you are not allowed to access this questionnaire");
                       request.getRequestDispatcher("auth.jsp").forward(request, response);
        }
            
             else if (msg_code==2)
                  {
            
             request.setAttribute("questionnaire_token", questionnaire_token);
                        request.setAttribute("loginmsg", "you already have taken this questionnaire");
                       request.getRequestDispatcher("auth.jsp").forward(request, response);
        }
                 
                  else if (msg_code==3) 
                
                  {
                      
                    request.setAttribute("user_token",new Login().user_token);  
                    request.setAttribute("question_pointer", 0);
                    request.setAttribute("token", questionnaire_token);
                      request.setAttribute("questionnaire_title", questionnaire_title);
               
                   //
                    ArrayList<questionsItem> questionslist =  displayQuestions.displayQuestions(questionnaire_id);                  
                    request.setAttribute("questionslist", questionslist);
                    
                    
                    //
                    ArrayList<subQuestionsItem> sub_questionslist =  displayQuestions.displaySubQuestions();
                    request.setAttribute("sub_questionslist", sub_questionslist);                 
                  
              
                 request.getRequestDispatcher("questionnaire.jsp").forward(request, response);
                  }
         
         
       /*
         int questionnaireId=checkquestionnaire.getId(token); 

         if( new submitAnswers().submitAnswers(answers,questionnaireId) )
                 request.getRequestDispatcher("thanks.html").forward(request, response);
         else
                request.getRequestDispatcher("failure.jsp").forward(request, response); 

             */
             
            
           
          /*  try {
            JSONArray jsonarray = new JSONArray(answers);
            for (int i = 0; i < jsonarray.length(); i++) {
            JSONObject jsonobject = jsonarray.getJSONObject(i);
               int id = jsonobject.getInt("id");
           // String answer = jsonobject.getString("answer");
            int type = jsonobject.getInt("type");
            
            System.out.println("---------answers:   " +type);
        }
} 
            
            catch (JSONException e) {

                 System.out.println("---------error"+e);
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
