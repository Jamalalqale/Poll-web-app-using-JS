/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.module;

import com.jm.connection.GetConnection;
import java.sql.SQLException;

/**
 *
 * @author JOEY
 */
public class EnDisDelQuestinnaire {
    
    
    
    
    public boolean enableQuesionnaire (int questionnaire_id){
        
                String sql = "Update questionnaire set isenabled=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setInt(1, 1);
            gc.ps.setInt(2, questionnaire_id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return false;
    }
    
    
       public boolean disableQuesionnaire (int questionnaire_id){
        
        

              String sql = "Update questionnaire set isenabled=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setInt(1, 0);
            gc.ps.setInt(2, questionnaire_id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }
        
        
        
        
        
        return false;
    }
       
       
       
          public boolean deleteQuesionnaire (int questionnaire_id){
        
        
              
                         String delQuestionnaire_sql = "DELETE questionnaire.* , questionnaire_users.*  FROM questionnaire  LEFT JOIN questionnaire_users \n" +
"                      on questionnaire.id= questionnaire_users.questionnaire_id\n" +
"                      where questionnaire.id =?";
                         
              String delQuestions_sql = "DELETE questions.* , sub_questions.*  FROM questions  LEFT JOIN sub_questions  \n"
                      + "on questions.id= sub_questions.ques_id\n"
                      + "where questions.questionnaire_id = ?";
              
              String delUserQuestionnaire_sql = "delete from  questionnaire_users  where questionnaire_id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(delQuestionnaire_sql);            
            gc.ps.setInt(1, questionnaire_id);  
            gc.ps.executeUpdate();
            
            
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(delQuestions_sql);            
            gc.ps.setInt(1, questionnaire_id);       
            gc.ps.executeUpdate();
            
           
            
            
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }
        
        
              
              
              
        
        return false;
        
        
        
    }
          
          
    
    
}
