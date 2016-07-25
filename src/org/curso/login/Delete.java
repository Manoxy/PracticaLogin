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
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
  
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// DELETE
			// 
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
						
						
						String nombreUsuario = request.getParameter("nombreUsuario");    
					    String idUsuario = request.getParameter("idUsuario");
					    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
					   	Statement st = con.createStatement();
						int i =  st.executeUpdate("DELETE FROM usuarios WHERE nombre_usuario='"+nombreUsuario+"' AND id='"+idUsuario+"';");   
						
						if (i > 0) {	
			    			
							//	this.getServletContext().getRequestDispatcher("/html/jsp/usuarios.jsp").forward(request, response);
			    			
			    			response.sendRedirect("html/jsp/usuarios.jsp?comprobado=true");
			    			
					    } else {
					    	
					    	// this.getServletContext().getRequestDispatcher("/html/jsp/fallo.jsp").forward(request, response);
					    	
					    	response.sendRedirect("html/jsp/fallo.jsp?comprobado=false");
					    	
					    }
						}catch(SQLException e){
							
							e.printStackTrace();
						}
				}
			
		

	}


