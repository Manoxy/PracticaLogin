<form role="form" action="${pageContext.request.contextPath}/log" name="alta" method="post" class="form-horizontal">
          <fieldset>
            <legend>Alta de Usuarios</legend>
            
                  <label for="nombreUsuario" >Nombre de Usuario: &nbsp;</label><input placeholder="Nombre de Usuario"  type="text" maxlength="20" name="nombreUsuario" required/><p>
              
                  <label for="nombre" >Nombre:&nbsp;</label><input placeholder="Nombre"  type="text" maxlength="20" name="nombre" required/><p>
                  
                  <label for="apellidos" >Apellidos:&nbsp;</label><input placeholder="Apellidos"  type="text" maxlength="20" name="apellidos" required/><p>
                  
                  <label for="correo" >Correo electrónico:&nbsp;</label><input placeholder="Email"  type="text" maxlength="20" name="correo" required/><p>
                  
                  <label for="clave">Contrase&ntilde;a&nbsp;</label><input type="text" maxlength="20" name="clave" required/><p>
                  
                  <select id="tipoUsuario" name="tipoUsuario">
                  	<option value="selecciona..." disabled selected>Elije una opción </option>
                	<option value="Administrador"> Administrador</option>
                	<option value="Alumno"> Alumno</option>
                	<option value="Profesor"> Profesor</option>
                </select>
                
                  <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
              
          </fieldset>
        </form>