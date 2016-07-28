<%@ page import="java.sql.*" import="java.util.*" import="java.io.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<% 
			String rol = (String)session.getAttribute("login");
	
			String idUsuario =  request.getParameter("idUsuario");
			String nombreUsuario = request.getParameter("nombreUsuario");
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String correo = request.getParameter("correo");    
		    String clave = request.getParameter("clave");
		    String tipoUsuario = request.getParameter("tipoUsuario");
		    
		    String tabla= "<table class=\"table\" id=\"tabla\" border=\"3px\">";
    		tabla+= "<thead> <tr>";
    		tabla+= "<th>&nbsp;ID de Usuario&nbsp;</th>";
            tabla+= "<th>&nbsp;Nombre de Usuario&nbsp;</th>";
            tabla+="<th>&nbsp;Nombre&nbsp;</th>";
            tabla+="<th>&nbsp;Apellidos&nbsp;</th>";
            tabla+="<th>&nbsp;Correo electrónico&nbsp;</th>";
            tabla+="<th>&nbsp;Contrase&ntilde;a&nbsp;</th>";
            tabla+="<th>&nbsp;Tipo de Usuario&nbsp;</th>";
       		tabla+="</tr> </thead>";
       		
		    
        try {
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
			String consulta =("SELECT * FROM usuarios WHERE nombre_usuario = '"+rol+"';");   
			ResultSet rs = null;
	        PreparedStatement pst = null;
	        pst = con.prepareStatement(consulta);
	        rs = pst.executeQuery();
	        out.println(tabla);
            while(rs.next()) {
            	
                out.println("<TR>");
                out.println("<TD>"+rs.getString("id")+"</TD>");
                out.println("<TD>"+rs.getString("nombre_usuario")+"</TD>");
                out.println("<TD>"+rs.getString("nombre")+"</TD>");
                out.println("<TD>"+rs.getString("apellidos")+"</TD>");
                out.println("<TD>"+rs.getString("correo_electronico")+"</TD>");
                out.println("<TD>"+rs.getString("clave")+"</TD>");
                out.println("<TD>"+rs.getString("tipo_usuario")+"</TD>");
             
                out.println("</TR>"); 
                }

				out.println("</table>");
            } 
            catch(SQLException e) {
            	
            };
	%>