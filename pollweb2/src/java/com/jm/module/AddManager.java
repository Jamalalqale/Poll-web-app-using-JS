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
public class AddManager {
    
    
     public boolean addManager(String Name,String Username,String email,String Password){
         
         
       // System.out.println("*****   "+Name+"  "+Username+"  "+email+"  "+Password);
         
        String sql="Insert into manager (name,username,password,token,email) values (?,?,?,?,?)";
        
        
          GetConnection gc= new GetConnection();
          try {
              
              
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setString(1, Name);
              gc.ps.setString(2, Username);
              gc.ps.setString(3, Password);
              gc.ps.setString(4, new Login().generate_token());
               gc.ps.setString(5, email);
              gc.ps.executeUpdate();
              
              return true;
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return false;
          
    }
     
    
         public int check(String name,String username,String email,String password){
        
        
             
             // System.out.println("*****   "+name+"  "+username+"  "+email+"  "+password);
             
             int msg_code=0;
             
        String sql_username="Select *  from manager where username=?";
         String sql_email="Select *  from manager where email=?";
        
        
          GetConnection gc= new GetConnection();
          GetConnection gc2= new GetConnection();
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql_username);
         
              gc.ps.setString(1, username);            
              gc.rs=gc.ps.executeQuery(); 
              
              
               if (gc.rs.next())// if found                 
             
                msg_code=1; //  username already exsists  
                   
             
               else
               {
              gc2.ps=GetConnection.getMySqlConnection ().prepareStatement(sql_email);         
              gc2.ps.setString(1, email);            
              gc2.rs=gc2.ps.executeQuery(); 
              
               if (gc2.rs.next())// if found                 
             
                msg_code=2; //  emal already exsists
               
               else
               {
                       
                   
                  
                    if(addManager( name, username,email, password )) 
                       
                        msg_code=3; // success
                    
                    else
                       msg_code=4; // somthing wrong  
               }
              
               }
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
          return msg_code;
          
    }
     
     
     
}
