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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Registro
 */
@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registro() {
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
		// ALTA DE USUARIOS usuarios.jsp
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
				    String nombre = request.getParameter("nombre");
				    String apellidos = request.getParameter("apellidos");
				    String correo = request.getParameter("correo");
				    String clave = request.getParameter("clave");
				    String tipoUsuario = request.getParameter("tipoUsuario");
				    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos", "root", "123456");
				   	Statement st = con.createStatement();
				   	
					int i =  st.executeUpdate("INSERT IGNORE INTO usuarios (nombre_usuario, nombre, apellidos, correo_electronico, clave, tipo_usuario) VALUES ('"+ nombreUsuario +"','"+ nombre +"', '"+apellidos+"', '"+correo+"', '"+clave+"', '"+ tipoUsuario +"' ) ;");   
					
					if (i > 0) {	
		    			/* this.getServletContext().getRequestDispatcher("/html/jsp/usuarios.jsp").forward(request, response); */
						
	    				HttpSession session = request.getSession();
	    				String login = request.getParameter("nombreUsuario");
	    				session.setAttribute("login", login);
	    				session.setAttribute("tipoUsuario", tipoUsuario);
	    				// this.getServletContext().getRequestDispatcher("/html/jsp/exito.jsp?comprobado=true").forward(request, response);
	    				
	    				System.out.println("El usuario logeado tiene el rol de :" +tipoUsuario);
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