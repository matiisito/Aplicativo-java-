/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sergio
 */
public class Conexion {
    public static Conexion instance;
    private Connection cnn;
    
    public Conexion(){
        try {
            Class.forName("oracle.jdbc.OracleDriver"); // Driver
            cnn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "mo3", "123");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public synchronized static Conexion saberEstado(){
        if(instance == null){
            instance = new Conexion();
        }
        return instance;
    }

    public Connection getCnn() {
        return cnn;
    }
    
    public void cerrarConexion(){
        instance = null;
    }
}
