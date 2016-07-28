<br>
<div align="center">
<br>

         <hr>
        	<span id="titulos">Dar de baja usuarios</span>
        <hr>
        	<form action="${pageContext.request.contextPath}/Delete" name="baja" method="post" style="padding-top:30px;">
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
                  <label for="idUsuario">ID de usuario&nbsp;</label>
                  </td>
                  	<td>
                 <input  type="number" min="1" name="idUsuario" required/>
              		</td>
              	</tr>       
                <tr>
                	<td>
                		<br>
                 		 <label for="enviar"><input class="btn btn-default" type="submit" value="Enviar" name="enviar" /></label>
                	</td>
                </tr>
				
				</table>
  			</form> 
          	
 <br>
</div>