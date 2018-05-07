/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.Conexion;
import dto.OfertaDTO;
import dto.ValoracionDTO;
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
public class ValoracionDAO implements Obligacion<ValoracionDTO>{

    

    @Override
    public boolean eliminar(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    

    @Override
    public List<ValoracionDTO> leerTodosFiltrado(Object key) {
       List<ValoracionDTO> lista = new ArrayList<>();
       Conexion cnx= new Conexion(); 
       
       String sql = "  select * from valoracion v join notacualitativa n on (v.id_nota = n.id_nota) \n" +
" join usuario u on (v.id_usuario=u.id_usuario)\n" +
" where id_oferta=? order by id_valoracion desc";
        try {PreparedStatement stmt = cnx.getCnn().prepareStatement(sql);
        stmt.setInt(1, (int) key);
                ResultSet rs = stmt.executeQuery();           
            while(rs.next())
            {
                ValoracionDTO v = new ValoracionDTO();
                v.setId_nota(rs.getInt("id_oferta"));
                v.setBoleta(rs.getString("boleta"));
                v.setComentario(rs.getString("comentario"));
                v.setId_nota(rs.getInt("id_nota"));
                v.setId_usuario(rs.getInt("id_usuario"));
                v.setNota(rs.getString("nota"));
                v.setNombre_usuario(rs.getString("nombre"));
                
                lista.add(v);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;    
    }

    @Override
    public boolean insertar(ValoracionDTO v) {
       Conexion cnx= new Conexion();
     String SQL_INSERT=
        "INSERT INTO VALORACION (ID_VALORACION, BOLETA, ID_NOTA, ID_USUARIO, COMENTARIO, ID_OFERTA)"
             + " VALUES (valoraciones_id.NEXTVAL, ?, ?, ?, ?, ?)";
             try{
            PreparedStatement stmt= cnx.getCnn().prepareStatement(SQL_INSERT);
            
            //stmt.setInt(1, "productos_id.");
            stmt.setString(1, v.getBoleta());
            stmt.setInt(2, v.getId_nota());
            stmt.setInt(3, v.getId_usuario());
            stmt.setString(4, v.getComentario());
            stmt.setInt(5, v.getId_oferta());
            
            stmt.executeUpdate();
        }catch(SQLException ex){
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null,ex);
        } 
        return true;
    }

    @Override
    public boolean actualizar(ValoracionDTO c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ValoracionDTO leer(Object key) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ValoracionDTO> leerTodos() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
