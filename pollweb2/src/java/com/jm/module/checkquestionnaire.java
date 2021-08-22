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
public class checkquestionnaire {
    
    
    
    
    public int checkquestionnaire(String token)
    {
        
        int msg_code=0;
       String sql = "select * from questionnaire where token=?";

      GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, token);
            
              gc.rs=gc.ps.executeQuery();
             
              if (!gc.rs.next())
                  msg_code=1; // doesn;t exisit
              else if(Integer.parseInt(gc.rs.getString("isenabled"))==0    )
                  
                     msg_code=2; // cloed
              else if(Integer.parseInt(gc.rs.getString("isenabled"))==1    )
                  
                      msg_code=3; // success
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return msg_code;
    }
    
    
       
    public static int checkPrivacy(String token)
    {
        
       String sql = "select isprivate from questionnaire where token=?";

       
       int isprivate=-1;
      GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, token);
       
              gc.rs=gc.ps.executeQuery();

                     while(gc.rs.next()) {              
                
          isprivate=gc.rs.getInt("isprivate");  

   }
                     
                     
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
          
          return isprivate;
   
    }
    
         
            
            
    
       
    public static int getId(String token)
    {
        
       String sql = "select id from questionnaire where token=?";

       
       int id=-1;
      GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, token);
       
              gc.rs=gc.ps.executeQuery();

                     while(gc.rs.next()) {              
                
          id=gc.rs.getInt("id");  

   }
                     
                     
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
          
          return id;
   
    }
    
       
    
    
           
    public static String getTitle(String token)
    {
        
       String sql = "select name from questionnaire where token=?";

       
       String title="";
      GetConnection gc= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, token);
       
              gc.rs=gc.ps.executeQuery();

                     while(gc.rs.next()) {              
                
          title=gc.rs.getString("name");  

   }
                     
                     
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
          
          
          return title;
   
    }
    
    
    
    
            
    
}
