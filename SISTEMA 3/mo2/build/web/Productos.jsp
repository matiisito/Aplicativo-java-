<%-- 
    Document   : Productos
    Created on : 25-oct-2017, 10:53:20
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
       <script language="JavaScript"> 
        function pregunta(){ 
            if (confirm('¿Estas seguro de enviar este formulario?')){ 
               document.tuformulario.submit() 
            } 
        } 
        </script>
        
               <jsp:include page="layouts/headerRetail.jsp"/>
               <div class="col-md-2"></div>
               <div class="col-md-8">     
                             <a  class="btn btn-primary" href="ListarRubrosSelect">Agregar un Producto</a>
                             <br>
                             <br>
                                 
  <div class="table table-striped table-bordered table-hover"  width="400px" style="width: 900px;">
  <table id="datos" class="table table-striped table-bordered table-hover" border="" width="400px">
     <thead>
         <tr class="bg-primary">
             <th>Imagen</th>
             <th>CODIGO</th>
             <th>NOMBRE</th>
             <th>STOCK </th>
             <th>RUBRO</th>
             <th>Editar</th>
             <th>Eliminar</th>
         </tr>
     </thead>
     <tbody>
         <c:set var="contador" scope="session" value="${0}"/>
         <c:forEach var="p" items="${LstProductos}">
               <tr class="alt">
                   <td>
                         <img src="img/<c:out value="${p.getImagen_producto()}" /> " alt="foto" height="60" width="60"> 
                        </td>
                    
                    <td><c:out value="${p.getCodigo()}" /> </td>
                    <td><c:out value="${p.getNombre_producto()}" /> </td>
                    <td><c:out value="${p.getStock()}" /> </td>
                    <td><c:out value="${p.getRubro()}" /> </td>
                    
                    <td>
                        <form action="ConsultarProducto" method="post">
                            <input type="hidden" name="idproducto" value="${p.getId_producto()}" />
                            <input class="btn btn-primary" type="submit" value="Editar" />
                        </form>
                    </td>
                    <td>
                        <form action="EliminarProducto" method="post" >
                            <input type="hidden" name="idproducto" value="${p.getId_producto()}" />
                            <input class="btn btn-primary" type="submit" value="Eliminar" onclick="pregunta()"/>
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
