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
 
      
      		<%
		  	String rol = (String)session.getAttribute("tipoUsuario");
			if(rol.equals("Alumno")){
		%>
		<h2><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Cursos</h2>
		
	    <div id="home" class="tab-pane fade in active">
	      <div align="center">
	        <h3>Hola <%=session.getAttribute("login")%></h3>
	        <h3>Usted tiene el rol de <%=session.getAttribute("tipoUsuario")%> </h3>
	        	<a href="usuarios.jsp?comprobado=nulo">Gestión de Usuarios</a> <br>
				<a href="logout.jsp">Cerrar Sesión</a><br>
	      </div>
	    </div>		
				<%@ include file='formBusquedaMiUsuario.jsp' %> 
				
		<%}else if(rol.equals("Profesor")){ %>
	<h2><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Usuarios</h2>
      <div id="home" class="tab-pane fade in active">
      	<div align="center">
       		<h3>Hola <%=session.getAttribute("login")%></h3>
        	<h3>Usted tiene el rol de <%=session.getAttribute("tipoUsuario")%> </h3>
        	<a href="cursos.jsp?comprobado=nulo">Gestión de Cursos</a> <br>
        	<a href="logout.jsp">Cerrar Sesión</a><br>
     	 </div>
      </div>
					
					<%@ include file='formBusquedaUsuarios.jsp' %>
					
		<%}else if(rol.equals("Administrador")){%>
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
					
				<%@ include file='formInsertUsuarios.jsp' %>
				<%@ include file='formDeleteUsuarios.jsp' %>
				<%@ include file='formUpdateUsuarios.jsp' %>
				<%@ include file='formBusquedaUsuarios.jsp' %> 
		<% }%>
		
		 <footer>
			<%@include file="/html/jsp/footer.jsp" %>
		</footer>

</body>
</html>