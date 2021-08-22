/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.module;

import Items.answers;
import Items.participant_id;

import Items.questionsItem;
import com.jm.connection.GetConnection;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author JOEY
 */
public class display_prticipant_answers {
    
    
    
        public static ArrayList<participant_id> get_participant_id(int questionnaire_id) {
            
            
            
              ArrayList<participant_id> participant_token_list = new ArrayList<participant_id>();

        String sql = "SELECT DISTINCT (participant_id) FROM `answers` where questionnaire_id=?";

        GetConnection gc = new GetConnection();

        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setInt(1, questionnaire_id);
            gc.rs = gc.ps.executeQuery();

            while (gc.rs.next()) {
                participant_id items = new participant_id();
                items.set_id(gc.rs.getInt("participant_id"));
            

                participant_token_list.add(items);

            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return participant_token_list;
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        public static String get_participant_name(int participant_id) {
            
            
            
             

        String sql = "select name from questionnaire_users where id =?";
         String sql_manager_name = "select name from manager where id =?";

        GetConnection gc = new GetConnection();
         GetConnection gc2 = new GetConnection();
        
        String name="Guest";

        try {
            
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setInt(1, participant_id);
            gc.rs = gc.ps.executeQuery();
            
            
             if (gc.rs.next())// if not  found in Questionnaire users tabel
                   name=gc.rs.getString("name");
             else
             {
                 
                   gc2.ps = GetConnection.getMySqlConnection().prepareStatement(sql_manager_name);
                    gc2.ps.setInt(1, participant_id);
                    gc2.rs = gc2.ps.executeQuery();
                    
                     if (gc2.rs.next())// if not  found in manager users tabel
                     name=gc2.rs.getString("name");

             }
                 

           

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return name;
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        public static ArrayList<answers> get_answers(int participant_id,int questionnaire_id) {
            
            
                     
              ArrayList<answers> answers_list = new ArrayList<answers>();

        String sql = "SELECT * FROM `answers` where questionnaire_id=?  and participant_id=?";

        GetConnection gc = new GetConnection();

        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setInt(1, questionnaire_id);
            gc.ps.setInt(2, participant_id);
            gc.rs = gc.ps.executeQuery();

            while (gc.rs.next()) {
                answers items = new answers();
                items.set_id(gc.rs.getInt("id"));
                items.set_ques_id(gc.rs.getInt("ques_id"));
                items.set_answer(gc.rs.getString("answer"));
                items.set_ques_type(gc.rs.getInt("ques_type"));
                items.set_questionnaire_id(gc.rs.getInt("questionnaire_id"));
                items.set_participant_id(gc.rs.getInt("participant_id"));
                items.set_date_created(gc.rs.getString("date_created"));
            

                answers_list.add(items);

            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return answers_list;
            
            
        
           
                       
            
            
        }
        
        
        
    
}
