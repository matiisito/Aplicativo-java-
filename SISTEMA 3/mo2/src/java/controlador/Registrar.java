/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.UsuarioDAO;
import dto.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sergio
 */
public class Registrar extends HttpServlet {

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
        int idUsuario = 0;
        
        String usuario = request.getParameter("txtUsername").trim();
        String contrasena = request.getParameter("txtContrasena").trim();
        String rut = request.getParameter("txtRut").trim();
        String nombre = request.getParameter("txtNombre").trim();
        String apellido = request.getParameter("txtApellido").trim();
        String correo = request.getParameter("txtCorreo").trim();
        String telefono = request.getParameter("txtTelefono").trim();
        int idrol = 20;
        String estado = "s" ;
        String empresa = "consumidor";
        int idempresa = 0;
        
        if(usuario.equals("")|| contrasena.equals("")|| rut.equals("")|| nombre.equals("")|| apellido.equals("")|| telefono.equals("")|| correo.equals("")){
            String error = "<div class='alert alert-danger'> Campos vacios</div>";
            request.getSession().setAttribute("error", error);
            request.getRequestDispatcher("error.jsp").forward(request, response); 
        }
        else
        {
            UsuarioDAO usr = new UsuarioDAO();
            boolean iscreado = usr.insertar(new UsuarioDTO(idUsuario, usuario, contrasena, nombre, apellido, telefono, idrol, "",correo, rut, estado,idempresa,empresa,0));
            if(iscreado == true){
                String exito = "Usuario creado";
                request.getSession().setAttribute("exito", exito);
                request.getRequestDispatcher("LoginConsumidor.jsp").forward(request, response);
            }
            else{
                String error = "No se pudo crear usuario";
                request.getSession().setAttribute("error", error);
                request.getRequestDispatcher("registroUsusario.jsp").forward(request, response); 
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
