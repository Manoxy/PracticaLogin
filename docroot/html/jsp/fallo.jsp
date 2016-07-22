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
		<h3 align="center">
			Los Datos que has introducido son incorrectos
		</h3>
			<p align="center"><a href="html\jsp\index.jsp">Volver al inicio</a></p>
			
		<%@include file="footer.jsp" %>
	</body>
</html>