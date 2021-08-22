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
public class updatePrivacyStatus {
    
    
    public boolean updatePrivacyStatus (int questionnaire_id,int isToggleChecked){
        
        
        
                  String sql = "Update questionnaire set isprivate=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setInt(1, isToggleChecked);
            gc.ps.setInt(2, questionnaire_id);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }
        
        
        
        
        
        
        
        
        
        return false;
    }
}
