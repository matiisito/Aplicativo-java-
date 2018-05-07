/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.ProductoDTO;
import dto.RolDTO;
import dto.UsuarioDTO;
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
public class UsuarioDAO implements Obligacion<UsuarioDTO> {
    
    //public static final String sql_insertar = "INSERT INTO usuario(id_usuario, usuario, contrasena, nombre, apellido, telefono, Rol_id_rol, correo, rut, estado)"+
    //        " VALUES(?,?,?,?,?,?,?,?,?,?)";
    public static final String sql_insertar = "INSERT INTO USUARIO (ID_USUARIO, ID_EMPRESA, USUARIO, CONTRASENA, NOMBRE, APELLIDO, TELEFONO, ID_ROL, CORREO, RUT, ESTADO, PUNTOS) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
    public static final String aut = "select * from usuario u inner join rol r on(u.id_rol = r.id_rol)"
            + "inner join empresa e on (e.id_empresa = u.id_empresa) where u.usuario=? and u.contrasena=?";
    public static final String sql_actualizar = "UPDATE usuario set usuario=?, contrasena=?, nombre=?, apellido=?, telefono=?, Rol_id_rol=?, correo=?, rut=?, estado=?, puntos=? WHERE id_usuario=?";
    
    private static final Conexion con = Conexion.saberEstado();
    
    @Override
    public boolean insertar(UsuarioDTO u) {
        Conexion cnx= new Conexion();
        String SQL_INSERT=
        "INSERT INTO USUARIO (ID_USUARIO, ID_EMPRESA, USUARIO, CONTRASENA, NOMBRE, APELLIDO, TELEFONO, ID_ROL, CORREO, RUT, ESTADO, PUNTOS) "
            + "VALUES (usuarios_id.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_INSERT);
            
            //stmt.setInt(1, "productos_id.");
            stmt.setInt(1, u.getIdempresa());
            stmt.setString(2, u.getUsuario());
            stmt.setString(3, u.getContrasena());
            stmt.setString(4, u.getNombre());
            stmt.setString(5, u.getApellido());
            stmt.setString(6, u.getTelefono());
            stmt.setInt(7, u.getRol());
            stmt.setString(8, u.getCorreo());
            stmt.setString(9, u.getRut());
            stmt.setString(10, u.getEstado());
            stmt.setInt(11, 0);
            stmt.executeUpdate();
        }catch(SQLException ex){
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true;
    }

    @Override
    public boolean eliminar(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizar(UsuarioDTO c) {
 Conexion cnx= new Conexion();
     String SQL_UPDATE=
        "UPDATE usuario SET puntos = ?"
             + "WHERE id_usuario = ?";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_UPDATE);
           
           
            stmt.setInt(1, c.getPuntos()+100);
            stmt.setInt(2, c.getId_usuario());
            
             System.out.println("aca:::"+c.getPuntos());
             System.out.println("aca:::"+c.getId_usuario());
            stmt.executeUpdate();
            
        }catch(SQLException ex){
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true;     }

    public boolean DescontarPuntos(int n, int id, int puntos) {
 Conexion cnx= new Conexion();
     String SQL_UPDATE=
        "UPDATE usuario SET puntos = ?"
             + "WHERE id_usuario = ?";
         try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_UPDATE);
           
           
            stmt.setInt(1, n-puntos);
            stmt.setInt(2, id);
            
             System.out.println("aca:::"+n);
             System.out.println("aca:::"+id);
            stmt.executeUpdate();
            
        }catch(SQLException ex){
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true;     }
    
    @Override
    public UsuarioDTO leer(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<UsuarioDTO> leerTodos() {
PreparedStatement ps;
        ResultSet rs;
        
        ArrayList<UsuarioDTO> usuarios = new ArrayList();
        try {
            ps = con.getCnn().prepareStatement("select * from usuario");
            rs = ps.executeQuery();
            
            while(rs.next()){

            UsuarioDTO usuario = new UsuarioDTO();
            usuario.setNombre(rs.getString(5));
            usuario.setCorreo(rs.getString(9));
            usuarios.add(usuario);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        con.cerrarConexion();
        return usuarios;    }
   
    public UsuarioDTO Autenticar(UsuarioDTO c){
        PreparedStatement ps;
        ResultSet rs;
        UsuarioDTO usuarios = null;
        try {
            ps = con.getCnn().prepareStatement(aut);
            ps.setString(1,c.getUsuario());
            
            ps.setString(2,c.getContrasena());
            
            rs = ps.executeQuery();
            while(rs.next()){
                System.out.println("ya::::"+rs.getString("usuario"));
                usuarios = new UsuarioDTO();
                
                usuarios.setId_usuario(rs.getInt("id_usuario"));
                usuarios.setUsuario(rs.getString("usuario"));
                usuarios.setApellido(rs.getString("apellido"));
                usuarios.setNombre(rs.getString("nombre"));
                usuarios.setContrasena(rs.getString("apellido"));
                usuarios.setIdempresa(rs.getInt("id_empresa"));
                usuarios.setCorreo(rs.getString("correo"));
                usuarios.setRut(rs.getString("rut"));
                usuarios.setRol(rs.getInt("id_rol"));
                usuarios.setTelefono(rs.getString("telefono"));
                usuarios.setEstado(rs.getString("estado"));
                usuarios.setEmpresa(rs.getString("nombre_fantasia"));
                usuarios.setPuntos(rs.getInt("puntos"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            con.cerrarConexion();
        }
        return usuarios;
    }

    @Override
    public List<UsuarioDTO> leerTodosFiltrado(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
