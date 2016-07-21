package org.curso.etiquetas;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class mensajitos extends SimpleTagSupport {
	
	private String validado;
	
	public void setValidado( final String validado) {
		this.validado = validado;
	}
	@Override
	public void doTag() throws JspException, IOException {
		
		final JspWriter out = getJspContext().getOut();
		
		out.println("El atributo validado es: "+validado);
	}
}
