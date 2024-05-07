/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author yashc
 */
public class ConnectionProvider {
    
    private static Connection con;
    public static Connection getConnection()
    {
        try 
        {
             if(con==null)
             {
                 // loading driver class
            Class.forName("com.mysql.jdbc.Driver");
            
                //  creating connection
           con = DriverManager
                   .getConnection("jdbc:mysql://localhost:3306/admin_panel", "root", "root");
           
             }
           
           
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
