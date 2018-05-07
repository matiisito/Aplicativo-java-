<%-- 
    Document   : Ofertas
    Created on : 25-oct-2017, 16:48:54
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
        

        <script language="JavaScript"> 
        function pregunta(){ 
            if (confirm('¿Estas seguro de enviar este formulario?')){ 
               document.tuformulario.submit() 
            } 
        } 
        </script>
        <script language="JavaScript"> 
        function pregunta2(){ 
            if (confirm('¿Estas seguro de enviar esta oferta a todos los usuarios?')){ 
               document.tuformulario.submit() 
            } 
        } 
        </script>
        <jsp:include page="layouts/headerRetail.jsp"/>
        <div class="col-md-2"></div>
        <div class="col-md-8">
                             <a  class="btn btn-primary" href="listarProductosSelect">Agregar una Oferta</a>
                             <br>
                             <br>
                        <p style="color:blue;"> <c:out value="${correo}" /></p>
  <div class="table table-striped table-bordered table-hover"  width="400px" style="width: 900px;">
  <table id="datos" class="table table-striped table-bordered table-hover" border="" width="400px">
     <thead>
         <tr class="bg-primary">
             <th>ID</th>
             <th>PRODUCTO</th>
             <th>PRECIO</th>
             <th>PRECIO OFERTA</th>
             <th>ESTADO</th>
             <th>Editar</th>
             <th>Eliminar</th>
             <th>ENVIAR MAIL</th>
         </tr>
     </thead>
     <tbody>
         <c:set var="contador" scope="session" value="${0}"/>
         <c:forEach var="o" items="${LstOfertas}">
               <tr class="alt">
                   
                    
                    <td><c:out value="${o.getId_oferta()}" /> </td>
                    <td><c:out value="${o.getNombre_producto()}" /> </td>
                    <td><c:out value="${o.getPrecio()}" /> </td>
                    <td><c:out value="${o.getPrecio_oferta()}" /> </td>
                    <td><c:out value="${o.getEstado() == 's' ? 'PUBLICADA' : 'NO PUBLICADA'}" /> </td>
                    
                    <td>
                        <form action="ConsultarOferta" method="post">
                            <input type="hidden" name="idoferta" value="${o.getId_oferta()}" />
                            <input class="btn btn-primary" type="submit" value="Editar" />
                        </form>
                    </td>
                    <td>
                        <form action="EliminarOferta" method="post" >
                            <input type="hidden" name="idoferta" value="${o.getId_oferta()}" />
                            <input class="btn btn-primary" type="submit" value="Eliminar" onclick="pregunta()"/>
                        </form>
                    </td>
                    <td>
                        <form action="EnviarCorreo" method="post" >
                            <input type="hidden" name="idoferta" value="${o.getId_oferta()}" />
                            <input class="btn btn-primary" type="submit" value="Correo" onclick="pregunta2()"/>
                        </form>
                    </td>
             </tr>
          </c:forEach>       
    </tbody>
    </table>
        </div>    

             <br> <br>    
        <a class="btn btn-primary" href="MenuTiendaRetail.jsp">VOLVER </a>    
         <script src="js/jquery.js"></script> 
                             <script src="js/bootstrap.min.js"></script> 
             <script language="javascript">
		function doSearch()
		{
			var tableReg = document.getElementById('datos');
			var searchText = document.getElementById('searchTerm').value.toLowerCase();
			var cellsOfRow="";
			var found=false;
			var compareWith="";
 
			// Recorremos todas las filas con contenido de la tabla
			for (var i = 1; i < tableReg.rows.length; i++)
			{
				cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
				found = false;
				// Recorremos todas las celdas
				for (var j = 0; j < cellsOfRow.length && !found; j++)
				{
					compareWith = cellsOfRow[j].innerHTML.toLowerCase();
					// Buscamos el texto en el contenido de la celda
					if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
					{
						found = true;
					}
				}
				if(found)
				{
					tableReg.rows[i].style.display = '';
				} else {
					// si no ha encontrado ninguna coincidencia, esconde la
					// fila de la tabla
					tableReg.rows[i].style.display = 'none';
				}
			}
		}
	</script>
        </div>
    </body>
</html>
