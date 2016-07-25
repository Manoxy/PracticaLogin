<form action="${pageContext.request.contextPath}/Delete" name="baja" method="post" style="padding-top:30px;">
          <fieldset>
            <legend>Baja de usuarios</legend>
            
              <label for="nombreUsuario">Nombre Usuario &nbsp;</label><input type="text" maxlength="20" name="nombreUsuario" required/><p>
              
              <label for="idUsuario">ID de usuario&nbsp;</label><input  type="number" min="1" name="idUsuario" required/><p>
           
              <label for="enviar"><input type="submit" value="Enviar" name="enviar" /></label>
              
          </fieldset>
        </form>