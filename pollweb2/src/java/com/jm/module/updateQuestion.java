/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.module;

import com.jm.connection.GetConnection;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author JOEY
 */
public class updateQuestion {
    
    
    
    
    
    public boolean updateShortQuestion (int question_id, String ques_text){
        
           String sql = "Update questions set ques_text=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setString(1, ques_text);
            gc.ps.setInt(2, question_id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }
        
        
        
        
        return false;
        
        
    }
    
    
      public boolean updateCheckboxQuestion (int question_id, String ques_text){
        
      String sql = "Update questions set ques_text=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setString(1, ques_text);
            gc.ps.setInt(2, question_id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }
        
        
        
        
        return false;
        
    }
      
      
        public boolean updateCheckboxList (int question_id, List checkboxTextList){
            
                
           String sql="Insert into sub_questions (ques_id,sub_ques_text) values (?,?)";
                  
          GetConnection gc= new GetConnection();
          
          
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
               for (int i = 0; i < checkboxTextList.size(); i++) {
            String x= (String)checkboxTextList.get(i);
            
              gc.ps.setInt(1,question_id);
              gc.ps.setString(2, x);         
              gc.ps.executeUpdate();
              
               }
              
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
          
        
        
        
        return false;
        
    }
        
        
        //--------------------------
        
          public boolean updateRadioQuestion (int question_id, String ques_text){
        
      String sql = "Update questions set ques_text=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setString(1, ques_text);
            gc.ps.setInt(2, question_id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }
        
        
        
        
        return false;
        
    }
      
      
        public boolean updateradioTextList (int question_id, List radioTextList){
            
                
           String sql="Insert into sub_questions (ques_id,sub_ques_text) values (?,?)";
                  
          GetConnection gc= new GetConnection();
          
          
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
               for (int i = 0; i < radioTextList.size(); i++) {
            String x= (String)radioTextList.get(i);
            
              gc.ps.setInt(1,question_id);
              gc.ps.setString(2, x);         
              gc.ps.executeUpdate();
              
               }
              
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
          
        
        
        
        return false;
        
    }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        public boolean deleteAllSubQuestionByQuesId (int question_id){
            
            
            
                String sql=" DELETE FROM `sub_questions` WHERE ques_id=?";
           
        
          GetConnection gc= new GetConnection();
          try {
             gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setInt(1, question_id);        
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
        
        
        
        
        
        
        return false;
        
        
            
            
        }
    
    
    
    
    
    
    
    
    
    
    
}
