<%-- 
    Document   : ValorarOferta
    Created on : 28-oct-2017, 20:54:57
    Author     : gus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
           <title>Mis Ofertas</title>
    </head>
    <body>
        
        <jsp:include page="layouts/headerCliente.jsp"/>
        <div class="col-md-2"  ></div>
        <div class="col-md-8"  >
        
                   <div class="col-md-4"  >
                <div class="col-md-12">
                    <img src="img/<c:out value="${oferta.getImagen()}" /> " alt="foto" height="300" width="300"> 
                        
                
                </div>
                    </div>
                    <div class="col-md-4"  >
                <div class="col-md-12" style="text-align: center;">
                <font size="4" color="black" ><c:out value="${oferta.getNombre_producto()}" /></font>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6" style="font-size: 2; color:black;">Antes: <c:out value="${oferta.getPrecio()}" /></div>
                    <div class="col-md-6" style="font-size: 2; color:orange; font-weight: bold;">Ahora: <c:out value="${oferta.getPrecio_oferta()}" /></div>
                </div>
                <div class="col-md-12" style="font-size: 2; color:red; font-weight: bold;">
                <c:out value="${100-(oferta.getPrecio_oferta()*100)/oferta.getPrecio()}" />% de descuento
                </div>
                <div class="col-md-12">
                    <font size="2" color="black" style="font-weight: bold;">Descripción:</font> <c:out value="${oferta.getEspecificacion_tecnica()}" />
                </div>
                <div class="col-md-12">
                <font size="2" color="black" style="font-weight: bold;">Cantidad disponible:</font> <c:out value="${oferta.getStock()}" /> Unidades
                </div>
                <div class="col-md-12">
                <font size="2" color="black" style="font-weight: bold;">Rubro:</font> <c:out value="${oferta.getRubro()}" />
                </div>
                <div class="col-md-12">
                    
                       
                </div>
                    </div>
                <div class="col-md-4"  >
                    
                    <h5>Valorar oferta</h5>
          <form class="col-md-12" action="RegistrarValoracion" method="POST" enctype='multipart/form-data'>
            
                    <div class="form-group">
                        <label for="mensaje"> NOTA</label>
                            <select class="form-control" name="optidnota" id="cbbProductos" required="required" >
                                <option value="100"  >EXCELENTE</option>
                                <option value="200"  >BUENA</option>
                                <option value="300"  >MALA</option>
                            </select>    
                        <font color="red">
                                <c:out value="${mapMensajes['codigo']}"/>
                            </font>
                        
                    </div>
                    <div class="form-group">
                        <label for="mensaje"> COMENTARIO</label>
                        <input class="form-control" type="text" name="txtcomentario" value="${producto.getComentario()}" required="required" />
                            <font color="red">
                                    <c:out value="${mapMensajes['comentario']}"/>
                            </font>
                        
                    </div>
                    <div class="form-group">
                        <label for="mensaje"> IMAGEN</label>
                        <input class="form-control" type="file" name="txtimagen" value="${producto.getImagen_producto()}" required="required" />
                            <font color="red">
                                    <c:out value="${mapMensajes['imagen']}"/>
                            </font>
                    </div>
                    <tr>
                    <input type="hidden" name="idoferta" value="${oferta.getId_oferta()}" />
                        <td><input class="btn btn-primary" type="submit" value="VALORAR" /></td>
                        <td><a class="btn btn-primary" href="ListarOfertasConsumidor">CANCELAR </a></td>
                    </tr>
                </tbody>
            </table>
        </form>
                    
                </div>
            
                            
                         <table id="datos" class="table table-striped table-bordered table-hover" border="" width="400px">
     <thead>
         <tr class="bg-primary">
             <th>NOMBRE</th>
             <th>COMENTARIO</th>
             <th>NOTA</th>
             
         </tr>
     </thead>
     <tbody>
         <c:set var="contador" scope="session" value="${0}"/>
         <c:forEach var="v" items="${valoraciones}">
               <tr class="alt">
                   
                    
                    <td><c:out value="${v.getNombre_usuario()}" /> </td>
                    <td><c:out value="${v.getComentario()}" /> 
                    <a href="img/<c:out value="${v.getBoleta()}" />" target="_blank"> BOLETA</a></td></td>
                    <td><c:out value="${v.getNota()}" /> </td>
                    
                    
             </tr>
          </c:forEach>       
    </tbody>
    </table>
     
                      </div>      
                            
          <script src="js/jquery.js"></script> 
                             <script src="js/bootstrap.min.js"></script> 
    </body>
</html>
