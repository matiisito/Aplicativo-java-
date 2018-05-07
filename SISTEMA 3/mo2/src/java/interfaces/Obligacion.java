/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.List;

/**
 *
 * @author Sergio
 */
public interface Obligacion <cualquierCosa> {
    public boolean insertar(cualquierCosa c);
    public boolean eliminar(Object key);
    public boolean actualizar(cualquierCosa c);
    public cualquierCosa leer(Object key);
    public List<cualquierCosa> leerTodos();
     public List<cualquierCosa> leerTodosFiltrado(Object key);
}
