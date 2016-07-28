<%@ page import="java.sql.*" import="java.io.*" import="java.util.*" import="java.net.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<%@include file="header.jsp" %>
		<title>Curso de JavaEE </title>
		<link href="html/css/estilos.css" rel="stylesheet" type="text/css">
		<link href="../css/estilos.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		
	<%
		  	String comprobado = request.getParameter("comprobado");
		if(comprobado.equals("true")){
			%>
				
				<%@ include file='mensajeBien.jsp' %> 
			<%}else if(comprobado.equals("nulo")){ 
					System.out.println("comprobado es nulo");
				%>
					
					
			<% 	}else if (comprobado.equals("false")){%>
					
				<%@ include file='mensajeMal.jsp' %> 
		<% }
		
    	String rol = (String)session.getAttribute("tipoUsuario");
		
		if(rol.equals("Alumno")){
		%>
		<h2 align="center"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Alumnos</h2>
		
	    <div id="home" class="tab-pane fade in active">
	      <div align="center">
	        <h3>Hola <%=session.getAttribute("login")%></h3>
	        <h3>Usted tiene el rol de <%=session.getAttribute("tipoUsuario")%> </h3>
	        	<a href="usuarios.jsp?comprobado=nulo">Gestión de Usuarios</a> <br>
				<a href="logout.jsp" id="logout">Cerrar Sesión</a><br>
	      </div>
	    </div>
	    <br>
				<%@ include file='formBusquedaCursos.jsp' %> 
				
				
		<%}else if(rol.equals("Profesor")){ %>
		<h2 align="center"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Profesores</h2>
		
	    <div id="home" class="tab-pane fade in active">
	      <div align="center">
	        <h3>Hola <%=session.getAttribute("login")%></h3>
	        <h3>Usted tiene el rol de <%=session.getAttribute("tipoUsuario")%> </h3>
		  		<a href="cursos.jsp?comprobado=nulo">Gestión de Cursos</a> <br>
		  		<a href="logout.jsp" id="logout">Cerrar Sesión</a><br>
	      	</div>
	   	 	</div>
	   	 	<br>
					<%@ include file='formBusquedaMiCurso.jsp' %>
					
					
		<%}else if(rol.equals("Administrador")){%>
		<h2 align="center"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control del Administrador</h2>
		
	    <div id="home" class="tab-pane fade in active">
	      <div align="center">
	        <h3>Hola <%=session.getAttribute("login")%></h3>
	        <h3>Usted tiene el rol de <%=session.getAttribute("tipoUsuario")%> </h3>
	        	 	<a href="usuarios.jsp?comprobado=nulo">Gestión de Usuarios</a> <br>
	        		<a href="cursos.jsp?comprobado=nulo">Gestión de Cursos</a> <br>
			  		<a href="logout.jsp" id="logout">Cerrar Sesión</a><br>
	     	 </div>
	    	</div>
	    	<br>
					
				<%@ include file='formInsertCursos.jsp' %>
				<%@ include file='formDeleteCursos.jsp' %>
				<%@ include file='formUpdateCursos.jsp' %>
				<%@ include file='formBusquedaCursos.jsp' %> 
		<% }%>
    
			<%@include file="/html/jsp/footer.jsp" %>

</body>
</html>