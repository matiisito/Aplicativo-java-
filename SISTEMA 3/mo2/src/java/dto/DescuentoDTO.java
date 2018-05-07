/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author gus
 */
public class DescuentoDTO {
    private int id_descuento;
    private int puntos;
    private int tope;
    private String rubro;
    private int id_usuario;
    private String usuario;
    private int descuento;

    public DescuentoDTO() {
    }
    
    
    public DescuentoDTO(int id_descuento, int puntos, int tope, String rubro, int id_usuario, String usuario, int descuento) {
        this.id_descuento = id_descuento;
        this.puntos = puntos;
        this.tope = tope;
        this.rubro = rubro;
        this.id_usuario = id_usuario;
        this.usuario = usuario;
        this.descuento = descuento;
    }
    
    /**
     * @return the id_descuento
     */
    public int getId_descuento() {
        return id_descuento;
    }

    /**
     * @param id_descuento the id_descuento to set
     */
    public void setId_descuento(int id_descuento) {
        this.id_descuento = id_descuento;
    }

    /**
     * @return the puntos
     */
    public int getPuntos() {
        return puntos;
    }

    /**
     * @param puntos the puntos to set
     */
    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }

    /**
     * @return the tope
     */
    public int getTope() {
        return tope;
    }

    /**
     * @param tope the tope to set
     */
    public void setTope(int tope) {
        this.tope = tope;
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

    /**
     * @return the id_usuario
     */
    public int getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    /**
     * @return the usuario
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the descuento
     */
    public int getDescuento() {
        return descuento;
    }

    /**
     * @param descuento the descuento to set
     */
    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }

    
}
