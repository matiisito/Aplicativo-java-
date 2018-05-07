<%-- 
    Document   : OfertasConsumidor
    Created on : 28-oct-2017, 13:16:02
    Author     : gus
--%>
<%@page import="dto.UsuarioDTO"%>
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
        

        <script language="JavaScript"> 
        function pregunta(){ 
            if (confirm('¿Estas seguro de enviar este formulario?')){ 
               document.tuformulario.submit() 
            } 
        } 
        </script>
        <jsp:include page="layouts/headerCliente.jsp"/>
        <div class="col-md-2"></div>
        <div class="col-md-8">
        
         <c:forEach var="o" items="${LstOfertas}">
             <div class="col-md-4" style="margin-bottom: 15px;" >
                <div class="col-md-12">
                    <img src="img/<c:out value="${o.getImagen()}" /> " alt="foto" height="200" width="200"> 
                        
                
                </div>
                <div class="col-md-12" style="text-align: center;">
                <font size="4" color="black" ><c:out value="${o.getNombre_producto()}" /></font>
                </div>
                <div class="col-md-12">
                    <div class="col-md-1"></div>
                   <div class="col-md-5" style="font-size: 2; color:black;">Antes: $<c:out value="${o.getPrecio()}" /></div>
                   
                   <div class="col-md-5" style="font-size: 2; color:orange; font-weight: bold;">Ahora: $<c:out value="${o.getPrecio_oferta()}" /></div>
                   
                </div>
                <div class="col-md-12">
                    
                        <form action="ConsultarOfertaConsumidor" method="post">
                            <input type="hidden" name="idoferta" value="${o.getId_oferta()}" />
                            <input class="col-md-12 btn btn-primary" type="submit" value="Ver detalle" />
                        </form>
                </div>
              </div>
          </c:forEach>       
           
        </div>
    
    
        
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
        
    </body>
</html>
