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
import static controlador.GenerarPDF.Encriptar;
import dao.DescuentoDAO;
import dao.OfertaDAO;
import dto.DescuentoDTO;
import dto.UsuarioDTO;
import dto.ValoracionOferta;
import java.io.IOException;
import java.io.OutputStream;
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
public class GenerarPDFValoraciones extends HttpServlet {

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
        try (OutputStream out = response.getOutputStream()) {
                    UsuarioDTO usuario = (UsuarioDTO) request.getSession().getAttribute("user");
                    if (usuario == null)
                    {
                        request.getRequestDispatcher("/index.jsp").forward(request, response);
                    }
                OfertaDAO odao = new OfertaDAO(); 
                List<ValoracionOferta> lista = odao.leerReporte();   
            try {
                Document documento = new Document();
                PdfWriter.getInstance(documento, out);
                
                documento.open();
                
                Paragraph par1 = new Paragraph();
                Font fonttitulo = new Font(Font.FontFamily.HELVETICA,16,Font.BOLD,BaseColor.BLUE);
                par1.add(new Phrase("Reporte",fonttitulo));
                par1.setAlignment(Element.ALIGN_CENTER);
                par1.add(new Phrase(Chunk.NEWLINE));
                par1.add(new Phrase(Chunk.NEWLINE));
                documento.add(par1);
                
                PdfPTable tabla= new PdfPTable(5);
                PdfPCell celda1 = new PdfPCell(new Paragraph("Id oferta",FontFactory.getFont("Arial",12,Font.BOLD,BaseColor.RED)));
                PdfPCell celda2 = new PdfPCell(new Paragraph("Producto",FontFactory.getFont("Arial",12,Font.BOLD,BaseColor.RED)));
                PdfPCell celda4 = new PdfPCell(new Paragraph("Excelente",FontFactory.getFont("Arial",12,Font.BOLD,BaseColor.RED)));
                PdfPCell celda5 = new PdfPCell(new Paragraph("Buena",FontFactory.getFont("Arial",12,Font.BOLD,BaseColor.RED)));
                PdfPCell celda6 = new PdfPCell(new Paragraph("Mala",FontFactory.getFont("Arial",12,Font.BOLD,BaseColor.RED)));
                
                tabla.addCell(celda1);
                tabla.addCell(celda2);
                tabla.addCell(celda4);
                tabla.addCell(celda5);
                tabla.addCell(celda6);
                
                
                
                for ( ValoracionOferta vo : lista ) {
                tabla.addCell(String.valueOf(vo.getId_oferta()));
                tabla.addCell(vo.getProducto());
                tabla.addCell(String.valueOf(vo.getExcelente()));
                tabla.addCell(String.valueOf(vo.getBuena()));
                tabla.addCell(String.valueOf(vo.getMala()));
                
                }  
                
                tabla.setWidthPercentage(100);
                
                documento.add(tabla);
                
                
                
                
                documento.close();
            }catch (Exception ex){ex.getMessage();}
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
