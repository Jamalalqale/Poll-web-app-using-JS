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
public class editManager {
    
    
    
      public boolean checkIfUsernameExist(String username,String id ){
        String sql="Select *  from manager where username=?  and id!=?";
        
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, username);
              gc.ps.setString(2, id);
              gc.rs=gc.ps.executeQuery();
              return gc.rs.next();
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
      
      
      
         public boolean checkIfEmailExist(String email,String id ){
        String sql="Select *  from manager where email=?  and id!=?";
        
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, email);
              gc.ps.setString(2, id);
              gc.rs=gc.ps.executeQuery();
              return gc.rs.next();
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
         
         
         
      
        
              
       public boolean updateUsernameManager(String username,String id ){
        String sql="Update manager set username=? where id=?";
        
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, username);
              gc.ps.setString(2, id);
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
       
       
       
              public boolean updateEmailManager(String email,String id ){
        String sql="Update manager set email=? where id=?";
        
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, email);
              gc.ps.setString(2, id);
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
              
              
              
       
       
       
        public boolean updateNameManager(String name,String id ){
        String sql="Update manager set name=? where id=?";
        
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, name);
              gc.ps.setString(2, id);
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
        
        
        
        
         public boolean updatePasswordManager(String password,String id ){
        String sql="Update manager set password=? where id=?";
        
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, password);
              gc.ps.setString(2, id);
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
         
         
         
         
         
         
         
         
         
         
         
         public boolean deleteManager(int manager_id){
             
             
             
          
              
              String deleteManagerSql = "delete from  manager  where id=?";

        GetConnection gc = new GetConnection();
        try {
  
            
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(deleteManagerSql);            
            gc.ps.setInt(1, manager_id);       
            gc.ps.executeUpdate();
            
           
            
            
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }
        
        
        
        
             
             
             
             
             
             return false;
         }
   
       
       
    
}
