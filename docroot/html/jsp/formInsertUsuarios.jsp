<br>
<div align="center">
<form role="form" action="${pageContext.request.contextPath}/log" name="alta" method="post" class="form-horizontal">
          
         <hr>
        	<span id="titulos">Dar de alta usuarios</span>
        <hr>
            <table>
            	<tr>
                  <td>
                  <label for="nombreUsuario" >Nombre de Usuario: &nbsp;</label>
                  </td>
                  	<td>
                  <input placeholder="Nombre de Usuario"  type="text" maxlength="20" name="nombreUsuario" required/><p>
              		</td>
              	</tr>
              	<tr>
              		<td>
                  <label for="nombre" >Nombre:&nbsp;</label>
                  	</td>
                  	<td>
                  <input placeholder="Nombre"  type="text" maxlength="20" name="nombre" required/><p>
                  	</td>
                  </tr>
                <tr>
                  	<td>
                  <label for="apellidos" >Apellidos:&nbsp;</label>
                  	</td>
                  	<td>
                  	<input placeholder="Apellidos"  type="text" maxlength="20" name="apellidos" required/><p>
                  	</td>
                 <tr>
                 	<td>
                  <label for="correo" >Correo electrónico:&nbsp;</label>
                  	</td>
                  	<td>
                  <input placeholder="Email"  type="text" maxlength="20" name="correo" required/><p>
                  	</td>
                  </tr>
                  <tr>
                  	<td>
                  <label for="clave">Contrase&ntilde;a&nbsp;</label>
                  	</td>
                  	<td>
                  		<input type="password" maxlength="20" name="clave" required/><p>
                  	</td>
                  </tr>
                  <tr>
                  	<td>
                  		 <label for="clave">Tipo de usuario</label>
                  	</td>
                  	<td>
                  		<select  name="tipoUsuario">
                		<option value="" disabled selected>Elije una opción </option>
                			<option value="Administrador"> Administrador</option>
                			<option value="Alumno"> Alumno</option>
                			<option value="Profesor"> Profesor</option>
                
                		</select>
                  	</td>
                  </tr>
                <tr>
                	<td>
                		<br>
                 		 <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
                	</td>
                </tr>
				<br>
                 
          	</table>
          	 </form> 
       
</div>
<br>