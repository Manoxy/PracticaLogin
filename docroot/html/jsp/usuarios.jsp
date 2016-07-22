<%@ page import="java.sql.*" import="java.util.*" import="java.io.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<%@include file="/html/jsp/header.jsp" %>
		<title>Curso JavaEE</title>
	</head>
	<body>
			<%
		  	String comprobado = request.getParameter("comprobado");
		if(comprobado.equals("true")){
			%>
				
				<%@ include file='mensajeBien.jsp' %> 
			<%}else if(comprobado.equals("nulo")){ %>
					<h3> Comprobado es nulo</h3>
			<% 	}else{%>
					
				<%@ include file='mensajeMal.jsp' %> 
		<% }%>
 		 <h2><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Usuarios</h2>
      <div id="home" class="tab-pane fade in active">
      	<div align="center">
       		<h3>Hola <%=session.getAttribute("login")%></h3>
        	<h3>Usted tiene el rol de <%=session.getAttribute("tipoUsuario")%> </h3>
       		<a href="usuarios.jsp?comprobado=nulo">Gestión de Usuarios</a> <br>
        	<a href="cursos.jsp?comprobado=nulo">Gestión de Cursos</a> <br>
        	<a href="logout.jsp">Cerrar Sesión</a><br>
     	 </div>
      </div>

    <!-- Panel de Usuarios -->


      <form role="form" action="${pageContext.request.contextPath}/log" name="alta" method="post" class="form-horizontal">
          <fieldset>
            <legend>Alta de Usuarios</legend>
            
                  <label for="nombreUsuario" >Nombre de Usuario: &nbsp;</label><input placeholder="Nombre de Usuario"  type="text" maxlength="20" name="nombreUsuario" required/><p>
              
                  <label for="nombre" >Nombre:&nbsp;</label><input placeholder="Nombre"  type="text" maxlength="20" name="nombre" required/><p>
                  
                  <label for="apellidos" >Apellidos:&nbsp;</label><input placeholder="Apellidos"  type="text" maxlength="20" name="apellidos" required/><p>
                  
                  <label for="correo" >Correo electrónico:&nbsp;</label><input placeholder="Email"  type="text" maxlength="20" name="correo" required/><p>
                  
                  <label for="clave">Contrase&ntilde;a&nbsp;</label><input type="text" maxlength="20" name="clave" required/><p>
                  
                  <select id="tipoUsuario" name="tipoUsuario">
                  	<option value="selecciona..." disabled selected>Elije una opción </option>
                	<option value="Administrador"> Administrador</option>
                	<option value="Alumno"> Alumno</option>
                	<option value="Profesor"> Profesor</option>
                </select>
                
                  <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
              
          </fieldset>
        </form>


     <form action="${pageContext.request.contextPath}/Delete" name="baja" method="post" style="padding-top:30px;">
          <fieldset>
            <legend>Baja de usuarios</legend>
            
              <label for="nombreUsuario">Nombre Usuario &nbsp;</label><input type="text" maxlength="20" name="nombreUsuario" required/><p>
              
              <label for="idUsuario">ID de usuario&nbsp;</label><input  type="number" min="1" name="idUsuario" required/><p>
           
              <label for="enviar"><input type="submit" value="Enviar" name="enviar" /></label>
              
          </fieldset>
        </form>

  
      
      <form action="${pageContext.request.contextPath}/Update" name="modificacion" method="post" style="padding-top:30px;">
          <fieldset>
            <legend>Editar perfil de usuario</legend>
            
            	<label for="idUsuario">ID de Usuario &nbsp;</label><input type="number" min="1" name="idUsuario" required /><p>
        
              	<label for="nombreUsuario">Nombre Usuario &nbsp;</label><input type="text" maxlength="20" name="nombreUsuario" required/><p>
              
             	<label for="nombre">Nombre&nbsp;</label><input type="text" maxlength="20" name="nombre" required/><p>
              
              	<label for="apellidos">Apellidos&nbsp;</label><input type="text" maxlength="20" name="apellidos" required/><p>
              
              	<label for="correo">Correo electrónico&nbsp;</label><input type="text" maxlength="20" name="correo" required/><p>
             
              	<label for="clave">Contrase&ntilde;a&nbsp;</label><input type="text" maxlength="20" name="clave" required/><p>
              
              	<select id="tipoUsuario" name="tipoUsuario" required>
              		<option value="selecciona..." disabled selected>Elije una opción </option>
                	<option value="Administrador" > Administrador</option>
                	<option value="Alumno"> Alumno</option>
                	<option value="Profesor"> Profesor</option>
                </select>
              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>


 
      <form id="busqueda" method="post" style="padding-top:30px;">
            <fieldset>
              <legend>Busqueda de usuarios</legend>
              	<label for="login">ID de Usuario &nbsp;</label><input type="number" min="1" name="idUsuario" id="idUsuario" /><p>
              
                <label for="login">Nombre Usuario &nbsp;</label><input type="text" maxlength="20" name="nombreUsuario" id="nombreUsuario" /><p>
             
                <label for="nombre">Nombre&nbsp;</label><input type="text" maxlength="20" name="nombre" id="nombre" /><p>
                
                <label for="apellidos">Apellidos&nbsp;</label><input type="text" maxlength="20" name="apellidos" id="apellidos" /><p>
                
                <label for="correo">Correo electrónico&nbsp;</label><input type="text" maxlength="20" name="correo" id="correo" /><p>
                
               <label for="clave">Contrase&ntilde;a&nbsp;</label><input type="text" maxlength="20" name="clave" id="clave" /><p>
                <!-- 
                <select  name="tipoUsuario">
                	<option value="" selected>Elije una opción </option>
                	<option value="Administrador"> Administrador</option>
                	<option value="Alumno"> Alumno</option>
                	<option value="Profesor"> Profesor</option>
                
                </select>
                -->
                <label for="tipoUsuario">Tipo de Usuario&nbsp;</label><input type="text" maxlength="20" name="tipoUsuario" id="tipoUsuario"/><p>
                
 
                <label for="enviar"><button type="button" class="btn btn-default" id="botonBuscar">Enviar</button></label>
               
            </fieldset>
          </form>
      
        	<br/>
        	<br/>
        <div align="center">
    			<table class="table" border="2px">
    		<thead>  
    		<tr>
    		
            <th>&nbsp;ID de Usuario&nbsp;</th>
            <th>&nbsp;Nombre de Usuario&nbsp;</th>
            <th>&nbsp;Nombre&nbsp;</th>
            <th>&nbsp;Apellidos&nbsp;</th>
            <th>&nbsp;Correo electrónico&nbsp;</th>
            <th>&nbsp;Contrase&ntilde;a&nbsp;</th>
            <th>&nbsp;Tipo de Usuario&nbsp;</th>
       		
       		</tr>
       		</thead>
       	<tbody id="datosUser"></tbody>	
			</table>
        </div>
	
		<script>
				$("#botonBuscar")
				.on("click",
					function(){
							var idUsuario = $("#idUsuario").val();
							var nombreUsuario = $("#nombreUsuario").val();
							var nombre = $("#nombre").val();
							var apellidos = $("#apellidos").val();
							var correo = $("#correo").val();
							var clave = $("#clave").val();
							var tipoUsuario = $("#tipoUsuario").val();
							console.log("La búsqueda de usuarios tiene un rol de: "	+ tipoUsuario);
							var paramPost = { 	idUsuario: idUsuario,
										nombreUsuario: nombreUsuario,
										nombre: nombre,
										apellidos: apellidos,
										correo: correo,
										clave: clave,
										tipoUsuario: tipoUsuario
									};			
					
					$.post("${pageContext.request.contextPath}/html/jsp/buscadorUsuarios.jsp", 
							paramPost,
							function(data){
								$("#datosUser").html(data);
							});
					});
					
		</script>
		
        <footer>
			<%@include file="/html/jsp/footer.jsp" %>
		</footer>
</body>
</html>