<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Curso de JavaEE </title>
		<%@include file="header.jsp" %>
	</head>
	<body>
		<%
			session.setAttribute("login", null);
			session.invalidate();
			response.sendRedirect("index.jsp");
			System.out.println("Sesión cerrada");
		%>
	</body>
</html>