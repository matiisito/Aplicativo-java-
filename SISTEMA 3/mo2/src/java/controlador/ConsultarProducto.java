/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.ProductoDAO;
import dao.RubroDAO;
import dto.ProductoDTO;
import dto.RubroDTO;
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
public class ConsultarProducto extends HttpServlet {

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
            out.println("<title>Servlet ConsultarProducto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConsultarProducto at " + request.getContextPath() + "</h1>");
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
        UsuarioDTO usuario = (UsuarioDTO) request.getSession().getAttribute("user");
        if (usuario == null)
        {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        
        
        int id = Integer.parseInt(request.getParameter("idproducto"));
        ProductoDAO prod = new ProductoDAO();
        ProductoDTO p = prod.leer(id);
        request.setAttribute("producto", p);
        
        RubroDAO rubro = new RubroDAO();
        List<RubroDTO> lista = rubro.leerTodos();
        request.setAttribute("LstRubros", lista);
        
        
        request.getRequestDispatcher("/EditarProducto.jsp").forward(request, response);
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
        
        
        int id = Integer.parseInt(request.getParameter("idproducto"));
        ProductoDAO prod = new ProductoDAO();
        ProductoDTO p = prod.leer(id);
        request.setAttribute("producto", p);
        
        RubroDAO rubro = new RubroDAO();
        List<RubroDTO> lista = rubro.leerTodos();
        request.setAttribute("LstRubros", lista);
        
        request.getRequestDispatcher("/EditarProducto.jsp").forward(request, response);
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
