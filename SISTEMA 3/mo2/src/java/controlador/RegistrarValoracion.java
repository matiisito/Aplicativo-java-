/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.OfertaDAO;
import dao.ProductoDAO;
import dao.RubroDAO;
import dao.UsuarioDAO;
import dao.ValoracionDAO;
import dto.OfertaDTO;
import dto.ProductoDTO;
import dto.RubroDTO;
import dto.UsuarioDTO;
import dto.ValoracionDTO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author gus
 */
public class RegistrarValoracion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        UsuarioDTO usuario = (UsuarioDTO) request.getSession().getAttribute("user");
        if (usuario == null)
        {request.getRequestDispatcher("/LoginConsumidor.jsp").forward(request, response);}       
        int idUsuario;
        ValoracionDTO valoracion = new ValoracionDTO();
        //Map para mensajes de Error
        Map<String, String> mapMensajes = new HashMap<>();
        String mensaje="";
         //Rescatar campos del Formulario (Convertir y Validar)
        //----------------------------------------------------------------------
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        
        List items;
        try {
            items = upload.parseRequest(request);
                 for (Object item : items) {
                   FileItem uploaded = (FileItem) item;
                     if (!uploaded.isFormField()) {
                           String key1 = uploaded.getFieldName();
                           String valor1 = uploaded.getString();
                           Variables var= new Variables();
                           File fichero = new File(var.ruta_multimedia, uploaded.getName());
                       try {
                           String ruta = uploaded.getName();
                                if(ruta.isEmpty())
                                {
                                    mapMensajes.put("rutaimagen","Favor,Ingrese la imagen");
                                }
                                else
                                { 
                                    valoracion.setBoleta(ruta);
                                    uploaded.write(fichero);
                                    Thread.sleep (2000);
                                }
                       } catch (Exception ex) {
                           Logger.getLogger(RegistrarProducto.class.getName()).log(Level.SEVERE, null, ex);
                       }
                        } else {
                      String key = uploaded.getFieldName();
                      String valor = uploaded.getString();
                        if (key.equals("optidnota"))
                          {
                            valoracion.setId_nota(Integer.parseInt(valor));
                          }
                       //-----------------------------------------------------------------
                       if (key.equals("txtcomentario"))
                       {
                        String comentario = valor;
                        if(comentario.isEmpty())
                        {
                            mapMensajes.put("comentario","Favor, Ingrese un comentario");
                        }else
                        {
                            valoracion.setComentario(comentario.trim());
                           
                        }
                       }
                       //-------------------------------------------
                       if (key.equals("idoferta"))
                       {
                        String idoferta = valor;
                        if(idoferta.isEmpty())
                        {
                            mapMensajes.put("comentario","Favor, Ingrese un comentario");
                        }else
                        {
                            valoracion.setId_oferta(Integer.parseInt(idoferta));
                            
                           
                        }
                       }
                       
                      //------------------------------------------------------------------
                      }
                   }
         } catch (FileUploadException ex) {
            Logger.getLogger(RegistrarProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
        //---------------------------------------------------------------------
        if(mapMensajes.isEmpty())
        {    
           
           ValoracionDAO v = new ValoracionDAO();
           valoracion.setId_usuario(usuario.getId_usuario());
            
           UsuarioDAO udao =  new UsuarioDAO();
           udao.actualizar(usuario);
           
           v.insertar(valoracion);
           
          
            usuario.setPuntos(usuario.getPuntos()+100);
            request.getSession().setAttribute("user",usuario );
           
           ProductoDAO prod = new ProductoDAO();
        List<ProductoDTO> lista = prod.leerTodos();
        request.setAttribute("LstProductos", lista);
        
        OfertaDAO o = new OfertaDAO();
        OfertaDTO oferta = o.leer(valoracion.getId_oferta());
        
        List<ValoracionDTO> valoraciones = v.leerTodosFiltrado(valoracion.getId_oferta());
        request.setAttribute("valoraciones", valoraciones);
        request.setAttribute("oferta", oferta);
        request.getRequestDispatcher("/VerOfertaDetalle.jsp").forward(request, response);
   
            
            
           
        }else
        {
            mensaje = "Favor, revise el Formulario";
        
                
        request.setAttribute("producto",  valoracion);
        request.setAttribute("mapMensajes", mapMensajes);
        request.setAttribute("mensaje", mensaje);
        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
