/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.DescuentoDAO;
import dao.UsuarioDAO;
import dto.DescuentoDTO;
import dto.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gus
 */
public class GenerarCupon extends HttpServlet {

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
            UsuarioDTO usuario = (UsuarioDTO) request.getSession().getAttribute("user");
                    if (usuario == null)
                    {
                        request.getRequestDispatcher("/index.jsp").forward(request, response);
                    }
                    DescuentoDAO d= new DescuentoDAO();
                    DescuentoDTO descuento = d.leer(Integer.parseInt(request.getParameter("iddescuento")));
                    UsuarioDAO u = new UsuarioDAO();
                    if(usuario.getPuntos()-descuento.getPuntos()<0)
                    {
                    request.setAttribute("mensaje", "No tienes puntos suficientes, Recuerda valorar las ofertas");
                    request.getRequestDispatcher("/ListarDescuentos").forward(request, response);

                    }else
                    {
                    
                    u.DescontarPuntos(usuario.getPuntos(),usuario.getId_usuario(),descuento.getPuntos());
                    
                    
                    request.setAttribute("d", descuento);
                    usuario.setPuntos(usuario.getPuntos()-descuento.getPuntos());
                    request.getSession().setAttribute("user", usuario );
                    request.getRequestDispatcher("/CuponDescuento.jsp").forward(request, response);
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
