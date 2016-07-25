<%@ page import="java.sql.*" import="java.io.*" import="java.util.*" import="java.net.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<%@include file="header.jsp" %>
		<title>Curso de JavaEE </title>
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
		
		<h2><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Cursos</h2>
		
    <div id="home" class="tab-pane fade in active">
      <div align="center">
        <h3>Hola <%=session.getAttribute("login")%></h3>
        <h3>Usted tiene el rol de <%=session.getAttribute("tipoUsuario")%> </h3>
        <a href="usuarios.jsp?comprobado=nulo">Gestión de Usuarios</a> <br>
        <a href="cursos.jsp?comprobado=nulo">Gestión de Cursos</a> <br>
        <a href="logout.jsp">Cerrar Sesión</a><br>
      </div>
    </div>
    
	<div id="formularios" align="left">
      <form role="form" action="${pageContext.request.contextPath}/InputCursos" name="alta" method="post" class="form-horizontal">
          <fieldset>
            <legend>Alta de Cursos</legend>
            
              <label for="nombre">Nombre&nbsp;</label><input type="text" size="30" maxlength="30" name="nombre" required/><p>
             
              <b>Descripción</b>&nbsp;<br/><textarea name="descripcion" cols="50" rows="4"> </textarea><p>
             
              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date"  name="fechaInicio" required/><p>
              
              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" name="fechaFin" required/><p>
              
              <label for="numeroHoras">Número de horas&nbsp;</label><input type="number" name="numeroHoras" min="1" required/><p>
              
              <b>Objetivos&nbsp; </b><br/><textarea name="objetivos" cols="50" rows="4"> </textarea><p>
              
              <b>Requisitos&nbsp; </b><br/><textarea name="requisitos" cols="50" rows="4"> </textarea><p>
              
              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>
 
 
     <form action="${pageContext.request.contextPath}/DeleteCursos" name="baja" method="post" style="padding-top:30px;">
          <fieldset>
            <legend>Baja de cursos</legend>
           
              <label for="id">Id del curso &nbsp;</label><input type="number" maxlength="20" name="id" required/><p>
              
              <label for="nombre">Nombre del curso&nbsp;</label><input type="text" size="30" maxlength="20" name="nombre" required/><p>
            
              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>
   
 
      
      <form action="${pageContext.request.contextPath}/UpdateCursos" name="modifiacion" method="post" style="padding-top:30px;">
          <fieldset>
            <legend>Editar perfil de un curso</legend>
            	  <label for="idCurso">ID del Curso &nbsp;</label><input type="number" maxlength="10" name="idCurso" required/><p>
          	
	              <label for="nombre">Nombre&nbsp;</label><input type="text" size="30" name="nombre" required/><p>
	              
	            <b>Descripción&nbsp;</b><br/><textarea name="descripcion" cols="50" rows="4" required> </textarea><p>
	              
	              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date" size="10" name="fechaInicio" required/><p>
	              
	              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" size="10" name="fechaFin" required/><p>
	             
	              <label for="numeroHoras">Número de horas&nbsp;</label><input type="number" name="numeroHoras" min="1" required /><p>
	              
	             <b>Objetivos&nbsp;</b><br/><textarea name="objetivos" cols="50" rows="4" required> </textarea><p>
	              
	              <b>Requisitos&nbsp; </b><br/><textarea name="requisitos" cols="50" rows="4" required> </textarea><p>
	              
	              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>

      <form action="#" name="busqueda" method="post">
            <fieldset>
              <legend>Busqueda de Cursos</legend>
              	  <label for="idCurso">ID del Curso &nbsp;</label><input type="number" maxlength="10" name="idCurso" id="idCurso" /><p>
              
	              <label for="nombre">Nombre&nbsp;</label><input  type="text" size="30" maxlength="30" name="nombre" id="nombre" /><p>
	              
	              <b>Descripción&nbsp;</b><br/><textarea name="descripcion" cols="50" rows="4" id="descripcion"> </textarea><p>
	              
	              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date" size="10" name="fechaInicio" id="fechaInicio"/><p>
	             
	              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" size="10" name="fechaFin" id="fechaFin"/><p>
	             
	              <label for="numeroHoras">Número de horas&nbsp;</label><input  type="number" min="1" name="numeroHoras" id="numeroHoras"/><p>
	             
	              <b>Objetivos&nbsp;</b><br/><textarea name="objetivos" cols="50" rows="4" id="objetivos"> </textarea><p>
	             
	              <b>Requisitos&nbsp;</b><br/><textarea name="requisitos" cols="50" rows="4" id="requisitos"> </textarea><p>
	             
	              <label for="enviar"><button class="btn btn-default" type="button" id="botonBuscar" >Enviar</button></label>
              
            </fieldset>
          </form>
          
         </div>
          
      	<div align="center">
    			<table class="table" border="2px">
    		<thead>  
    		<tr>
    		
            <th>&nbsp;ID de Curso&nbsp;</th>
            <th>&nbsp;Nombre&nbsp;</th>
            <th>&nbsp;Descripción&nbsp;</th>
            <th>&nbsp;Fecha de inicio&nbsp;</th>
            <th>&nbsp;Fecha de fin&nbsp;</th>
            <th>&nbsp;Número de horas&nbsp;</th>
            <th>&nbsp;Objetivos&nbsp;</th>
            <th>&nbsp;Requisitos&nbsp;</th>
       		
       		</tr>
       		</thead>
       	<tbody id="datosUser"></tbody>	
			</table>
        </div>
		<script>
				$("#botonBuscar")
				.on("click",
					function(){
							var idCurso = $("#idCurso").val();
							var nombre = $("#nombre").val();
							var descripcion = $("#descripcion").val();
							var fechaInicio = $("#fechaInicio").val();
							var fechaFin = $("#fechaFin").val();
							var numeroHoras = $("#numeroHoras").val();
							var objetivos = $("#objetivos").val();
							var requisitos = $("#requisitos").val();
						
							var paramPost = { 	idCurso: idCurso,
										nombre: nombre,
										descripcion: descripcion,
										fechaInicio: fechaInicio,
										fechaFin: fechaFin,
										numeroHoras: numeroHoras,
										objetivos: objetivos,
										requisitos: requisitos
									};			
					
					$.post("${pageContext.request.contextPath}/html/jsp/buscadorCursos.jsp", 
							paramPost,
							function(data){
								$("#datosUser").html(data);
							});
					});
					
		</script>
			
		<footer>
			<%@include file="footer.jsp" %>
		</footer>	
			
</body>
</html>