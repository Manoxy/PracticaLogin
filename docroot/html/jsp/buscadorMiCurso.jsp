<%@ page import="java.sql.*" import="java.util.*" import="java.io.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<% 
			String nombre = (String)session.getAttribute("login");
	
		    
		    
        try {
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
			String consulta =("SELECT usuarios.nombre_usuario, usuarios.nombre, usuarios.apellidos, cursos.nombre as curso_nombre, cursos.fecha_inicio, cursos.fecha_fin, cursos.numero_horas FROM usuarios LEFT JOIN usuarios_cursos ON usuarios.id = usuarios_cursos.usuario_id LEFT JOIN cursos ON usuarios_cursos.curso_id = cursos.id WHERE usuarios.nombre_usuario = '"+nombre+"';");   
			ResultSet rs = null;
	        PreparedStatement pst = null;
	        pst = con.prepareStatement(consulta);
	        rs = pst.executeQuery();
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


            } 
            catch(SQLException e) {
            	
            };
	%>