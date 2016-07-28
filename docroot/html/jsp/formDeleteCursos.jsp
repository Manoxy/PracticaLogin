<br>
<div align="center">
  <form action="${pageContext.request.contextPath}/DeleteCursos" name="baja" method="post" style="padding-top:30px;">
          <hr>
        	<span id="titulos">Dar de alta un curso</span>
       	 <hr>
           	<table>
           		<tr>
              		<td><label for="id">Id del curso &nbsp;</label><br><br></td>
              		<td><input type="number" maxlength="20" name="id" required/><br><br></td>
              	</tr>
              	<tr>
              		<td><label for="nombre">Nombre del curso&nbsp;</label><br><br></td>
              		<td> <input type="text" size="30" maxlength="20" name="nombre" required/><br><br></td>
              	</tr>
             	<tr>
             		 <td>
             		 	<label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
             		 </td>
            	</tr>             
          	</table>
        </form>
</div>
<br>