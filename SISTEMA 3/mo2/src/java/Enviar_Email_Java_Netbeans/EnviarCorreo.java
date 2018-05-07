/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Enviar_Email_Java_Netbeans;

import dao.OfertaDAO;
import dao.ProductoDAO;
import dao.UsuarioDAO;
import dto.OfertaDTO;
import dto.ProductoDTO;
import dto.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gus
 */
public class EnviarCorreo extends HttpServlet {
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   JCMail mail = new JCMail();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        UsuarioDTO usuario = (UsuarioDTO) request.getSession().getAttribute("user");
        if (usuario == null)
        {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        ProductoDAO prod = new ProductoDAO();
        List<ProductoDTO> lista = prod.leerTodos();
        request.setAttribute("LstProductos", lista);
        
        int id = Integer.parseInt(request.getParameter("idoferta"));
        OfertaDAO o = new OfertaDAO();
        OfertaDTO oferta = o.leer(id);
        
        UsuarioDAO u = new UsuarioDAO();
        List<UsuarioDTO> listau = u.leerTodos();
        
        for ( UsuarioDTO us : listau ) {
          
            mail.setFrom( "misofertas.portafolio@gmail.com" );
            mail.setPassword( "portafolio");        
            mail.setTo( us.getCorreo() );
            mail.setSubject( us.getNombre()+", No te pierdas esta Gran Oferta");
            mail.setMessage( "Aprovecha solo hasta agotar Stock: "+
                    oferta.getNombre_producto()+", "+oferta.getEspecificacion_tecnica()+
                    " por solo: $"+ oferta.getPrecio_oferta() );
            mail.SEND();
         }
        request.setAttribute("correo", "Correo Enviado Correctamente");
         request.getRequestDispatcher("/ListarOfertas").forward(request, response);
       
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
