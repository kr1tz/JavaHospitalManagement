/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital.management;

/**
 *
 * @author kris_
 */

import java.sql.*;
import javax.swing.*;

public class Connect {
    
    Connection con=null;
    
    public static Connection ConnectDB(){
             
        try{
           
               
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms_db","root", "");
          return con;
            
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
            return null;
    }      
}
    
}
