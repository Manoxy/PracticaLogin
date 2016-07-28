<%@ page import="java.sql.*" import="java.util.*" import="java.io.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<% 
			String nombre = (String)session.getAttribute("login");
			String tabla = "<table class=\"table\" id=\"tabla\" border=\"3px\"> <thead>  <tr>";
		   
		    tabla+= "<th>&nbsp;Usuario del profesor&nbsp;</th>";
		    tabla+="<th>&nbsp;Nombre del profesor&nbsp;</th>";
		    tabla+="<th>&nbsp;Apellidos&nbsp;</th>";
			tabla+="<th>&nbsp;Nombre del curso&nbsp;</th>";
			tabla+="<th>&nbsp;Fecha de inicio&nbsp;</th>";
			tabla+="<th>&nbsp;Fecha de fin&nbsp;</th>";
			tabla+="<th>&nbsp;Numero de horas&nbsp;</th> </tr> </thead>";
		         
		    
        try {
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
			String consulta =("SELECT usuarios.nombre_usuario, usuarios.nombre, usuarios.apellidos, cursos.nombre as curso_nombre, cursos.fecha_inicio, cursos.fecha_fin, cursos.numero_horas FROM usuarios LEFT JOIN usuarios_cursos ON usuarios.id = usuarios_cursos.usuario_id LEFT JOIN cursos ON usuarios_cursos.curso_id = cursos.id WHERE usuarios.nombre_usuario = '"+nombre+"';");   
			ResultSet rs = null;
	        PreparedStatement pst = null;
	        pst = con.prepareStatement(consulta);
	        rs = pst.executeQuery();
	        out.println(tabla);
            while(rs.next()) {
            	
            	out.println("<TR>");
                out.println("<TD>"+rs.getString("nombre_usuario")+"</TD>");
                out.println("<TD>"+rs.getString("nombre")+"</TD>");
                out.println("<TD>"+rs.getString("apellidos")+"</TD>");
                out.println("<TD>"+rs.getString("curso_nombre")+"</TD>");
                out.println("<TD>"+rs.getString("fecha_inicio")+"</TD>");
                out.println("<TD>"+rs.getString("fecha_fin")+"</TD>");
                out.println("<TD>"+rs.getString("numero_horas")+"</TD>");
                
                out.println("</TR>"); 
                }

				out.println("</table>");
            } 
            catch(SQLException e) {
            	
            };
	%>