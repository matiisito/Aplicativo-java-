/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.ProductoDTO;
import dto.RubroDTO;
import interfaces.Obligacion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gus
 */
public class RubroDAO implements Obligacion<RubroDTO>{

    @Override
    public boolean insertar(RubroDTO c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizar(RubroDTO c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public RubroDTO leer(Object key) {
        Conexion cnx= new Conexion();
        RubroDTO rubro=new RubroDTO();
        String sql = "select * from rubro where id_rubro = ? ";
        try {PreparedStatement stmt = cnx.getCnn().prepareStatement(sql);
                stmt.setInt(1,(int) key);
                System.out.println("este es el id "+(int) key);
                
        ResultSet rs = stmt.executeQuery(); 
        
            rs.next();
            rubro.setId((int) key);
            rubro.setRubro(rs.getString("rubro"));
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        cnx.cerrarConexion();
        return rubro;
        
    }
      
    @Override
    public List<RubroDTO> leerTodos() {
        Conexion con= new Conexion();
        String sql_leerTodos = "SELECT * FROM rubro";
        PreparedStatement ps;
        ResultSet rs;
        ArrayList<RubroDTO> rubros = new ArrayList();
        try {
            ps = con.getCnn().prepareStatement(sql_leerTodos);
            rs = ps.executeQuery();
            
            while(rs.next()){
                rubros.add(new RubroDTO(rs.getInt(1),rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RubroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return rubros;    }

    @Override
    public List<RubroDTO> leerTodosFiltrado(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
