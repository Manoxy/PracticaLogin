<%@ page import="java.sql.*" import="java.util.*" import="java.io.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
	 
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