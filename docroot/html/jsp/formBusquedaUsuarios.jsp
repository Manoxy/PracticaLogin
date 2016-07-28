<div align="center">
		<br>    
			<hr>
				<span id="titulos">Busqueda de usuarios </span>
			<hr>
         <form id="busqueda" method="post" style="padding-top:30px;">
            <table>
            <tr>
                  <td>
                  <label for="idUsuario">ID de Usuario &nbsp;</label>
                  </td>
                  	<td>
                  <input type="number" min="1" name="idUsuario" id="idUsuario" />
              		</td>
              	</tr>
            	<tr>
                  <td>
                  <label for="nombreUsuario" >Nombre de Usuario: &nbsp;</label>
                  </td>
                  	<td>
                  <input placeholder="Nombre de Usuario"  type="text" maxlength="20" name="nombreUsuario" id="nombreUsuario" /><p>
              		</td>
              	</tr>
              	<tr>
              		<td>
                  <label for="nombre" >Nombre:&nbsp;</label>
                  	</td>
                  	<td>
                  <input placeholder="Nombre"  type="text" maxlength="20" name="nombre" id="nombre" /><p>
                  	</td>
                  </tr>
                <tr>
                  	<td>
                  <label for="apellidos" >Apellidos:&nbsp;</label>
                  	</td>
                  	<td>
                  	<input placeholder="Apellidos"  type="text" maxlength="20" name="apellidos" id="apellidos"/><p>
                  	</td>
                 <tr>
                 	<td>
                  <label for="correo" >Correo electrónico:&nbsp;</label>
                  	</td>
                  	<td>
                  <input placeholder="Email"  type="text" maxlength="20" name="correo"  id="correo"/><p>
                  	</td>
                  </tr>
                  <tr>
                  	<td>
                  <label for="clave">Contrase&ntilde;a&nbsp;</label>
                  	</td>
                  	<td>
                  		<input type="password" maxlength="20" name="clave"  id="clave"/>
                  	</td>
                  </tr>
                  <tr>
                  	<td>
                  		 <label for="clave">Tipo de usuario</label>
                  	</td>
                  	<td>
                  		<select  name="tipoUsuario" id="tipoUsuario">
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
                 		 <label for="enviar"><button type="button" class="btn btn-default" id="botonBuscar">Enviar</button></label>
                	</td>
                </tr>
            
          </table>
          </form>
 </div>
        	<br/>
        	<br/>
        <div align="center">
    		
       	<div id="datosUser"> </div>	
			
        </div>
	
		<script>
				$("#botonBuscar")
				.on("click",
					function(){
							var idUsuario = $("#idUsuario").val();
							var nombreUsuario = $("#nombreUsuario").val();
							var nombre = $("#nombre").val();
							var apellidos = $("#apellidos").val();
							var correo = $("#correo").val();
							var clave = $("#clave").val();
							var tipoUsuario = $("#tipoUsuario").val();
							console.log("La búsqueda de usuarios tiene un rol de: "	+ tipoUsuario);
							var paramPost = { 	idUsuario: idUsuario,
										nombreUsuario: nombreUsuario,
										nombre: nombre,
										apellidos: apellidos,
										correo: correo,
										clave: clave,
										tipoUsuario: tipoUsuario
									};			
					
					$.post("${pageContext.request.contextPath}/html/jsp/buscadorUsuarios.jsp", 
							paramPost,
							function(data){
								$("#datosUser").html(data);
							});
					});
					
		</script>