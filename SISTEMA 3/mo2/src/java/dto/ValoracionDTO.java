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
public class ValoracionDTO {

    /**
     * @return the id_valoracion
     */
    public int getId_valoracion() {
        return id_valoracion;
    }

    /**
     * @param id_valoracion the id_valoracion to set
     */
    public void setId_valoracion(int id_valoracion) {
        this.id_valoracion = id_valoracion;
    }

    /**
     * @return the boleta
     */
    public String getBoleta() {
        return boleta;
    }

    /**
     * @param boleta the boleta to set
     */
    public void setBoleta(String boleta) {
        this.boleta = boleta;
    }

    /**
     * @return the comentario
     */
    public String getComentario() {
        return comentario;
    }

    /**
     * @param comentario the comentario to set
     */
    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    /**
     * @return the id_nota
     */
    public int getId_nota() {
        return id_nota;
    }

    /**
     * @param id_nota the id_nota to set
     */
    public void setId_nota(int id_nota) {
        this.id_nota = id_nota;
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
     * @return the nota
     */
    public String getNota() {
        return nota;
    }

    /**
     * @param nota the nota to set
     */
    public void setNota(String nota) {
        this.nota = nota;
    }

    /**
     * @return the nombre_usuario
     */
    public String getNombre_usuario() {
        return nombre_usuario;
    }

    /**
     * @param nombre_usuario the nombre_usuario to set
     */
    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public ValoracionDTO(int id_valoracion, String boleta, String comentario, int id_nota, int id_usuario, String nota, String nombre_usuario) {
        this.id_valoracion = id_valoracion;
        this.boleta = boleta;
        this.comentario = comentario;
        this.id_nota = id_nota;
        this.id_usuario = id_usuario;
        this.nota = nota;
        this.nombre_usuario = nombre_usuario;
    }
     private int id_valoracion;
     private String boleta;
     private String comentario;
     private int id_nota;
     private int id_usuario;
     private int id_oferta;
     private String nota;
     
     private String nombre_usuario;

    public ValoracionDTO() {
    }

    /**
     * @return the id_oferta
     */
    public int getId_oferta() {
        return id_oferta;
    }

    /**
     * @param id_oferta the id_oferta to set
     */
    public void setId_oferta(int id_oferta) {
        this.id_oferta = id_oferta;
    }
}
