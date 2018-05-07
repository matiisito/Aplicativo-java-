/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.DescuentoDTO;
import dto.ProductoDTO;
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
public class DescuentoDAO implements Obligacion<DescuentoDTO> {
        private static final String sql_insertar = "{call INS_PRODUCTO(?,?,?,?,?,?,?)}";
    private static final String sql_eliminar = "{call DEL_PRODUCTO(?)}";
    private static final String sql_actualizar = "{call UPD_PRODUCTO(?,?,?,?,?,?,?)}";
    //private static final String sql_actualizar = "UPDATE PRODUCTO SET codigo=?, nombre_producto=?, especificacion_tecnica=?, imagen_producto=?, stock=?, id_rubro=? where id_producto=?";
    private static final String sql_leer = "SELECT * FROM PRODUCTO WHERE id_producto = ?";
    private static final Conexion con = Conexion.saberEstado();
    
    @Override
    public boolean insertar(DescuentoDTO c) {
     Conexion cnx= new Conexion();
     String SQL_INSERT=
        "INSERT INTO PRODUCTO (ID_PRODUCTO ,CODIGO ,NOMBRE_PRODUCTO , ESPECIFICACION_TECNICA, IMAGEN_PRODUCTO ,STOCK,ID_RUBRO ) VALUES(productos_id.NEXTVAL, ? ,? ,?, ? , ? ,? )";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_INSERT);
            
            //stmt.setInt(1, "productos_id.");
//            stmt.setString(1, c.getCodigo());
//            stmt.setString(2, c.getNombre_producto());
//            stmt.setString(3, c.getEspecificacion_tecnica());
//            stmt.setString(4, c.getImagen_producto());
//            stmt.setInt(5, c.getStock());
//            stmt.setInt(6, c.getId_rubro());
            stmt.executeUpdate();
        }catch(SQLException ex){
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true;
    }

    @Override
    public boolean eliminar(Object key) {
         Conexion cnx= new Conexion();
     String SQL_DELETE=
        "delete from producto where id_producto = ?";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_DELETE);
            stmt.setInt(1,(int) key);
            stmt.executeUpdate();
        }catch(SQLException ex){
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true; 
    }

    @Override
    public boolean actualizar(DescuentoDTO c) {
             Conexion cnx= new Conexion();
     String SQL_UPDATE=
        "UPDATE producto SET CODIGO =?,NOMBRE_PRODUCTO =? ,"
             + " ESPECIFICACION_TECNICA =?, IMAGEN_PRODUCTO =?,STOCK =?,ID_RUBRO =? WHERE id_producto = ?";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_UPDATE);
//            stmt.setString(1, c.getCodigo());
//            stmt.setString(2, c.getNombre_producto());
//            stmt.setString(3, c.getEspecificacion_tecnica());
//            stmt.setString(4, c.getImagen_producto());
//            stmt.setInt(5, c.getStock());
//            stmt.setInt(6, c.getId_rubro());
//            stmt.setInt(7, c.getId_producto());
//            
//             System.out.println("id del producto mard"+c.getId_producto());
            stmt.executeUpdate();
             
        }catch(SQLException ex){
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true; 
    }

    @Override
    public DescuentoDTO leer(Object key) {
        Conexion cnx= new Conexion();

        DescuentoDTO d = new DescuentoDTO();
        String sql = "select id_descuento, puntos, tope, id_usuario, rubro, descuento from descuento "
                + "where id_descuento=? ";
        try {PreparedStatement stmt = cnx.getCnn().prepareStatement(sql);
                stmt.setInt(1,(int) key);
                
        ResultSet rs = stmt.executeQuery();           
            rs.next();
                     
            d.setId_descuento((int) key);
            d.setPuntos(rs.getInt("puntos"));
            d.setTope(rs.getInt("tope"));
            d.setId_usuario(rs.getInt("id_usuario"));   
            d.setRubro(rs.getString("rubro"));   
            d.setDescuento(rs.getInt("descuento"));   
                       
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return d;
    }

    @Override
    public List<DescuentoDTO> leerTodos() {
        PreparedStatement ps;
        ResultSet rs;
        //RubroDAO rubro = new RubroDAO();
      String sql_leerTodos = "select id_descuento, puntos, tope, id_usuario, rubro, descuento from descuento";
        ArrayList<DescuentoDTO> descuentos = new ArrayList();
        try {
            ps = con.getCnn().prepareStatement(sql_leerTodos);
            rs = ps.executeQuery();
            while(rs.next()){
                DescuentoDTO d = new DescuentoDTO();
                d.setId_descuento(rs.getInt(1));
                d.setPuntos(rs.getInt(2));
                d.setTope(rs.getInt(3));
                d.setId_usuario(rs.getInt(4));
                d.setRubro(rs.getString(5));
                d.setDescuento(rs.getInt(6));
               
                descuentos.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        
        return descuentos;
    }

    @Override
    public List<DescuentoDTO> leerTodosFiltrado(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
}
