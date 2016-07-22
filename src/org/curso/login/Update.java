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
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
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
		// UPDATE USUARIOS
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
			
			
			String idUsuario = request.getParameter("idUsuario");
			
			
			
			String nombreUsuario = request.getParameter("nombreUsuario"); 

		    String nombre = request.getParameter("nombre");
		    String apellidos = request.getParameter("apellidos");
		    String correo = request.getParameter("correo");
		    String clave = request.getParameter("clave");
		    String tipoUsuario = request.getParameter("tipoUsuario");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
		   	Statement st = con.createStatement();
			int i = st.executeUpdate("UPDATE usuarios SET nombre_usuario='"+ nombreUsuario +"', nombre='"+ nombre +"', apellidos='"+apellidos+"', correo_electronico='"+correo+"', clave='"+clave+"', tipo_usuario='" + tipoUsuario +"' WHERE id ="+ idUsuario +"; ");   
			
			if (i > 0) {	
    		// this.getServletContext().getRequestDispatcher("/html/jsp/usuarios.jsp").forward(request, response);
    			response.sendRedirect("/html/jsp/usuarios.jsp?comprobado=true");
    			
		    } else {
		    	System.err.println("Has modificado mal un usuario");
		    // this.getServletContext().getRequestDispatcher("/html/jsp/fallo.jsp").forward(request, response);
		    	response.sendRedirect("/html/jsp/fallo.jsp?comprobado=false");
		    	
		    }
			}catch(SQLException e){
				
				e.printStackTrace();
			

			/*}finally{
					try {
						rs.close();
					} catch (SQLException e) {
						
						e.printStackTrace();
					}
					try {
						stmt.close();
					} catch (SQLException e) {
					
						e.printStackTrace();
					}
					try {
						conn.close();
					} catch (SQLException e) {
						
						e.printStackTrace();
					}
				
				}
		*/
			}
		doGet(request, response);
	}
	
}
