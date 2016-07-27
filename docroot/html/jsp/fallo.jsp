<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<%@include file="header.jsp" %>
		<title>Curso de JavaEE </title>
		
	</head>
	<body>
		<%
		  	String comprobado = request.getParameter("comprobado");
		if(comprobado.equals("false")){
			%>
				
				<%@ include file='mensajeMal.jsp' %> 
			<% 	}else{%>
					
				<%@ include file='mensajeBien.jsp' %> 
		<% }%>
		<br>
		<h3 align="center">
			Los datos que has introducido son incorrectos
		</h3>
			<p align="center"><a href="index.jsp">Haz click aquí para volver al inicio</a></p>
			<br>
		<%@include file="footer.jsp" %>
	</body>
</html>