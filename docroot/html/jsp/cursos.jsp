<%@ page import="java.sql.*" import="java.io.*" import="java.util.*" import="java.net.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<%@include file="header.jsp" %>
		<title>Curso de JavaEE </title>
	</head>
	<body>
		<h2><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>&nbsp;&nbsp;Panel de control de Cursos</h2>
    <div id="home" class="tab-pane fade in active">
      <div align="center">
        <h3>Hola <%=session.getAttribute("login")%></h3>
        <h3>Usted tiene el rol de <%=session.getAttribute("tipoUsuario")%> </h3>
        <a href="usuarios.jsp">Gestión de Usuarios</a> <br>
        <a href="cursos.jsp">Gestión de Cursos</a> <br>
        <a href="logout.jsp">Cerrar Sesión</a><br>
      </div>
    </div>
	<div id="formularios" align="left">
      <form role="form" action="${pageContext.request.contextPath}/InputCursos" name="alta" method="post" class="form-horizontal">
          <fieldset>
            <legend>Alta de Cursos</legend>
            
              <label for="nombre">Nombre&nbsp;</label><input type="text" size="30" maxlength="30" name="nombre" required/><p>
             
              <b>Descripción</b>&nbsp;<br/><textarea name="descripcion" cols="50" rows="4"> </textarea><p>
             
              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date" size="10" name="fechaInicio" required/><p>
              
              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" size="10" name="fechaFin" required/><p>
              
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
            	  <label for="idCurso">ID del Curso &nbsp;</label><input type="number" maxlength="10" name="idCurso" /><p>
          	
	              <label for="nombre">Nombre&nbsp;</label><input type="text" size="30" name="nombre" /><p>
	              
	            <b>Descripción&nbsp;</b><br/><textarea name="descripcion" cols="50" rows="4"> </textarea><p>
	              
	              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date" size="10" name="fechaInicio" /><p>
	              
	              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" size="10" name="fechaFin" /><p>
	             
	              <label for="numeroHoras">Número de horas&nbsp;</label><input type="number" name="numeroHoras" min="1" required /><p>
	              
	             <b>Objetivos&nbsp;</b><br/><textarea name="objetivos" cols="50" rows="4"> </textarea><p>
	              
	              <b>Requisitos&nbsp; </b><br/><textarea name="requisitos" cols="50" rows="4"> </textarea><p>
	              
	              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>

      <form action="#" name="busqueda" method="post">
            <fieldset>
              <legend>Busqueda de Cursos</legend>
              	  <label for="idCurso">ID del Curso &nbsp;</label><input type="number" maxlength="10" name="idCurso" /><p>
              
	              <label for="nombre">Nombre&nbsp;</label><input  type="text" size="30" maxlength="30" name="nombre" /><p>
	              
	              <b>Descripción&nbsp;</b><br/><textarea name="descripcion" cols="50" rows="4"> </textarea><p>
	              
	              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date" size="10" name="fechaInicio" /><p>
	             
	              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" size="10" name="fechaFin"/><p>
	             
	              <label for="numeroHoras">Número de horas&nbsp;</label><input  type="text" min="1" name="numeroHoras"/><p>
	             
	              <b>Objetivos&nbsp;</b><br/><textarea name="objetivos" cols="50" rows="4"> </textarea><p>
	             
	              <b>Requisitos&nbsp;</b><br/><textarea name="requisitos" cols="50" rows="4"> </textarea><p>
	             
	              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
              
            </fieldset>
          </form>
          
         </div>
          
      	<table class="table" border="2px"> 
    <tr>
   		<th>&nbsp;ID del curso&nbsp;</th><th>&nbsp;Nombre&nbsp;</th><th>&nbsp;Descripción&nbsp;</th><th>&nbsp;Fecha de inicio&nbsp;</th><th>&nbsp;Fecha de Fin&nbsp;</th><th>&nbsp;Numero de Horas&nbsp;</th><th>&nbsp;Objetivos&nbsp;</th><th>&nbsp;Requisitos&nbsp;</th>
    </tr>		
			<% 
			String idCurso = request.getParameter("idCurso");    
			String nombre = request.getParameter("nombre");    
		    String descripcion = request.getParameter("descripcion");
		    String fechaInicio = request.getParameter("fechaInicio");
		    String fechaFin = request.getParameter("fechaFin");
		    String numeroHoras = request.getParameter("numeroHoras");
		    String objetivos = request.getParameter("objetivos");
		    String requisitos = request.getParameter("requisitos");
		    
        try {
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
			String consulta =("SELECT * FROM cursos WHERE id LIKE '%"+idCurso+"%' AND nombre LIKE '%"+nombre+"%' AND descripcion LIKE '%"+descripcion+"%' AND fecha_inicio LIKE '%"+fechaInicio+"%' AND fecha_fin LIKE '%"+fechaFin+"%' AND numero_horas LIKE '%"+numeroHoras+"%' AND objetivos LIKE '%"+objetivos+"%' AND requisitos LIKE '%"+requisitos+"%';");   
			ResultSet rs = null;
	        PreparedStatement pst = null;
	        pst = con.prepareStatement(consulta);
	        rs = pst.executeQuery();
            while(rs.next()) {
            	
                out.println("<TR>");
                out.println("<TD>"+rs.getString("id")+"</TD>");
                out.println("<TD>"+rs.getString("nombre")+"</TD>");
                out.println("<TD>"+rs.getString("descripcion")+"</TD>");
                out.println("<TD>"+rs.getString("fecha_inicio")+"</TD>");
                out.println("<TD>"+rs.getString("fecha_fin")+"</TD>");
                out.println("<TD>"+rs.getString("numero_horas")+"</TD>");
                out.println("<TD>"+rs.getString("objetivos")+"</TD>");
                out.println("<TD>"+rs.getString("requisitos")+"</TD>");
                
                out.println("</TR>"); 
                }
                out.println("</table>");
            	
            } 
            catch(SQLException e) {
            	
            };
            %>
        
			<br/>
			<br/>
		<footer>
			<%@include file="footer.jsp" %>
		</footer>	
			
</body>
</html>