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
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sergio
 */
public class ProductoDAO implements Obligacion<ProductoDTO>{

    private static final String sql_insertar = "{call INS_PRODUCTO(?,?,?,?,?,?,?)}";
    private static final String sql_eliminar = "{call DEL_PRODUCTO(?)}";
    private static final String sql_actualizar = "{call UPD_PRODUCTO(?,?,?,?,?,?,?)}";
    //private static final String sql_actualizar = "UPDATE PRODUCTO SET codigo=?, nombre_producto=?, especificacion_tecnica=?, imagen_producto=?, stock=?, id_rubro=? where id_producto=?";
    private static final String sql_leer = "SELECT * FROM PRODUCTO WHERE id_producto = ?";
    private static final String sql_leerTodos = "SELECT * FROM PRODUCTO";
    private static final Conexion con = Conexion.saberEstado();
    
    @Override
    public boolean insertar(ProductoDTO c) {
     Conexion cnx= new Conexion();
     String SQL_INSERT=
        "INSERT INTO PRODUCTO (ID_PRODUCTO ,CODIGO ,NOMBRE_PRODUCTO , ESPECIFICACION_TECNICA, IMAGEN_PRODUCTO ,STOCK,ID_RUBRO ) VALUES(productos_id.NEXTVAL, ? ,? ,?, ? , ? ,? )";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_INSERT);
            
            //stmt.setInt(1, "productos_id.");
            stmt.setString(1, c.getCodigo());
            stmt.setString(2, c.getNombre_producto());
            stmt.setString(3, c.getEspecificacion_tecnica());
            stmt.setString(4, c.getImagen_producto());
            stmt.setInt(5, c.getStock());
            stmt.setInt(6, c.getId_rubro());
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
    public boolean actualizar(ProductoDTO c) {
             Conexion cnx= new Conexion();
     String SQL_UPDATE=
        "UPDATE producto SET CODIGO =?,NOMBRE_PRODUCTO =? ,"
             + " ESPECIFICACION_TECNICA =?, IMAGEN_PRODUCTO =?,STOCK =?,ID_RUBRO =? WHERE id_producto = ?";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_UPDATE);
           
           
            stmt.setString(1, c.getCodigo());
            stmt.setString(2, c.getNombre_producto());
            stmt.setString(3, c.getEspecificacion_tecnica());
            stmt.setString(4, c.getImagen_producto());
            stmt.setInt(5, c.getStock());
            stmt.setInt(6, c.getId_rubro());
             stmt.setInt(7, c.getId_producto());
            
             System.out.println("id del producto mard"+c.getId_producto());
            stmt.executeUpdate();
             System.out.println("guarda !!!!!!!!!");
        }catch(SQLException ex){
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true; 
    }

    @Override
    public ProductoDTO leer(Object key) {
        Conexion cnx= new Conexion();
        ProductoDTO prod=new ProductoDTO();
        String sql = "select * from producto where id_producto = ? ";
        try {PreparedStatement stmt = cnx.getCnn().prepareStatement(sql);
                stmt.setInt(1,(int) key);
        ResultSet rs = stmt.executeQuery();           
            rs.next();
                     
            prod.setId_producto((int) key);
            prod.setCodigo(rs.getString("codigo"));
            prod.setNombre_producto(rs.getString("nombre_producto"));
            prod.setEspecificacion_tecnica(rs.getString("especificacion_tecnica"));   
            prod.setImagen_producto(rs.getString("imagen_producto"));   
            prod.setStock(rs.getInt("stock"));   
            prod.setId_rubro(rs.getInt("id_rubro"));   
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prod;
    }

    @Override
    public List<ProductoDTO> leerTodos() {
        PreparedStatement ps;
        ResultSet rs;
        RubroDAO rubro = new RubroDAO();
        
        ArrayList<ProductoDTO> productos = new ArrayList();
        try {
            ps = con.getCnn().prepareStatement(sql_leerTodos);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                productos.add(new ProductoDTO(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6),rs.getInt(7),rubro.leer(rs.getInt(7)).getRubro()));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        con.cerrarConexion();
        return productos;
    }

    @Override
    public List<ProductoDTO> leerTodosFiltrado(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
