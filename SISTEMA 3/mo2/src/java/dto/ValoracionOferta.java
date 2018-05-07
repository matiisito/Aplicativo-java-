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
public class ValoracionOferta {
    private int id_oferta;
    private String producto;
    private String tienda;
    private int excelente;
    private int buena;
    private int mala;
    
    public ValoracionOferta(int id_oferta, String producto, String tienda, int excelente, int buena, int mala) {
        this.id_oferta = id_oferta;
        this.producto = producto;
        this.tienda = tienda;
        this.excelente = excelente;
        this.buena = buena;
        this.mala = mala;
    }

    public ValoracionOferta() {
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

    /**
     * @return the producto
     */
    public String getProducto() {
        return producto;
    }

    /**
     * @param producto the producto to set
     */
    public void setProducto(String producto) {
        this.producto = producto;
    }

    /**
     * @return the tienda
     */
    public String getTienda() {
        return tienda;
    }

    /**
     * @param tienda the tienda to set
     */
    public void setTienda(String tienda) {
        this.tienda = tienda;
    }

    /**
     * @return the excelente
     */
    public int getExcelente() {
        return excelente;
    }

    /**
     * @param excelente the excelente to set
     */
    public void setExcelente(int excelente) {
        this.excelente = excelente;
    }

    /**
     * @return the buena
     */
    public int getBuena() {
        return buena;
    }

    /**
     * @param buena the buena to set
     */
    public void setBuena(int buena) {
        this.buena = buena;
    }

    /**
     * @return the mala
     */
    public int getMala() {
        return mala;
    }

    /**
     * @param mala the mala to set
     */
    public void setMala(int mala) {
        this.mala = mala;
    }

}
