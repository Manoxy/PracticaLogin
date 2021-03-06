package org.curso.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InputCursos
 */
@WebServlet("/InputCursos")
public class InputCursos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InputCursos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
			try{	
				Class.forName(com.mysql.jdbc.Driver.class.getName()).newInstance();
				}catch(InstantiationException e){
				
					e.printStackTrace();
				}catch (IllegalAccessException e){
				
					e.printStackTrace();
				}catch (ClassNotFoundException e){
					
					e.printStackTrace();
				}
				
			String nombre = request.getParameter("nombre");    
		    String descripcion = request.getParameter("descripcion");
		    String fechaInicio = request.getParameter("fechaInicio");
		    String fechaFin = request.getParameter("fechaFin");
		    String numeroHoras = request.getParameter("numeroHoras");
		    String objetivos = request.getParameter("objetivos");
		    String requisitos = request.getParameter("requisitos");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
		   	Statement st = con.createStatement();
			int i =  st.executeUpdate("INSERT IGNORE INTO cursos (nombre, descripcion, fecha_inicio, fecha_fin, numero_horas, objetivos, requisitos) VALUES ('"+ nombre +"','"+ descripcion +"', '"+ fechaInicio +"', '"+ fechaFin +"', '"+ numeroHoras +"', '"+ objetivos +"', '"+ requisitos +"') ;");   
			
			if (i > 0) {	
    			
			//	this.getServletContext().getRequestDispatcher("/html/jsp/cursos.jsp").forward(request, response);
    			response.sendRedirect("html/jsp/cursos.jsp?comprobado=true");
    			
		    } else {
		    	
		    //	this.getServletContext().getRequestDispatcher("/html/jsp/fallo.jsp").forward(request, response);
		    	response.sendRedirect("html/jsp/fallo.jsp?comprobado=false");
		    	
		    }
			}catch(SQLException e){
				
				e.printStackTrace();
				}
		
	}

}
