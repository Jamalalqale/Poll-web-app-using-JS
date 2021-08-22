/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jm.connection;

import com.jm.module.MyDb;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JOEY
 */
public class GetConnection {
    
    
   public PreparedStatement ps; 
    public ResultSet rs;
    
    public static Connection con;
    
     public static Connection getMySqlConnection()
    {
        try {
             Class.forName("com.mysql.jdbc.Driver");
           con= DriverManager.getConnection("jdbc:mysql://localhost:3306/polldb" , "root" , "" );
           return con;
        } 
        catch (ClassNotFoundException e) {
        throw new IllegalStateException("Cannot find the driver in the classpath!", e);
      }
               
        catch (SQLException ex) {
            Logger.getLogger(MyDb.class.getName()).log(Level.SEVERE, null, ex);
        }

         
     return null ;
}
    
}
