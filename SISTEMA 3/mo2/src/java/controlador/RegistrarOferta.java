/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.OfertaDAO;
import dao.ProductoDAO;
import dto.OfertaDTO;
import dto.ProductoDTO;
import dto.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gus
 */
public class RegistrarOferta extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistrarOferta</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrarOferta at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        UsuarioDTO usuario = (UsuarioDTO) request.getSession().getAttribute("user");
        if (usuario == null)
        {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        
        
        request.setCharacterEncoding("UTF-8");
        //Establecer Conexion
       // Conexion cnx = new Conexion();
        //Crear Objeto del modelo
        int idoferta;
        OfertaDTO o = new OfertaDTO ();
        //Map para mensajes de Error
        Map<String, String> mapMensajes = new HashMap<>();
        String mensaje="";
         //Rescatar campos del Formulario (Convertir y Validar)
        
        //---------------------------------------------------------------optIdProd-------
        String idproducto = request.getParameter("optIdProd");
        if(idproducto.isEmpty())
        {
            mapMensajes.put("producto","Favor, seleccione el producto");
        }else
        {
            o.setId_producto(Integer.parseInt(idproducto.trim()));
        }
        //----------------------------------------------------------------------
        String precio = request.getParameter("txtprecio");
        if(precio.isEmpty())
        {
            mapMensajes.put("precio","Favor, Ingrese el precio");
        }else
        {
            o.setPrecio(Integer.parseInt(precio.trim()));
        }
        //----------------------------------------------------------------------
        String precio_oferta = request.getParameter("txtprecio_oferta");
        if(precio_oferta.isEmpty())
        {
            mapMensajes.put("oferta","Favor, Ingrese el precio de oferta");
        }else
        {
            o.setPrecio_oferta(Integer.parseInt(precio_oferta.trim()));
        }
        //----------------------------------------------------------------------
        String estado = request.getParameter("optestado");
        if(estado.isEmpty())
        {
            mapMensajes.put("estado","Favor, Ingrese el estado");
        }else
        {
            o.setEstado(estado.trim());
        }
        //----------------------------------------------------------------------       
            if(mapMensajes.isEmpty())
        {
         
        o.setId_empresa(usuario.getIdempresa());
        o.setId_usuario(usuario.getId_usuario());
        
            
            
           
            OfertaDAO odao = new OfertaDAO();
            odao.insertar(o);
           request.getRequestDispatcher("/ListarOfertas").forward(request, response);
        }else
        {
            mensaje = "Favor, revise el Formulario";
        }
        
        
        request.setAttribute("oferta",  o);
        request.setAttribute("mapMensajes", mapMensajes);
        request.setAttribute("mensaje", mensaje);
        
         ProductoDAO prod = new ProductoDAO();
        List<ProductoDTO> lista = prod.leerTodos();
        request.setAttribute("LstProductos", lista);
        
        
        
        request.getRequestDispatcher("/AgregarOferta.jsp").forward(request, response);
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
