<%@ page import="java.util.Properties" import="javax.servlet.http.HttpSession" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>	
		<%@include file="/html/jsp/header.jsp" %>
	<title>Práctica login Password </title>	
	<link href="html/css/estilos.css" rel="stylesheet" type="text/css">
	<link href="../css/estilos.css" rel="stylesheet" type="text/css">
	</head>
	<body>
			<hr>
			<h4 align="center">Acceso usuarios registrados</h4>
			<hr>
			<div id="formLogin" align="center">
			<form action="${pageContext.request.contextPath}/log" name="formulario" method="get">
				<br>
					
						<br/>
							<b>Login </b> <br/><input type="text" name="login" size="25" required/>
						<br/>	
						   	<b>Password </b> <br/><input type="password" name="password" size="25" required/>
						<br/>
						<div class="form-group" >
						<label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
						</div>
			</form>
			<br>
			<br>
				<a id="mostrarRegistro" href="#">Si no estas registrado haz click aqui </a>
			<br>
			<br>
		<div id="formRegistro">
					
	          <hr>
	          
	            <h4>Registrarse</h4>
	          <hr>
	          <br>
	            <form role="form" action="${pageContext.request.contextPath}/Registro" name="alta" method="post" class="form-horizontal">
	            <fieldset>
	                  <label for="nombreUsuario" >Nombre de Usuario: &nbsp;</label><input placeholder="Nombre de Usuario"  type="text" maxlength="20" name="nombreUsuario" required/><p>
	              
	                  <label for="nombre" >Nombre:&nbsp;</label><input placeholder="Nombre"  type="text" maxlength="20" name="nombre" required/><p>
	                  
	                  <label for="apellidos" >Apellidos:&nbsp;</label><input placeholder="Apellidos"  type="text" maxlength="20" name="apellidos" required/><p>
	                  
	                  <label for="correo" >Correo electrónico:&nbsp;</label><input placeholder="Email"  type="text" maxlength="20" name="correo" required/><p>
	                  
	                  <label for="clave">Contrase&ntilde;a&nbsp;</label><input type="password" maxlength="20" name="clave" required/><p>
	                  
	                  <select id="tipoUsuario" name="tipoUsuario">
	                  	<option value="selecciona..." disabled selected>Elije una opción </option>
	                	<option value="Administrador" disabled> Administrador</option>
	                	<option value="Alumno"> Alumno</option>
	                	<option value="Profesor"> Profesor</option>
	                </select>
	                
	                  <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
	              
	          </fieldset>
	          </form>
	        
		</div>
			
			
			</div>
			<br>
			<br>
			<%@include file="/html/jsp/footer.jsp" %>
	</body>
	<script>
	
		$(document).ready(function(){
			$("#formRegistro").hide(0);
			
			$("#mostrarRegistro").click(function(){
				$("#formRegistro").toggle(1000);
				 
			});
			
		});
			
	</script>
</html>