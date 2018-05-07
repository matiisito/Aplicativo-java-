<%-- 
    Document   : login
    Created on : 21-10-2017, 23:10:11
    Author     : Sergio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="layouts/headerConsumidor.jsp"/>

<div class="container">
      
    <div class="col-md-8"></div>
    
        <div class="card card-container col-md-4">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="img/consumidor.png" width="350px"/>
            <p id="profile-name" class="profile-name-card"></p>
            
            <form class="form" action="LoginConsumidor" method="post">
                <input type="text" id="txtUsuario" name="txtUsuario" class="form-control" placeholder="Nombre Usuario" required autofocus>
                <input type="password" id="txtContrasena" name="txtContrasena" class="form-control" placeholder="contraseñas" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> recuerdame
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Acceder</button>
            </form><!-- /form -->
            <a href="registroUsuario.jsp" class="forgot-password">
                Registrarme en la página
            </a>
        </div><!-- /card-container -->
        <div class="col-md-4"></div>
    </div><!-- /container -->
    <br>
  
<jsp:include page="layouts/footerConsumidor.jsp"/>


