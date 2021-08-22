/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.module;

import Items.StudentBean;
import Items.questionnaireUsersItem;
import Items.questionsItem;
import Items.subQuestionsItem;
import com.jm.connection.GetConnection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author JOEY
 */
public class displayQuestions {

    public static ArrayList<questionsItem> displayQuestions(int questionnaire_id) {

       // System.out.println("displayQuestions----------: " + questionnaire_id);

        ArrayList<questionsItem> list_questionsItem = new ArrayList<questionsItem>();

        String sql = "Select *  from questions where questionnaire_id =?";

        GetConnection gc = new GetConnection();

        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setInt(1, questionnaire_id);
            gc.rs = gc.ps.executeQuery();

            while (gc.rs.next()) {
                questionsItem items = new questionsItem();
                items.setId(gc.rs.getInt("id"));
                items.setques_text(gc.rs.getString("ques_text"));
                items.setques_type(gc.rs.getString("ques_type"));
                items.setdate_created(gc.rs.getString("date_created"));

                list_questionsItem.add(items);

            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return list_questionsItem;

    }

    public static ArrayList<subQuestionsItem> displaySubQuestions() {

        ArrayList<subQuestionsItem> list_subQuestionsItem = new ArrayList<subQuestionsItem>();

        String sql = "Select *  from sub_questions";

        GetConnection gc = new GetConnection();

        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.rs = gc.ps.executeQuery();

            while (gc.rs.next()) {
                subQuestionsItem items = new subQuestionsItem();
                items.setId(gc.rs.getInt("id"));
                items.setques_id(gc.rs.getInt("ques_id"));
                items.setsub_ques_text(gc.rs.getString("sub_ques_text"));

                list_subQuestionsItem.add(items);

            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return list_subQuestionsItem;

    }

    //--------------------------------------------------------------------------------
    public static ArrayList<questionnaireUsersItem> questionnaireUsers(int questionnaire_id) {

        ArrayList<questionnaireUsersItem> list_questionnaireUsersItem = new ArrayList<questionnaireUsersItem>();

        String sql = "Select *  from questionnaire_users where questionnaire_id =?";

        GetConnection gc = new GetConnection();

        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);
            gc.ps.setInt(1, questionnaire_id);
            gc.rs = gc.ps.executeQuery();

            while (gc.rs.next()) {
                questionnaireUsersItem items = new questionnaireUsersItem();
                items.setid(gc.rs.getInt("id"));
                items.setname(gc.rs.getString("name"));
                items.setemail(gc.rs.getString("email"));
                items.setpassword(gc.rs.getString("password"));
                items.setisenabled(gc.rs.getInt("isenabled"));
                items.setquestionnaire_id(gc.rs.getInt("questionnaire_id"));
                items.setdate_created(gc.rs.getString("date_created"));

                list_questionnaireUsersItem.add(items);

            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return list_questionnaireUsersItem;

    }

    
      public static HashMap getQuestionnaireById(int questionnaire_id) {

        HashMap<String, String>  QuestionnaireByIdHashmap = new HashMap<String, String>();

        String sql = "Select *  from questionnaire where id =?";

        GetConnection gc = new GetConnection();

        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);
            gc.ps.setInt(1, questionnaire_id);
            gc.rs = gc.ps.executeQuery();

             while (gc.rs.next()) {
            QuestionnaireByIdHashmap.put("id", gc.rs.getString("id"));
            QuestionnaireByIdHashmap.put("name", gc.rs.getString("name"));
            QuestionnaireByIdHashmap.put("isenabled", gc.rs.getString("isenabled"));
            QuestionnaireByIdHashmap.put("isprivate",gc.rs.getString("isprivate"));
            QuestionnaireByIdHashmap.put("manager_id",gc.rs.getString("manager_id"));
            QuestionnaireByIdHashmap.put("datecreated", gc.rs.getString("date_created"));

              }
            
            
            

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return QuestionnaireByIdHashmap;

    }
      
      
    ///-------------------------------------------------------------------------------------------  
       public static ArrayList<subQuestionsItem> displaySubQuestionsById(int question_id) {

        ArrayList<subQuestionsItem> list_subQuestionsItem = new ArrayList<subQuestionsItem>();

        String sql = "Select *  from sub_questions where ques_id=?";

        GetConnection gc = new GetConnection();

        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setInt(1, question_id);
            gc.rs = gc.ps.executeQuery();

            while (gc.rs.next()) {
                subQuestionsItem items = new subQuestionsItem();
                items.setId(gc.rs.getInt("id"));
                items.setques_id(gc.rs.getInt("ques_id"));
                items.setsub_ques_text(gc.rs.getString("sub_ques_text"));

                list_subQuestionsItem.add(items);

            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return list_subQuestionsItem;

    }
      
      
       
          public static String  getQustionnaireTitle(int questionnaire_id){
        String sql="Select name  from questionnaire where id=?";
        
        
        
        String name="";
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setInt(1, questionnaire_id);
                    
              gc.rs=gc.ps.executeQuery();
          
              
              
                      while(gc.rs.next()) {  
                
               name=gc.rs.getString("name");  

                      }
       
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return name;
          
    }
       
      
    
          
        public static int  getisprivate(int questionnaire_id){
        String sql="Select isprivate  from questionnaire where id=?";
        
        
        
        int  isenabled=-1;
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setInt(1, questionnaire_id);
                    
              gc.rs=gc.ps.executeQuery();
          
              
              
                      while(gc.rs.next()) {  
                
            isenabled=gc.rs.getInt("isprivate");  
                      }
  
       
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return isenabled;
          
    }
         
          
          
          
          
          
          
          
          
          
          
          
       
}
