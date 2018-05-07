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
public class OfertaDTO {

    /**
     * @return the codigo
     */
    public String getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the especificacion_tecnica
     */
    public String getEspecificacion_tecnica() {
        return especificacion_tecnica;
    }

    /**
     * @param especificacion_tecnica the especificacion_tecnica to set
     */
    public void setEspecificacion_tecnica(String especificacion_tecnica) {
        this.especificacion_tecnica = especificacion_tecnica;
    }

    /**
     * @return the id_stock
     */
    public int getStock() {
        return stock;
    }

    /**
     * @param id_stock the id_stock to set
     */
    public void setStock(int stock) {
        this.stock = stock;
    }

    /**
     * @return the id_rubro
     */
    public int getId_rubro() {
        return id_rubro;
    }

    /**
     * @param id_rubro the id_rubro to set
     */
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
    public OfertaDTO(int id_oferta, int precio, int precio_oferta, int id_empresa, int id_usuario, int id_producto, String estado, String nombre_producto, String imagen) {
        this.id_oferta = id_oferta;
        this.precio = precio;
        this.precio_oferta = precio_oferta;
        this.id_empresa = id_empresa;
        this.id_usuario = id_usuario;
        this.id_producto = id_producto;
        this.estado = estado;
        this.nombre_producto = nombre_producto;
        this.imagen = imagen;
    }
    /**
     * @return the nombre_producto
     */
    public String getNombre_producto() {
        return nombre_producto;
    }

    /**
     * @param nombre_producto the nombre_producto to set
     */
    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    
    private int id_oferta;
    private int precio;
    private int precio_oferta;
    private int id_empresa;
    private int id_usuario;
    private int id_producto;
    private String estado;
    private String nombre_producto;
    private String imagen;
    
    private String codigo;
    private String especificacion_tecnica;
    private int stock;
    private int id_rubro;
    private String rubro;
    
    
    public OfertaDTO() {
    }

    public OfertaDTO(int id_oferta) {
        this.id_oferta = id_oferta;
    }

    

    public int getId_oferta() {
        return id_oferta;
    }

    public void setId_oferta(int id_oferta) {
        this.id_oferta = id_oferta;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getPrecio_oferta() {
        return precio_oferta;
    }

    public void setPrecio_oferta(int precio_oferta) {
        this.precio_oferta = precio_oferta;
    }

    public int getId_empresa() {
        return id_empresa;
    }

    public void setId_empresa(int id_empresa) {
        this.id_empresa = id_empresa;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the imagen
     */
    public String getImagen() {
        return imagen;
    }

    /**
     * @param imagen the imagen to set
     */
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
    
}
