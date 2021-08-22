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
import java.util.List;


public class addRadioQuestion {
    
       public boolean addRadioQuestion(String radioQuestion,int questionnaire_id){
           
   
           
       
           String sql="Insert into questions (ques_text,ques_type,questionnaire_id) values (?,?,?)";
        
           
           
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
              gc.ps.setString(1,radioQuestion);
              gc.ps.setInt(2, 4);    
              gc.ps.setInt(3, questionnaire_id);
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
           
          return false;

          
    }
     
  
       
           public boolean addRadioText(List radioTextList,int lastQuestionId){
      
           
       
           String sql="Insert into sub_questions (ques_id,sub_ques_text) values (?,?)";
        
           
           
        
          GetConnection gc= new GetConnection();
          
          
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
               for (int i = 0; i < radioTextList.size(); i++) {
            String x= (String)radioTextList.get(i);
            
              gc.ps.setInt(1,lastQuestionId);
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
         public static int  seletLastId(){
        
    
            
            int lastid=0;

                
        String sql="SELECT MAX(id) from questions";
        
        
          GetConnection gc= new GetConnection();
    
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              
              gc.rs=gc.ps.executeQuery();
          
              
               while(gc.rs.next()) {
               
                
                lastid=Integer.parseInt(gc.rs.getString("MAX(id)"));  

   }
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
    return lastid;
          
    }
       
  
  
          
          
          
    
    
    

}
