/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.module;

import com.jm.connection.GetConnection;
import java.sql.SQLException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author JOEY
 */
public class submitAnswers {
    
    
       
    public static int  get_participant_id(String user_token){
        String sql_user="Select id  from questionnaire_users where token=?  ";
        String sql_manager="Select id  from manager where token=?  ";
        
        
        
        int userId=0;
          GetConnection gc= new GetConnection();
          GetConnection gc2= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql_user);
              gc.ps.setString(1, user_token);
              gc.rs=gc.ps.executeQuery();
              
              
               if(gc.rs.next()) 
                userId=gc.rs.getInt("id");  

              
               
               
               
               else {
                   gc2.ps=GetConnection.getMySqlConnection ().prepareStatement(sql_manager);
              gc2.ps.setString(1, user_token);
              gc2.rs=gc2.ps.executeQuery();
                  
              if (gc2.rs.next())
                
                 userId=gc2.rs.getInt("id");  

              
                   
               }
       
              
              
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return userId;
          
    }
    
    
    
    public boolean submitAnswers (String answers, int  questionnaireId, String user_token){
        
        
        
        updateUserEnable ( user_token,  questionnaireId);
        
        int participant_id=get_participant_id(user_token);
        
         String sql="Insert into answers (ques_id,answer,ques_type,questionnaire_id,participant_id) values (?,?,?,?,?)";   
          GetConnection gc= new GetConnection();        
          
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
              
               try {
             JSONArray jsonarray = new JSONArray(answers);
            for (int i = 0; i < jsonarray.length(); i++) {
                JSONObject jsonobject = jsonarray.getJSONObject(i);
                int id = jsonobject.getInt("id");
                String answer = jsonobject.getString("answer");
                int type = jsonobject.getInt("type");
            
                    
                      gc.ps.setInt(1,id);
                      gc.ps.setString(2, answer);  
                       gc.ps.setInt(3, type);  
                      gc.ps.setInt(4, questionnaireId);
                       gc.ps.setInt(5, participant_id);  
                      gc.ps.executeUpdate();
              
           
           
           
           
        }
} 
            
            catch (JSONException e) {

                 System.out.println("---------error");
} 
              
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
        
        
        
        
        
        
        
        
        
        
        return false;
    }
    
    
      public boolean updateUserEnable (String user_token, int  questionnaireId){
          
          
              int participant_id=get_participant_id(user_token);
          
        
          
           String sql_check_user = "select * from  questionnaire_users where questionnaire_id=? and token=?"; // 2
           String sql_check_manager = "select * from  manager where  token=?";  // 3
          
           String sql_submit="Insert into submitted_manager (questionnaire_id,manager_id) values (?,?)"; // 4
          
           String sql = "Update questionnaire_users set isenabled=? where questionnaire_id=? and id=?";

           
           
           
        GetConnection gc = new GetConnection();
         GetConnection gc2 = new GetConnection();
          GetConnection gc3 = new GetConnection();
           GetConnection gc4 = new GetConnection();
           
           
           
        
        try {
            
             gc2.ps = GetConnection.getMySqlConnection().prepareStatement(sql_check_user);

            gc2.ps.setInt(1, questionnaireId);
             gc2.ps.setString(2, user_token);
            gc2.rs = gc2.ps.executeQuery();
            
            
             if (gc2.rs.next())// if found in Questionnaire users tabel
             {
                                  
                    gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

                    gc.ps.setInt(1, 0);
                    gc.ps.setInt(2, questionnaireId);
                    gc.ps.setInt(3, participant_id); 
                    gc.ps.executeUpdate();
                    return true;
            
                 
             }
            
             else
             {
                 gc3.ps = GetConnection.getMySqlConnection().prepareStatement(sql_check_manager);

                    gc3.ps.setString(1, user_token);

                    gc3.rs = gc3.ps.executeQuery();
                      if (gc3.rs.next())// if found in maanger users tabel
                      {
                          
                          
                            gc4.ps=GetConnection.getMySqlConnection ().prepareStatement(sql_submit);
         
                            gc4.ps.setInt(1, questionnaireId);
                            gc4.ps.setInt(2, participant_id);        

                            gc4.ps.executeUpdate();
              return true;
              
              
                          
                          
                      }
                 
                 
                 
             }
            
            
            
            
            
           

        } catch (SQLException e) {
            e.printStackTrace();

        }
        
        
        
        
        return false;
        
        
    }
      
      
   
      
      
}
