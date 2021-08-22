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
public class editQuestionnaireUser {

    
    
    public boolean updateName(int id, String name) {
        String sql = "Update questionnaire_users set name=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setString(1, name);
            gc.ps.setInt(2, id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return false;

    }
    
    
     public boolean updateEmail(int id, String email) {
        String sql = "Update questionnaire_users set email=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

           gc.ps.setString(1, email);
            gc.ps.setInt(2, id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return false;

    }
     
     
     
      public boolean updatePassword(int id, String password) {
        String sql = "Update questionnaire_users set password=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

         gc.ps.setString(1, password);
            gc.ps.setInt(2, id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return false;

    }
    
    
    
      public boolean addQuestionnaireUser (int questionnaire_id,String name,String email, String password){
          
          
           String sql="Insert into questionnaire_users (name,email,password,questionnaire_id,isenabled,token) values (?,?,?,?,?,?)";
        
           
           
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
                      gc.ps.setString(1, name);
              gc.ps.setString(2, email);
              gc.ps.setString(3, password);
              gc.ps.setInt(4, questionnaire_id);
              gc.ps.setInt(5, 1);
              gc.ps.setString(6, new Login().generate_token());
              
              
              
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
           
          return false;
          
      }
    
    
      
      public boolean deleteQuestionnaireUser (int questionnaireUser_id ){
          
                String sql=" DELETE FROM `questionnaire_users` WHERE id=?";
           
        
          GetConnection gc= new GetConnection();
          try {
             gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setInt(1, questionnaireUser_id);        
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
          
          
          
          
          return false;
      }

}
