<br>
<div align="center">
 <form action="${pageContext.request.contextPath}/Update" name="modificacion" method="post" style="padding-top:30px;">
          <fieldset>
            <legend>Editar perfil de usuario</legend>
            
            	<label for="idUsuario">ID de Usuario &nbsp;</label><input type="number" min="1" name="idUsuario" required /><p>
        
              	<label for="nombreUsuario">Nombre Usuario &nbsp;</label><input type="text" maxlength="20" name="nombreUsuario" required/><p>
              
             	<label for="nombre">Nombre&nbsp;</label><input type="text" maxlength="20" name="nombre" required/><p>
              
              	<label for="apellidos">Apellidos&nbsp;</label><input type="text" maxlength="20" name="apellidos" required/><p>
              
              	<label for="correo">Correo electrónico&nbsp;</label><input type="text" maxlength="20" name="correo" required/><p>
             
              	<label for="clave">Contrase&ntilde;a&nbsp;</label><input type="text" maxlength="20" name="clave" required/><p>
              
              	<label for="clave">Tipo de usuario</label>
                <select  name="tipoUsuario">
                	<option value="" disabled selected>Elije una opción </option>
                	<option value="Administrador"> Administrador</option>
                	<option value="Alumno"> Alumno</option>
                	<option value="Profesor"> Profesor</option>
                
                </select>
				<br>
              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>
</div>
<br>