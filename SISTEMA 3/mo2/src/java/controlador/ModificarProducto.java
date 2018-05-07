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
public class ModificarProducto extends HttpServlet {

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
            out.println("<title>Servlet ModificarProducto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ModificarProducto at " + request.getContextPath() + "</h1>");
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
        
        
        
        int idUsuario;
        ProductoDTO p = new ProductoDTO();
        //Map para mensajes de Error
        Map<String, String> mapMensajes = new HashMap<>();
        String mensaje="";
         //Rescatar campos del Formulario (Convertir y Validar)
        //----------------------------------------------------------------------
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);


        // req es la HttpServletRequest que recibimos del formulario.
        // Los items obtenidos serán cada uno de los campos del formulario,
        // tanto campos normales como ficheros subidos.
        List items;
        try {
            items = upload.parseRequest(request);
       

                // Se recorren todos los items, que son de tipo FileItem
                for (Object item : items) {
                   FileItem uploaded = (FileItem) item;

                   // Hay que comprobar si es un campo de formulario. Si no lo es, se guarda el fichero
                   // subido donde nos interese
                   if (!uploaded.isFormField()) {
                      // No es campo de formulario, guardamos el fichero en algún sitio
                       String key1 = uploaded.getFieldName();
                       String valor1 = uploaded.getString();
                       System.out.println(key1+" "+uploaded.getName());
                       Variables var= new Variables();
                      //File fichero = new File("c:/Data/", uploaded.getName());
                      File fichero = new File(var.ruta_multimedia, uploaded.getName());
                       
                       try {
                           String ruta = uploaded.getName();
                                if(ruta.isEmpty())
                                {
                                    mapMensajes.put("rutaimagen","Favor,Ingrese la imagen");
                                }
                                else
                                { 
                                    p.setImagen_producto(ruta);
                                    uploaded.write(fichero);
                                    Thread.sleep (2000);
                                }
                         
                       } catch (Exception ex) {
                           Logger.getLogger(ModificarProducto.class.getName()).log(Level.SEVERE, null, ex);
                       }
                   } else {
                      // es un campo de formulario, podemos obtener clave y valor
                      String key = uploaded.getFieldName();
                      String valor = uploaded.getString();
                      
                        if (key.equals("txtcodigo"))
                        {
                            p.setCodigo(valor);
                            System.out.println(p.getCodigo());
                        }
                       //-----------------------------------------------------------------
                       if (key.equals("txtnombre"))
                       {
                          
                        String nombre = valor;
                        if(nombre.isEmpty())
                        {
                            mapMensajes.put("nombre","Favor, Ingrese el nombre");
                        }else
                        {
                            p.setNombre_producto(nombre.trim());
                            System.out.println(p.getNombre_producto());
                        }
                       }
                       //-----------------------------------------------------------------
                       if (key.equals("txtespecificacion"))
                       {
                          
                        String especificacion = valor;
                        if(especificacion.isEmpty())
                        {
                            mapMensajes.put("especificacion","Favor, Ingrese la especificacion");
                        }else
                        {
                            p.setEspecificacion_tecnica(especificacion.trim());
                           System.out.println(p.getEspecificacion_tecnica());
                        }
                       }
                       if (key.equals("txtstock")){
                       String stock = valor;
                        if(stock.isEmpty())
                        {
                            mapMensajes.put("stock","Favor,Ingrese el stock");
                        }
                        else
                        {
                            int stock_ = Integer.parseInt(stock);
                            if(stock_<1)
                             {
                                 mapMensajes.put("stock","Favor,Ingrese una cantidad mayor a 0");
                             }
                            p.setStock(stock_);
                            System.out.println("este es el stock"+p.getStock());
                         
                        }
                      }

                      
                      //------------------------------------------------------------------
                      if (key.equals("idproducto")){
                       String id = valor;
                        if(id.isEmpty())
                        {
                            mapMensajes.put("id","Favor,Ingrese el id");
                            System.out.println("no hay ID");
                        }
                        else
                        {
                            
                            p.setId_producto(Integer.parseInt(id));
                            System.out.println(id);
                        }
                          System.out.println("este es el id :"+p.getId_producto());
                      }
                       //------------------------------------------------------------------
                      if (key.equals("txtrubro")){
                       String rubro = valor;
                        if(rubro.isEmpty())
                        {
                            mapMensajes.put("rubro","Favor,Ingrese el rubro");
                        }
                        else
                        {
                            int rubro_ = Integer.parseInt(rubro);
                            if(rubro_<1)
                             {
                                 mapMensajes.put("rubro","Favor,Ingrese una cantidad válida");
                             }
                            p.setId_rubro(rubro_);
                            System.out.println(p.getId_rubro());
                        }
                      }
                      //------------------------------------------------------------------
                      
                      
                   }
                   }
         } catch (FileUploadException ex) {
            Logger.getLogger(ModificarProducto.class.getName()).log(Level.SEVERE, null, ex);
        }
        //---------------------------------------------------------------------
       if(mapMensajes.isEmpty())
        {    
           
            ProductoDAO pdao = new ProductoDAO();
            pdao.actualizar(p);
            request.getRequestDispatcher("/ListarProductos").forward(request, response);
           
        }else
        {
            mensaje = "Favor, revise el Formulario";
        }
        RubroDAO rubro = new RubroDAO();
        List<RubroDTO> lista = rubro.leerTodos();
        request.setAttribute("LstRubros", lista);
        
        request.setAttribute("producto",  p);
        request.setAttribute("mapMensajes", mapMensajes);
        request.setAttribute("mensaje", mensaje);
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
