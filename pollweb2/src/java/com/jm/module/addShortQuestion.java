/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.module;

import Items.StudentBean;
import com.jm.connection.GetConnection;

import java.sql.SQLException;
import java.util.ArrayList;


public class addShortQuestion {
    
       public boolean addShortQuestion(String uName, int questionnaire_id){
           
           
           
           
           
              // System.out.println("------------------"+uName); 
           
           
       
           String sql="Insert into questions (ques_text,ques_type,questionnaire_id) values (?,?,?)";
        
           
           
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
              gc.ps.setString(1,uName);
              gc.ps.setInt(2, 1); 
               gc.ps.setInt(3, questionnaire_id); 
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
           
          return false;

          
    }
     
  
       
       
  
  
          
          
          
    
    
    public boolean addNumberQuestion(String uName, int questionnaire_id){
           
           
           
           
           
              // System.out.println("------------------"+uName); 
           
           
       
           String sql="Insert into questions (ques_text,ques_type,questionnaire_id) values (?,?,?)";
        
           
           
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
              gc.ps.setString(1,uName);
              gc.ps.setInt(2, 5); 
               gc.ps.setInt(3, questionnaire_id); 
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
           
          return false;

          
    }
     
    
    
    
    
    
        
    public boolean addDateQuestion(String uName, int questionnaire_id){
           
           
           
           
           
              // System.out.println("------------------"+uName); 
           
           
       
           String sql="Insert into questions (ques_text,ques_type,questionnaire_id) values (?,?,?)";
        
           
           
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
              gc.ps.setString(1,uName);
              gc.ps.setInt(2, 6); 
               gc.ps.setInt(3, questionnaire_id); 
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
           
          return false;

          
    }
    
    
    
    

}
