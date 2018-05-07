/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.ProductoDAO;
import dto.ProductoDTO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sergio
 */
public class prueba {
    public static void main(String[] args) {
        ProductoDAO pr = new ProductoDAO();
        //List<ProductoDTO> todos = pr.leerTodos();
        //pr.insertar(new ProductoDTO(0, "cod456", "celular", "12mpx", "/resources/img/producto2.png", 10, 1));
        //pr.eliminar(3);
        //pr.actualizar(new ProductoDTO(2,"cod4567", "smartphone22", "20mpx", "/resources/img/producto3.png", 10, 1));
     
       /*for(int i=0; i<todos.size();i++){
           System.out.println("ID:" + todos.get(i).getId_producto()+ "|"
           + "Codigo:" + todos.get(i).getCodigo()+ "|"
           + "Nombre:" + todos.get(i).getNombre_producto()+ "|"
           + "Especificación:" + todos.get(i).getEspecificacion_tecnica()+ "|"
           + "Ruta:" + todos.get(i).getImagen_producto()+ "|"
           + "Stock:" + todos.get(i).getStock()+ "|"
           + "ID_RUBRO:" + todos.get(i).getId_rubro()+ "|");
           System.out.println("========================================");
       }
        */
        
    }
}
