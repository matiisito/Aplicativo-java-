<%-- 
    Document   : AgregarOferta
    Created on : 25-oct-2017, 22:55:25
    Author     : gus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.UsuarioDTO"%>



<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
         <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
         <jsp:include page="layouts/headerRetail.jsp"/>
       
         <div class="col-md-3"></div>
        <form class="col-md-6" action="RegistrarOferta" method="POST" >
             <h3>Registrar Oferta</h3>       
            <div class="form-group">
                    <label for="mensaje"> PRODUCTO</label>
                    <select class="form-control" name="optIdProd" id="optIdProd">
                    <option value="">(SELECCIONE EL PRODUCTO)</option>
                    <c:forEach var="p" items="${LstProductos}">
                        <option value="${p.getId_producto()}" ${oferta.getId_producto() == p.getId_producto() ? 'selected' : ''}>
                            <c:out value="${p.getNombre_producto()}" />
                        </option>
                    </c:forEach>
                    </select>
                    </div>
                     <font color="red">
                                <c:out value="${mapMensajes['producto']}"/>
                            </font>
                    <div class="form-group">
                        <label for="mensaje"> PRECIO</label>
                        <input class="form-control" type="text" name="txtprecio" value="${oferta.getPrecio() == 0 ? '' : oferta.getPrecio()}" />
                            <font color="red">
                                <c:out value="${mapMensajes['precio']}"/>
                            </font>
                        
                    </div>
                        
                    <div class="form-group">
                        <label for="mensaje"> PRECIO OFERTA</label>
                        <input class="form-control" type="text" name="txtprecio_oferta" value="${oferta.getPrecio_oferta() == 0 ? '' : oferta.getPrecio()}" />
                            <font color="red">
                                    <c:out value="${mapMensajes['oferta']}"/>
                            </font>
                    </div>
                    <div class="form-group">
                    <label for="mensaje"> ESTADO</label>    
                    <select class="form-control" name="optestado" id="cbbProductos">
                    <option value="s" ${oferta.getEstado() == 's' ? 'selected' : ''} >PUBLICADA</option>
                    <option value="n" ${oferta.getEstado() == 'n' ? 'selected' : ''} >NO PUBLICADA</option>
                    </select>
                    </div>        
                     
                    <tr>
                        <td><input class="btn btn-primary" type="submit" value="Registrar Oferta" /></td>
                        <td><input class="btn btn-primary" type="reset" value="Limpiar Campos" /></td>
                        <td><a class="btn btn-primary" href="ListarOfertas">VOLVER </a></td>
                    </tr>
                </tbody>
            <script src="js/jquery.js"></script> 
                             <script src="js/bootstrap.min.js"></script> 
        
    </body>
</html>
