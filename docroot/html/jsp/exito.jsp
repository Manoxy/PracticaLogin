<%@ page import="javax.servlet.http.HttpSession" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
			
		<% }else if(comprobado.equals("nulo")){
			%>	
			<%@ include file='mensajeNulo.jsp' %> 
		
		<%}else{%>
					
			<%@ include file='mensajeMal.jsp' %> 
		<% } %>
		<%
		  	String rol = (String)session.getAttribute("tipoUsuario");
			if(rol.equals("Alumno")){
		%>
		<h2 align="center"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Alumnos</h2>
		
	    <div id="home" class="tab-pane fade in active">
	      <div align="center">
	      		<h3>Hola <%=session.getAttribute("login")%></h3>
	      		
	        	<a href="usuarios.jsp?comprobado=nulo">Gestión de Usuarios</a> <br>
				<a href="logout.jsp">Cerrar Sesión</a><br>
	      </div>
	    </div>		
				
				
		<%}else if(rol.equals("Profesor")){ %>
	<h2 align="center"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Profesores</h2>
      <div id="home" class="tab-pane fade in active">
      	<div align="center">
       		<h3>Hola <%=session.getAttribute("login")%></h3>
        	
        	<a href="cursos.jsp?comprobado=nulo">Gestión de Cursos</a> <br>
        	<a href="logout.jsp">Cerrar Sesión</a><br>
     	 </div>
      </div>
					
		<%}else if(rol.equals("Administrador")){%>
	<h2 align="center"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Administradores</h2>
      <div id="home" class="tab-pane fade in active">
      	<div align="center">
       		<h3>Hola <%=session.getAttribute("login")%></h3>
        	
       		<a href="usuarios.jsp?comprobado=nulo">Gestión de Usuarios</a> <br>
        	<a href="cursos.jsp?comprobado=nulo">Gestión de Cursos</a> <br>
        	<a href="logout.jsp">Cerrar Sesión</a><br>
     	 </div>
      </div>
      
		<% }%>
		<br>
		<br>
		<%@include file="footer.jsp" %>
	</body>
</html>