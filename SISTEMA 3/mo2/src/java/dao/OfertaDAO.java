/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.OfertaDTO;
import dto.ValoracionOferta;
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
public class OfertaDAO implements Obligacion<OfertaDTO>{
    
    private static final String sql_insertar = "{call INS_OFERTA(?,?,?,?,?,?,?)}";
    private static final String sql_eliminar = "{call DEL_OFERTA(?)}";
    private static final String sql_actualizar = "UPDATE OFERTA SET PRECIO = '500', PRECIO_OFERTA = '200', ID_EMPRESA = '2',ID_USUARIO = '2', ID_PRODUCTO = '2', ESTADO = 'n' WHERE id_oferta=?";
    private static final String sql_leerTodos = "SELECT * FROM OFERTA";
    private static final Conexion con = Conexion.saberEstado();

    @Override
    public boolean insertar(OfertaDTO c) {
        
         Conexion cnx= new Conexion();
     String SQL_INSERT=
        "INSERT INTO OFERTA (ID_OFERTA, PRECIO, PRECIO_OFERTA, ID_EMPRESA, ID_USUARIO, ID_PRODUCTO, ESTADO)"
             + " VALUES (ofertas_id.NEXTVAL, ?, ?, ?, ?, ?, ?)";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_INSERT);
            stmt.setInt(1, c.getPrecio());
            stmt.setInt(2, c.getPrecio_oferta());
            stmt.setInt(3, c.getId_empresa());
            stmt.setInt(4, c.getId_usuario());
            stmt.setInt(5, c.getId_producto());
            stmt.setString(6, c.getEstado());
            stmt.executeUpdate();
        }catch(SQLException ex){
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true;
    }

    @Override
    public boolean eliminar(Object key) {
        Conexion cnx= new Conexion();
     String SQL_DELETE=
        "delete from oferta where id_oferta = ?";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_DELETE);
            stmt.setInt(1,(int) key);
            stmt.executeUpdate();
        }catch(SQLException ex){
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true; 
 
    }
    
    @Override
    public boolean actualizar(OfertaDTO c) {
        Conexion cnx= new Conexion();
     String SQL_UPDATE=
        "UPDATE OFERTA SET PRECIO = ?, PRECIO_OFERTA = ?, ID_EMPRESA = ?,ID_USUARIO = ?,"
             + " ID_PRODUCTO = ?, ESTADO = ? WHERE id_oferta=?";
     try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_UPDATE);
           
           
            stmt.setInt(1, c.getPrecio());
            stmt.setInt(2, c.getPrecio_oferta());
            stmt.setInt(3, c.getId_empresa());
            stmt.setInt(4, c.getId_usuario());
            stmt.setInt(5, c.getId_producto());
            stmt.setString(6, c.getEstado());
             stmt.setInt(7, c.getId_oferta());
            
            stmt.executeUpdate();
            
        }catch(SQLException ex){
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true;
    }

    @Override
    public OfertaDTO leer(Object key) {
        Conexion cnx= new Conexion();
        String sql_leer = "select * from oferta o join producto p on (p.id_producto = o.id_producto)"
              + " where id_oferta = ?";
        
        
        OfertaDTO oferta = new OfertaDTO();
        try {
            PreparedStatement stmt = cnx.getCnn().prepareStatement(sql_leer);
            stmt.setInt(1, (int) key);
            ResultSet rs = stmt.executeQuery();
           while(rs.next()){
                oferta.setId_oferta(rs.getInt(1));
                oferta.setPrecio(rs.getInt(2));
                oferta.setPrecio_oferta(rs.getInt("precio_oferta"));
                oferta.setId_empresa(rs.getInt("id_empresa"));
                oferta.setId_usuario(rs.getInt("id_usuario"));
                oferta.setId_producto(rs.getInt("id_producto"));
                oferta.setEstado(rs.getString("estado"));
                oferta.setNombre_producto(rs.getString("nombre_producto"));
                oferta.setImagen(rs.getString("imagen_producto"));
                
                oferta.setCodigo(rs.getString("codigo"));
                oferta.setEspecificacion_tecnica(rs.getString("especificacion_tecnica"));
                oferta.setStock(rs.getInt("stock"));
                oferta.setId_rubro(rs.getInt("id_rubro"));
                RubroDAO rubro = new RubroDAO();
                oferta.setRubro(rubro.leer(oferta.getId_rubro()).getRubro());
            }
            return oferta;
        } catch (SQLException ex) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return oferta;
    }

    @Override
    public List<OfertaDTO> leerTodos() {
       List<OfertaDTO> lista = new ArrayList<>();
       Conexion cnx= new Conexion(); 
       
       String sql = "select * from oferta o join producto p on (p.id_producto = o.id_producto)";
        try {PreparedStatement stmt = cnx.getCnn().prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();           
            while(rs.next())
            {
                OfertaDTO prod = new OfertaDTO();
                prod.setId_oferta(rs.getInt("id_oferta"));
                prod.setPrecio(rs.getInt("precio"));
                prod.setPrecio_oferta(rs.getInt("precio_oferta"));
                prod.setId_empresa(rs.getInt("id_empresa"));
                prod.setId_usuario(rs.getInt("id_usuario"));
                prod.setId_producto(rs.getInt("id_producto"));
                prod.setEstado(rs.getString("estado"));
                prod.setNombre_producto(rs.getString("nombre_producto"));
                prod.setImagen(rs.getString("imagen_producto"));
                
                lista.add(prod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    @Override
    public List<OfertaDTO> leerTodosFiltrado(Object key) {
 List<OfertaDTO> lista = new ArrayList<>();
       Conexion cnx= new Conexion(); 
       
       String sql = "select * from oferta o join producto p on (p.id_producto = o.id_producto) where o.id_empresa=?";
        try {PreparedStatement stmt = cnx.getCnn().prepareStatement(sql);
        stmt.setInt(1, (int) key);
                ResultSet rs = stmt.executeQuery();           
            while(rs.next())
            {
                OfertaDTO prod = new OfertaDTO();
                prod.setId_oferta(rs.getInt("id_oferta"));
                prod.setPrecio(rs.getInt("precio"));
                prod.setPrecio_oferta(rs.getInt("precio_oferta"));
                prod.setId_empresa(rs.getInt("id_empresa"));
                prod.setId_usuario(rs.getInt("id_usuario"));
                prod.setId_producto(rs.getInt("id_producto"));
                prod.setEstado(rs.getString("estado"));
                prod.setNombre_producto(rs.getString("nombre_producto"));
                lista.add(prod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;    }
    
    public List<ValoracionOferta> leerReporte() {
 List<ValoracionOferta> lista = new ArrayList<>();
       Conexion cnx= new Conexion(); 
       String sql = "select o.ID_OFERTA as id_oferta,p.NOMBRE_PRODUCTO as nombre_producto,e.NOMBRE_FANTASIA as nombre_fantasia,(select count(*) from valoracion where id_oferta=o.id_oferta and valoracion.ID_NOTA=100) as excelente, " +
" (select count(*) from valoracion where id_oferta=o.id_oferta and valoracion.ID_NOTA=200) as buena, " +
" (select count(*) from valoracion where id_oferta=o.id_oferta and valoracion.ID_NOTA=300) as mala from oferta o " +
" inner join producto p on (p.ID_PRODUCTO=o.ID_PRODUCTO) " +
" inner join EMPRESA e on (e.ID_EMPRESA=o.ID_EMPRESA)";
        try {PreparedStatement stmt = cnx.getCnn().prepareStatement(sql);
        //stmt.setInt(1, (int) key);
                ResultSet rs = stmt.executeQuery(); 
                System.out.println("hola1");
            while(rs.next())
            {
                System.out.println("hola2");
                ValoracionOferta v = new ValoracionOferta();
                System.out.println("hola3");
                v.setId_oferta(rs.getInt("id_oferta"));
                
                v.setProducto(rs.getString("nombre_producto"));
                v.setTienda(rs.getString("nombre_fantasia"));
                v.setExcelente(rs.getInt("excelente"));
                v.setBuena(rs.getInt("buena"));
                v.setMala(rs.getInt("mala"));
                lista.add(v);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;    }
}



