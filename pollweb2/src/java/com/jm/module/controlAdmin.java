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

/**
 *
 * @author JOEY
 */
public class controlAdmin {
    
    
    
        
    public static ArrayList<StudentBean>  seletManagers(){
        
      ArrayList<StudentBean> list_student = new ArrayList<StudentBean>();

                
        String sql="Select *  from manager";
        
        
          GetConnection gc= new GetConnection();
    
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              //gc.ps.setString(1, uName);
              //gc.ps.setString(2, pass);
              gc.rs=gc.ps.executeQuery();
          
              
               while(gc.rs.next()) {
                StudentBean studentBean = new StudentBean();
                studentBean.setId(gc.rs.getString("id"));
                studentBean.setname(gc.rs.getString("name"));
                studentBean.setusername(gc.rs.getString("username"));
                studentBean.setpassword(gc.rs.getString("password"));
           
                studentBean.setemail(gc.rs.getString("email"));
                list_student.add(studentBean);

   }
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
    return list_student;
          
    }
  
    
}
