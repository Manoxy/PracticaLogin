<br>
<div align="center">
  <form action="${pageContext.request.contextPath}/DeleteCursos" name="baja" method="post" style="padding-top:30px;">
          <fieldset>
            <legend>Baja de cursos</legend>
           
              <label for="id">Id del curso &nbsp;</label><input type="number" maxlength="20" name="id" required/><p>
              
              <label for="nombre">Nombre del curso&nbsp;</label><input type="text" size="30" maxlength="20" name="nombre" required/><p>
            
              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>
</div>
<br>