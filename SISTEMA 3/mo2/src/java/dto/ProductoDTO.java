/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Sergio
 */
public class ProductoDTO {

    public ProductoDTO(int id_producto, String codigo, String nombre_producto, String especificacion_tecnica, String imagen_producto, int stock, int id_rubro, String rubro) {
        this.id_producto = id_producto;
        this.codigo = codigo;
        this.nombre_producto = nombre_producto;
        this.especificacion_tecnica = especificacion_tecnica;
        this.imagen_producto = imagen_producto;
        this.stock = stock;
        this.id_rubro = id_rubro;
        this.rubro = rubro;
    }
    private int id_producto;
    private String codigo;
    private String nombre_producto;
    private String especificacion_tecnica;
    private String imagen_producto;
    private int stock;
    private int id_rubro;
        private String rubro;

    
    public ProductoDTO() {
    }

    public ProductoDTO(int id_producto) {
        this.id_producto = id_producto;
    }

   

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getEspecificacion_tecnica() {
        return especificacion_tecnica;
    }

    public void setEspecificacion_tecnica(String especificacion_tecnica) {
        this.especificacion_tecnica = especificacion_tecnica;
    }

    public String getImagen_producto() {
        return imagen_producto;
    }

    public void setImagen_producto(String imagen_producto) {
        this.imagen_producto = imagen_producto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getId_rubro() {
        return id_rubro;
    }

    public void setId_rubro(int id_rubro) {
        this.id_rubro = id_rubro;
    }

    /**
     * @return the rubro
     */
    public String getRubro() {
        return rubro;
    }

    /**
     * @param rubro the rubro to set
     */
    public void setRubro(String rubro) {
        this.rubro = rubro;
    }

    
    
    
}
