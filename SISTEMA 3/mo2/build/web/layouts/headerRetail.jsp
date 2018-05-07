<%-- 
    Document   : headerRetail
    Created on : 27-oct-2017, 23:19:50
    Author     : gus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="dto.UsuarioDTO"%> 
<%UsuarioDTO usuario = (UsuarioDTO)session.getAttribute("user");%>        
         <nav class="navbar navbar-default"> 
             <div class="container-fluid"> 
                 <div class="navbar-header"> 
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> 
                         <span class="sr-only">Toggle navigation</span> 
                         <span class="icon-bar"></span> 
                         <span class="icon-bar"></span> 
                         <span class="icon-bar"></span> 
                     </button> 
                     <a class="navbar-brand" href="#">
                         <img src="logo5.png" width="105" height="35" alt="Mis Ofertas"/>
                     </a> 
                 </div> <!-- Collect the nav links, forms, and other content for toggling --> 
                 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> 
                     <ul class="nav navbar-nav">
                         <li class="">
                             <a class="" href="ListarOfertas">Ofertas</a> 
                             <span class="sr-only">(current)</span>
                             </a>
                         </li > 
                         <li >
                             <a  href="ListarProductos">Productos</a>
                         </li> 
                         <li class="dropdown"> 
                             <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Menú 
                                 <span class="caret"></span>
                             </a> <ul class="dropdown-menu"> 
                                 <li>
                                     <a  class="" href="GenerarPDFValoraciones" target="_blank">Reporte Valoraciones</a>
                                 </li> 
                                 <li>
                                     <a class=""  href="AgregarProducto.jsp">Registrar producto</a>
                                 </li> 
                                 <li>
                                     <a class=""  href="Registro_de_Usuario.jsp">Registrar usuario</a>
                                 </li> 
                                 <li role="separator" class="divider"></li> 
                                 <li>
                                     <a class="" href="Productos">Productos</a>
                                 </li> 
                                 <li role="separator" class="divider"></li> 
                                 <li>
                                     <a  href="Productos">Productos</a>
                                 </li> 
                             </ul> 
                         </li> 
                     </ul> 
                     <form class="navbar-form navbar-left">
                         <div class="form-group">
                             <input id="searchTerm" type="text" onkeyup="doSearch()" class="form-control" placeholder="Buscar"> 
                         </div> 
                         <button type="submit" class="btn btn-default">Buscar</button> 
                     </form> 
                     <ul class="nav navbar-nav navbar-right"> 
                         <li>
                             <a href="#"><c:out value="${nombreapellido}"/></a>
                         </li> 
                         <li class="dropdown"> 
                             <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%out.println("Usuario en sesion: " + usuario.getNombre());%><%out.println("| Tienda: " + usuario.getEmpresa());%> 
                                 <span class="caret"></span>
                             </a> <ul class="dropdown-menu"> 
                                 <li><a href="RecuperarPassword.jsp">Recuperar password</a></li> 
                                 <li><a href="#">Información</a></li> 
                                 <li><a href="#">Mesa de ayuda</a></li> 
                                 <li role="separator" class="divider"></li> 
                                 <li><a href="CerrarSesionRetail">Cerrar sesión</a></li> 
                             </ul> 
                         </li> 
                     </ul> 
                 </div><!-- /.navbar-collapse --> 
             </div><!-- /.container-fluid --> 
         </nav>﻿
