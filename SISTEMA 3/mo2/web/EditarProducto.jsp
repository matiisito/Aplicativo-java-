<%-- 
    Document   : EditarProducto
    Created on : 25-oct-2017, 14:47:18
    Author     : gus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dto.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
                 <jsp:include page="layouts/headerRetail.jsp"/>
       
        <div class="centrar cuadro">
        
        <div class="col-md-3"></div>
        <form class="col-md-6" action="ModificarProducto" method="POST" enctype='multipart/form-data'>
          <h3>Modificar Producto</h3>        
            <div class="form-group">
                        <label for="mensaje"> CODIGO</label>
                        <input class="form-control" type="text" name="txtcodigo" value="${producto.getCodigo()}" />
                            <font color="red">
                                <c:out value="${mapMensajes['codigo']}"/>
                            </font>
                    </div>
                    <div class="form-group">
                        <label for="mensaje"> NOMBRE</label>
                        <input class="form-control" type="text" name="txtnombre" value="${producto.getNombre_producto()}" />
                            <font color="red">
                                    <c:out value="${mapMensajes['nombre']}"/>
                            </font>
                        
                    </div>
                    <div class="form-group">
                        <label for="mensaje"> ESPECIFICACIÓN </label>
                        <input class="form-control" type="text" name="txtespecificacion" value="${producto.getEspecificacion_tecnica()}" />
                            <font color="red">
                                    <c:out value="${mapMensajes['especificacion']}"/>
                            </font>
                        
                    </div>
                    <div class="form-group">
                        <label for="mensaje"> IMAGEN</label>
                        <input class="form-control" type="file" name="txtimagen" value="${producto.getImagen_producto()}" />
                            <font color="red">
                                    <c:out value="${mapMensajes['rutaimagen']}"/>
                            </font>
                    </div>
                    <div class="form-group">
                        <label for="mensaje"> stock </label>
                        <input class="form-control" type="text" name="txtstock" value="${producto.getStock()}" />
                            <font color="red">
                                    <c:out value="${mapMensajes['stock']}"/>
                            </font>
                        
                    </div>
                    
                    <div class="form-group">
                    <select class="form-control" name="txtrubro" id="txtrubro">
                    <option value="">(seleccione)</option>
                    <c:forEach var="r" items="${LstRubros}">
                        <option value="${r.getId()}" ${r.getId() == producto.getId_rubro() ? 'selected' : ''}>
                            <c:out value="${r.getRubro()}" />
                        </option>
                    </c:forEach>
                    </select> 
                        <font color="red">
                                    <c:out value="${mapMensajes['rubro']}"/>
                            </font>
                     </div>                    
                      <input type="hidden" name="idproducto" value="${producto.getId_producto()}" />
                    <tr>
                        <td><input class="btn btn-primary" type="submit" value="Modificar Producto" /></td>
                        <td><input class="btn btn-primary" type="reset" value="Limpiar Campos" /></td>
                          <td><a class="btn btn-primary" href="ListarProductos">VOLVER </a></td>
                    </tr></div>
                </tbody>
            </table>
        </form>
        </div>
                            <script src="js/jquery.js"></script> 
                             <script src="js/bootstrap.min.js"></script> 
    </body>
</html>
