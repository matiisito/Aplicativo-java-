<%-- 
    Document   : registroUsuario
    Created on : 21-10-2017, 3:35:33
    Author     : Sergio
--%>
<%@page import="java.util.concurrent.ExecutionException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layouts/headerConsumidor.jsp"/>

<script>
    
  function checkRut(rut) {
    // Despejar Puntos
    var valor = rut.value.replace('.','');
    // Despejar Guión
    valor = valor.replace('-','');
    
    // Aislar Cuerpo y Dígito Verificador
    cuerpo = valor.slice(0,-1);
    dv = valor.slice(-1).toUpperCase();
    
    // Formatear RUN
    rut.value = cuerpo + '-'+ dv
    
    // Si no cumple con el mínimo ej. (n.nnn.nnn)
    if(cuerpo.length < 7) { rut.setCustomValidity("RUT Incompleto"); return false;}
    
    // Calcular Dígito Verificador
    suma = 0;
    multiplo = 2;
    
    // Para cada dígito del Cuerpo
    for(i=1;i<=cuerpo.length;i++) {
    
        // Obtener su Producto con el Múltiplo Correspondiente
        index = multiplo * valor.charAt(cuerpo.length - i);
        
        // Sumar al Contador General
        suma = suma + index;
        
        // Consolidar Múltiplo dentro del rango [2,7]
        if(multiplo < 7) { multiplo = multiplo + 1; } else { multiplo = 2; }
  
    }
    
    // Calcular Dígito Verificador en base al Módulo 11
    dvEsperado = 11 - (suma % 11);
    
    // Casos Especiales (0 y K)
    dv = (dv == 'K')?10:dv;
    dv = (dv == 0)?11:dv;
    
    // Validar que el Cuerpo coincide con su Dígito Verificador
    if(dvEsperado != dv) { rut.setCustomValidity("RUT Inválido"); return false; }
    
    // Si todo sale bien, eliminar errores (decretar que es válido)
    rut.setCustomValidity('');
}



function validarEmail( email ) {
    expr = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    if ( !expr.test(email) ){
       email.setCustomValidity("email incorrecto"); return false;}
email.setCustomValidity('');   
}

</script>
        <div class="container">
            <div class="row">
                <div class="col-md-7"></div>
                    <div class="col-md-5">
                            <form action="registrar.do" method="post" class="form-horizontal">
                                    <fieldset>
                                            <legend>Registro de Usuario</legend>
                                            <div class="form-group">
                                                    <label class="col-md-4 control-label" for="nombre-usuario">Nombre Usuario</label>
                                                    <div class="col-md-8">
                                                        <input type="text" name="txtUsername" id="txtUsername" class="form-control input-md" required  maxlength="17"/>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-4 control-label" for="contrasena">Contraseña</label>
                                                    <div class="col-md-8">
                                                            <input type="password" name="txtContrasena" id="txtContrasena" class="form-control input-md" required  maxlength="20"/>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-4 control-label" for="rut">RUT</label>
                                                    <div class="col-md-8">
                                                            <input type="text" name="txtRut" id="txtRut" class="form-control input-md" required maxlength="10" oninput="checkRut(this)"/>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-4 control-label" for="nombre">Nombre</label>
                                                    <div class="col-md-8">
                                                            <input type="text" name="txtNombre" id="txtNombre" class="form-control input-md" required maxlength="20"/>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-4 control-label" for="apellido">Apellido</label>
                                                    <div class="col-md-8">
                                                            <input type="text" name="txtApellido" id="txtApellido" class="form-control input-md" required maxlength="20"/>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-4 control-label" for="telefono">Teléfono</label>
                                                    <div class="col-md-8">
                                                            <input type="text" name="txtTelefono" id="txtTelefono" class="form-control input-md" required maxlength="10"/>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-4 control-label" for="correo">Correo</label>
                                                    <div class="col-md-8">
                                                        <input type="email" name="txtCorreo" id="txtCorreo" class="form-control input-md" required maxlength="30" />
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-4 control-label" for="Registrar"></label>
                                                    <div class="col-md-8" id="saveupdate">
                                                      <button id="btnRegistrar" name="btnRegistrar" class="btn btn-success">Registrar</button>
                                                    <a href="LoginConsumidor.jsp" id="btnvolver" name="btnvolver" class="btn btn-success">Volver</a>
                                                    
                                                    </div>
                                            </div>
                                    </fieldset>
                            </form>
                    </div>
            </div>
        </div>
                                                      
<jsp:include page="layouts/footerConsumidor.jsp"/>