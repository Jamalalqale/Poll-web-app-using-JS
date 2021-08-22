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


public class addQuestionnaire {
    
       public boolean addQuesionnaire(String uName,int managerId){
           
           
           String sql="Insert into questionnaire (name,manager_id,isenabled,isprivate,token) values (?,?,?,?,?)";
        
           
           
        
          GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
        
              gc.ps.setString(1,uName);
              gc.ps.setInt(2, managerId);   
              gc.ps.setInt(3, 1);
              gc.ps.setInt(4, 0);
                gc.ps.setString(5, new Login().generate_token());
              gc.ps.executeUpdate();
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
     
  
       
       
        public static int  seletLastId(){
        
    
            
            int lastid=0;

                
        String sql="SELECT MAX(id) from questionnaire";
        
        
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
