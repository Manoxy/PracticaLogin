<div align="center">
<form action="${pageContext.request.contextPath}/UpdateCursos" name="modifiacion" method="post" style="padding-top:30px;">
          <fieldset>
            <legend>Editar perfil de un curso</legend>
            	  <label for="idCurso">ID del Curso &nbsp;</label><input type="number" maxlength="10" name="idCurso" required/><p>
          	
	              <label for="nombre">Nombre&nbsp;</label><input type="text" size="30" name="nombre" required/><p>
	              
	            <b>Descripción&nbsp;</b><br/><textarea name="descripcion" cols="50" rows="4" required> </textarea><p>
	              
	              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date" size="10" name="fechaInicio" required/><p>
	              
	              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" size="10" name="fechaFin" required/><p>
	             
	              <label for="numeroHoras">Número de horas&nbsp;</label><input type="number" name="numeroHoras" min="1" required /><p>
	              
	             <b>Objetivos&nbsp;</b><br/><textarea name="objetivos" cols="50" rows="4" required> </textarea><p>
	              
	              <b>Requisitos&nbsp; </b><br/><textarea name="requisitos" cols="50" rows="4" required> </textarea><p>
	              
	              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>
</div>       