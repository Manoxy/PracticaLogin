<%@ page import="javax.servlet.http.HttpSession" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<%@include file="header.jsp" %>
		<title>Curso de JavaEE </title>
	</head>
	<body>
		<%
			// String nombreUsuario = request.Parameter("login");
		%>
		<div align="center">
		<h3>Bienvenido <%=session.getAttribute("login")%></h3>
		<a href="html\jsp\usuarios.jsp">Gestión de Usuarios</a> <br>
		<a href="html\jsp\cursos.jsp">Gestión de Cursos</a> <br>
		<a href="html\jsp\logout.jsp">Cerrar Sesión</a><br>
		</div>
		
		<br>
		<br>
		<%@include file="footer.jsp" %>
	</body>
</html>