/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.module;

import Items.questionnairesItem;
import Items.questionsItem;
import com.jm.connection.GetConnection;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author JOEY
 */
public class showAllQuestionnaires {
    
    
       public static  ArrayList<questionnairesItem>  showAllQuestionnaires(int managerId ){
        
    
        
          
          
        ArrayList<questionnairesItem> list_questionnairesItem = new ArrayList<questionnairesItem>();

                
        String sql="Select *  from questionnaire where manager_id =?";
        
        
          GetConnection gc= new GetConnection();
    
          try {
              gc.ps=GetConnection.getMySqlConnection ().prepareStatement(sql);
         
              gc.ps.setInt(1, managerId);      
              gc.rs=gc.ps.executeQuery();
          
              
               while(gc.rs.next()) {
                questionnairesItem items = new questionnairesItem();
                items.setId(gc.rs.getInt("id"));
                items.setname(gc.rs.getString("name"));
                items.setisenabled(gc.rs.getInt("isenabled"));
                items.setisprivate(gc.rs.getInt("isprivate"));
                items.setdate_created(gc.rs.getString("date_created"));
                items.settoken(gc.rs.getString("token"));
            
                list_questionnairesItem.add(items);

   }
              
              
          }
          catch(SQLException e){
              e.printStackTrace();
              
              
              
          }
             
    return list_questionnairesItem;
          
    }
    
  
    
}
