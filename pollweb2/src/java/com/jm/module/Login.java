/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.module;

import com.jm.connection.GetConnection;
import java.nio.charset.Charset;

import java.sql.SQLException;
import java.util.Random;


public  class Login {
    
    public static String user_token=""; 
    
    public boolean validateUser(String uName,String pass){
        
        
        String sql="Select *  from admin where username=?  and password=?";
        
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, uName);
              gc.ps.setString(2, pass);
              gc.rs=gc.ps.executeQuery();
              return gc.rs.next();
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
  
    
    
    
      public static int  auth(String email,String pass,int questionnaire_id){
          
          
          
          //  System.out.println("%%%%%%%%%%%%  "+email+);
           
           
     String sql="Select *  from questionnaire_users where email=?  and password=?";
     
     String sql_manager="Select *  from manager where email=?  and password=?";
     
       String sql_manager_questionnaire="Select *  from questionnaire where id =? and  manager_id=?";
       
       
        String sql_check_manager_submitted="Select *  from submitted_manager where questionnaire_id =? and  manager_id=?";
                
          
      
     int msg_code=-1;
          GetConnection gc= new GetConnection();
          GetConnection gc2= new GetConnection();
           GetConnection gc3= new GetConnection();
           GetConnection gc4= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, email);
              gc.ps.setString(2, pass);
             gc.rs=gc.ps.executeQuery();
          
              
              
             if (!gc.rs.next())// if not  found in Questionnaire users tabel
                 
             {
                 
                 // check if the user is a manager
                 gc2.ps=GetConnection.getMySqlConnection ().prepareStatement(sql_manager);
         
                    gc2.ps.setString(1, email);
                    gc2.ps.setString(2, pass);
                   gc2.rs=gc2.ps.executeQuery();
                 
                   if((!gc2.rs.next()))   // if user not found in manager table              
                   {
                       msg_code=0;
                   }
                   else
                   {
                       
                        gc3.ps=GetConnection.getMySqlConnection ().prepareStatement(sql_manager_questionnaire);
         
                        gc3.ps.setInt(1, questionnaire_id);
                        gc3.ps.setInt(2, gc2.rs.getInt("id"));
                        gc3.rs=gc3.ps.executeQuery();
                        
                        
                         if((!gc3.rs.next()))   // if this manager didn;t create the questionnare              
                            {
                                msg_code=1;
                            }
                         
                         else
                         {
                             gc4.ps=GetConnection.getMySqlConnection ().prepareStatement(sql_check_manager_submitted);
         
                                gc4.ps.setInt(1, questionnaire_id);
                                gc4.ps.setString(2, gc2.rs.getString("id"));
                                gc4.rs=gc4.ps.executeQuery();
                         
                                
                                 if((!gc4.rs.next()))   // if this manager didn;t create the questionnare              
                            {
                                user_token=gc2.rs.getString("token");
                                msg_code= 3; //  success to login  
                            }
                                 
                                 else
                                 {
                                     msg_code= 2 ;//"you already have taken this questionnaire"; 
                                 }
                             
                             
                             
                             
                             
                             
                             
                               
                             
                         }
                   
                   
                      
                       
                   }
             }
           
             
             
             else if (Integer.parseInt( gc.rs.getString("questionnaire_id")) !=questionnaire_id )
                 msg_code=1 ;//"you are not allowed to access this questionnaire";
             else if ( Integer.parseInt( gc.rs.getString("isenabled"))==0 )
                  msg_code= 2 ;//"you already have taken this questionnaire";
             else
             {
                 user_token=gc.rs.getString("token");
                 msg_code= 3; //  success to login             
             
             } 
                 
                 
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return msg_code;
          
    }
      
      
      
      public static String generate_token(){
          
       int leftLimit = 97; // letter 'a'
    int rightLimit = 122; // letter 'z'
    int targetStringLength = 20;
    Random random = new Random();
 
    String generatedString = random.ints(leftLimit, rightLimit + 1)
      .limit(targetStringLength)
      .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
      .toString();
    
    
    return generatedString;
          
          
          
      }
      
      
      
    
    
    
    

}
