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
 * Servlet implementation class DeleteCursos
 */
@WebServlet("/DeleteCursos")
public class DeleteCursos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCursos() {
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
		// DELETE
					// INSERT UPDATE
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
								
								
								String id = request.getParameter("id");    
							    String nombre = request.getParameter("nombre");
							    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
							   	Statement st = con.createStatement();
								int i =  st.executeUpdate("DELETE FROM cursos WHERE nombre='"+ nombre +"' AND id='"+ id +"';");   
								
								if (i > 0) {	
					    			this.getServletContext().getRequestDispatcher("/html/jsp/cursos.jsp").forward(request, response);
					    			
							    } else {
							    	
							    	this.getServletContext().getRequestDispatcher("/html/jsp/fallo.jsp").forward(request, response);
							    	
							    }
								}catch(SQLException e){
									
									e.printStackTrace();
								}
						}
					

}
