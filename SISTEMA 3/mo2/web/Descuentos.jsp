<%-- 
    Document   : Descuentos
    Created on : 12-nov-2017, 0:45:26
    Author     : gus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.UsuarioDTO"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Descuentos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
   
    </head>
    <body>
      
      <script language="JavaScript"> 
        function pregunta(){ 
            if (confirm('¿Estas seguro que deseas generar el cupón?')){ 
               document.tuformulario.submit() 
            } 
        } 
        </script>
        
               <jsp:include page="layouts/headerCliente.jsp"/>
               <div class="col-md-2"></div>
               <div class="col-md-8">     
                                 
  <div class="table table-striped table-bordered table-hover"  width="400px" style="width: 900px;">
        <h3>Generar Cupón de descuento</h3>
       <p style="color:red;"> <c:out value="${mensaje}" /></p>
  <table id="datos" class="table table-striped table-bordered table-hover" border="" width="400px">
     <thead>
         <tr class="bg-primary">
             <th>PUNTOS</th>
             <th>TOPE</th>
             <th>RUBRO</th>
             <th>DESCUENTO </th>
             <th>OBTENER CUPÓN</th>
         </tr>
     </thead>
     <tbody>
         <c:set var="contador" scope="session" value="${0}"/>
         <c:forEach var="d" items="${LstDescuentos}">
               <tr class="alt">
                    
                    <td><c:out value="${d.getPuntos()}" /> </td>
                    <td><c:out value="${d.getTope()}" /> </td>
                    <td><c:out value="${d.getRubro()}" /> </td>
                    <td><c:out value="${d.getDescuento()}" /><c:out value="${'%'}" /> </td>
                    <td>
                        <form action="GenerarCupon" method="post">
                            <input type="hidden" name="iddescuento" value="${d.getId_descuento()}" />
                            <input class="btn btn-primary" type="submit" value="Generar Cupon" onclick="pregunta()"/>
                        </form>
                    </td>
             </tr>
          </c:forEach>       
    </tbody>
    </table>
        </div>    

             <br> <br>    
        <a class="btn btn-primary" href="ListarOfertasConsumidor">VOLVER </a>    
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
