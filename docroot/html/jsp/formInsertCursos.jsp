<div id="formularios" align="left">
      <form role="form" action="${pageContext.request.contextPath}/InputCursos" name="alta" method="post" class="form-horizontal">
          <fieldset>
            <legend>Alta de Cursos</legend>
            
              <label for="nombre">Nombre&nbsp;</label><input type="text" size="30" maxlength="30" name="nombre" required/><p>
             
              <b>Descripción</b>&nbsp;<br/><textarea name="descripcion" cols="50" rows="4"> </textarea><p>
             
              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date"  name="fechaInicio" required/><p>
              
              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" name="fechaFin" required/><p>
              
              <label for="numeroHoras">Número de horas&nbsp;</label><input type="number" name="numeroHoras" min="1" required/><p>
              
              <b>Objetivos&nbsp; </b><br/><textarea name="objetivos" cols="50" rows="4"> </textarea><p>
              
              <b>Requisitos&nbsp; </b><br/><textarea name="requisitos" cols="50" rows="4"> </textarea><p>
              
              <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             
          </fieldset>
        </form>
 </div>