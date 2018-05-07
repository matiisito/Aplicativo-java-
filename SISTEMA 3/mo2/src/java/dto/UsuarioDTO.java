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
public class UsuarioDTO {

    /**
     * @return the idempresa
     */
    public int getIdempresa() {
        return idempresa;
    }

    /**
     * @param idempresa the idempresa to set
     */
    public void setIdempresa(int idempresa) {
        this.idempresa = idempresa;
    }

    /**
     * @return the empresa
     */
    public String getEmpresa() {
        return empresa;
    }

    /**
     * @param empresa the empresa to set
     */
    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public UsuarioDTO(int id_usuario, String usuario, String contrasena, String nombre, String apellido, String telefono, int rol, String roldescripcion, String correo, String rut, String estado, int idempresa, String empresa, int puntos) {
        this.id_usuario = id_usuario;
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.rol = rol;
        this.roldescripcion = roldescripcion;
        this.correo = correo;
        this.rut = rut;
        this.estado = estado;
        this.idempresa = idempresa;
        this.empresa = empresa;
        this.puntos = puntos;
    }

    
    private int id_usuario;
    private String usuario;
    private String contrasena;
    private String nombre;
    private String apellido;
    private String telefono;
    private int rol;
    private String roldescripcion;
    private String correo;
    private String rut;
    private String estado;
    private int idempresa;
    private String empresa; 
    private int puntos;
    

    public UsuarioDTO() {
    }
   
    public UsuarioDTO(String usuario, String contrasena) {
        this.usuario = usuario;
        this.contrasena = contrasena;
    }
    
    
    

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }

    /**
     * @return the roldescripcion
     */
    public String getRoldescripcion() {
        return roldescripcion;
    }

    /**
     * @param roldescripcion the roldescripcion to set
     */
    public void setRoldescripcion(String roldescripcion) {
        this.roldescripcion = roldescripcion;
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
    
    
}
