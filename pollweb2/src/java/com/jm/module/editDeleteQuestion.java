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
public class editDeleteQuestion {
    
    
    
    
    public boolean deleteQuestion (int question_id){
        
         String sql=" DELETE FROM `questions` WHERE id=?";
           
        
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
    
    
    
    public boolean deleteSubQuestion (int question_id){
        
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
