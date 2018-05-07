/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import dao.DescuentoDAO;
import dao.UsuarioDAO;
import dto.DescuentoDTO;
import dto.UsuarioDTO;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.binary.Base64;

/**
 *
 * @author gus
 */
public class GenerarPDF extends HttpServlet {

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
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        try {
                    UsuarioDTO usuario = (UsuarioDTO) request.getSession().getAttribute("user");
                    if (usuario == null)
                    {
                        request.getRequestDispatcher("/index.jsp").forward(request, response);
                    }
                    DescuentoDAO d= new DescuentoDAO();
                    DescuentoDTO descuento = d.leer(Integer.parseInt(request.getParameter("iddescuento")));
                    
            try {
                Document documento = new Document();
                PdfWriter.getInstance(documento, out);
                
                documento.open();
                
                Paragraph par1 = new Paragraph();
                Font fonttitulo = new Font(Font.FontFamily.HELVETICA,16,Font.BOLD,BaseColor.BLUE);
                par1.add(new Phrase("Cupón de descuento",fonttitulo));
                par1.setAlignment(Element.ALIGN_CENTER);
                par1.add(new Phrase(Chunk.NEWLINE));
                par1.add(new Phrase(Chunk.NEWLINE));
                documento.add(par1);
                
                Paragraph par2 = new Paragraph();
                Font descripcion = new Font(Font.FontFamily.TIMES_ROMAN,10,Font.NORMAL,BaseColor.BLACK);
                par2.add(new Phrase("Este cupón es válido para el Cliente: "+usuario.getNombre()+" "+usuario.getApellido()+" Con el Rut:"+usuario.getRut()+" "
                        + "y solo puede ser usado para los articulos detallados a continuación: "+descuento.getRubro(),descripcion));
                par2.setAlignment(Element.ALIGN_CENTER);
                par2.add(new Phrase(Chunk.NEWLINE));
                par2.add(new Phrase(Chunk.NEWLINE));
                documento.add(par2);
                
                Variables var= new Variables();
                Image imagen = Image.getInstance(var.ruta_multimedia+"cupon_de_descuento.jpg");
                imagen.setAlignment(Element.ALIGN_CENTER);
                imagen.scaleToFit(300,300);
                documento.add(imagen);
                
                PdfPTable tabla= new PdfPTable(3);
                PdfPCell celda1 = new PdfPCell(new Paragraph("Descuento",FontFactory.getFont("Arial",12,Font.BOLD,BaseColor.RED)));
                PdfPCell celda2 = new PdfPCell(new Paragraph("Tope",FontFactory.getFont("Arial",12,Font.BOLD,BaseColor.RED)));
                PdfPCell celda3 = new PdfPCell(new Paragraph("Rubro",FontFactory.getFont("Arial",12,Font.BOLD,BaseColor.RED)));
                
                tabla.addCell(celda1);
                tabla.addCell(celda2);
                tabla.addCell(celda3);
                
                tabla.addCell(descuento.getDescuento()+"%");
                tabla.addCell(String.valueOf(descuento.getTope()));
                tabla.addCell(descuento.getRubro());
                
                documento.add(tabla);
                
                Image imagen2 = Image.getInstance(var.ruta_multimedia+"codigo_barra.png");
                imagen2.setAlignment(Element.ALIGN_RIGHT);
                imagen2.scaleToFit(100,100);
                documento.add(imagen2);
                
                Paragraph par3 = new Paragraph();
                Font descripcion3 = new Font(Font.FontFamily.TIMES_ROMAN,10,Font.NORMAL,BaseColor.BLACK);
                par3.add(new Phrase(Encriptar(usuario.getNombre()+" "+usuario.getApellido()),descripcion));
                par3.setAlignment(Element.ALIGN_RIGHT);
                par3.add(new Phrase(Chunk.NEWLINE));
                par3.add(new Phrase(Chunk.NEWLINE));
                documento.add(par3);
                
                
                documento.close();
            }catch (Exception ex){ex.getMessage();}
        } finally 
        {
        out.close();
        }
    }

    public static String Encriptar(String texto) {
 
        String secretKey = "qualityinfosolutions"; //llave para encriptar datos
        String base64EncryptedString = "";
 
        try {
 
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] digestOfPassword = md.digest(secretKey.getBytes("utf-8"));
            byte[] keyBytes = Arrays.copyOf(digestOfPassword, 24);
 
            SecretKey key = new SecretKeySpec(keyBytes, "DESede");
            Cipher cipher = Cipher.getInstance("DESede");
            cipher.init(Cipher.ENCRYPT_MODE, key);
 
            byte[] plainTextBytes = texto.getBytes("utf-8");
            byte[] buf = cipher.doFinal(plainTextBytes);
            byte[] base64Bytes = Base64.encodeBase64(buf);
            base64EncryptedString = new String(base64Bytes);
 
        } catch (Exception ex) {
        }
        return base64EncryptedString;
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
