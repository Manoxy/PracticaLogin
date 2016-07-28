<br>
<div id="formularios" align="center">
	 <hr>
        	<span id="titulos">Dar de alta un curso</span>
        <hr>
      <form role="form" action="${pageContext.request.contextPath}/InputCursos" name="alta" method="post" class="form-horizontal">
          <table>
            <tr>
              <td><label for="nombre">Nombre&nbsp;</label></td>
             
              <td><input type="text" size="30" maxlength="30" name="nombre" required/><br><br> </td>
            </tr>
            <tr>
            	
              <td><b>Descripción</b>&nbsp;<br/></td>
              <td><textarea name="descripcion" cols="50" rows="4"> </textarea><br><br></td>
            </tr>
            <tr>
              <td><label for="fechaInicio">Fecha de inicio&nbsp;</label>
              </td>
              <td><input type="date"  name="fechaInicio" required/> <br><br></td>
            </tr>
            <tr>
            	<td><label for="fechaFin">Fecha de fin&nbsp;</label></td>
            	<td><input type="date" name="fechaFin" required/><br><br></td>
              
             <tr>
             	<td><label for="numeroHoras">Número de horas&nbsp;</label></td>
             	<td><input type="number" name="numeroHoras" min="1" required/><br><br></td>
              <tr>
              <td><b>Objetivos&nbsp; </b><br/></td>
              <td><textarea name="objetivos" cols="50" rows="4"> </textarea><br><br></td>
              </tr>
              <tr>
              	<td><b>Requisitos&nbsp; </b><br/></td>
              	<td><textarea name="requisitos" cols="50" rows="4"> </textarea><br><br></td>
              <tr>
             <tr>
              	<td><label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label></td>
             </tr>
          </table>
        </form>
 </div>
 <br>