<%@ page import="java.util.Properties" import="javax.servlet.http.HttpSession" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>	
		<%@include file="/html/jsp/header.jsp" %>
	<title>Práctica login Password </title>		
	</head>
	<body>
			<div align="center">
			<form action="${pageContext.request.contextPath}/log" name="formulario" method="get">
				<br>
					<h4 align="center">Acceso usuarios registrados</h4>
						<br/>
							<b>Login </b> <br/><input type="text" name="login" size="25" required/>
						<br/>	
						   	<b>Password </b> <br/><input type="password" name="password" size="25" required/>
						<br/>
						<div class="form-group" >
						<label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
						</div>
			</form>
				<a href="registrarse.jsp">Si no estas registrado haz click aqui</a>
			</div>
				
			
			<h:mensajitos validado="hola"></h:mensajitos>
			<br>
			<%@include file="/html/jsp/footer.jsp" %>
	</body>
</html>