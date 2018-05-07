<%-- 
    Document   : headerCliente
    Created on : 28-oct-2017, 13:20:20
    Author     : gus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="dto.UsuarioDTO"%> 
<%UsuarioDTO usuario = (UsuarioDTO)session.getAttribute("user");%>        
<nav class="navbar navbar-default" style="background: rgba(241,231,103,1);
background: -moz-linear-gradient(left, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -webkit-gradient(left top, right top, color-stop(0%, rgba(241,231,103,1)), color-stop(100%, rgba(254,182,69,1)));
background: -webkit-linear-gradient(left, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -o-linear-gradient(left, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -ms-linear-gradient(left, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: linear-gradient(to right, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f1e767', endColorstr='#feb645', GradientType=1 );
  "> <div class="container-fluid"> <div class="navbar-header"> <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> <a class="navbar-brand" href="#"><img src="logo5.png" width="105" height="35" alt="Mis Ofertas"/></a> </div> <!-- Collect the nav links, forms, and other content for toggling --> <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> <ul class="nav navbar-nav"> <li class=""><a class="" href="ListarOfertasConsumidor">Ofertas</a> <span class="sr-only">(current)</span></a></li > <li ><a  href="ListarDescuentos">Descuentos</a></li> <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Menú <span class="caret"></span></a> <ul class="dropdown-menu"> <li><a  class="" href="ListarDescuentos">Descuentos</a></li> <li><a class=""  href="AgregarProducto.jsp">Registrar producto</a></li> <li><a class=""  href="Registro_de_Usuario.jsp">Registrar usuario</a></li> <li role="separator" class="divider"></li> <li><a class="" href="Productos">Productos</a></li> <li role="separator" class="divider"></li> <li><a  href="Productos">Productos</a></li> </ul> </li> </ul> <form class="navbar-form navbar-left"> <div class="form-group"> <input id="searchTerm" type="text" onkeyup="doSearch()" class="form-control" placeholder="Buscar"> </div> <button type="submit" class="btn btn-default">Buscar</button> </form> <ul class="nav navbar-nav navbar-right"> <li><a href="#"><c:out value="${nombreapellido}"/></a></li> <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%out.println("P: " + usuario.getPuntos());%><%out.println("| Usuario en sesion: " + usuario.getNombre());%> <span class="caret"></span></a> <ul class="dropdown-menu"> <li><a href="RecuperarPassword.jsp">Recuperar password</a></li> <li><a href="#">Información</a></li> <li><a href="#">Mesa de ayuda</a></li> <li role="separator" class="divider"></li> <li><a href="CerrarSesionConsumidor">Cerrar sesión</a></li> </ul> </li> </ul> </div><!-- /.navbar-collapse --> </div><!-- /.container-fluid --> </nav>﻿

