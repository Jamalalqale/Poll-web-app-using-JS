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
public class editQuesionnaireTitle {

    public boolean editQuesionnaireTitle(int lastidQuestionnaire, String savequesionnaireTitle) {

        String sql = "Update questionnaire set name=? where id=?";

        GetConnection gc = new GetConnection();
        try {
            gc.ps = GetConnection.getMySqlConnection().prepareStatement(sql);

            gc.ps.setString(1, savequesionnaireTitle);
            gc.ps.setInt(2, lastidQuestionnaire);
            gc.ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();

        }

        return false;
    }

}
