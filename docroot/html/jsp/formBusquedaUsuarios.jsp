<form id="busqueda" method="post" style="padding-top:30px;">
            <fieldset>
              <legend>Busqueda de usuarios</legend>
              	<label for="login">ID de Usuario &nbsp;</label><input type="number" min="1" name="idUsuario" id="idUsuario" /><p>
              
                <label for="login">Nombre Usuario &nbsp;</label><input type="text" maxlength="20" name="nombreUsuario" id="nombreUsuario" /><p>
             
                <label for="nombre">Nombre&nbsp;</label><input type="text" maxlength="20" name="nombre" id="nombre" /><p>
                
                <label for="apellidos">Apellidos&nbsp;</label><input type="text" maxlength="20" name="apellidos" id="apellidos" /><p>
                
                <label for="correo">Correo electrónico&nbsp;</label><input type="text" maxlength="20" name="correo" id="correo" /><p>
                
               <label for="clave">Contrase&ntilde;a&nbsp;</label><input type="password" maxlength="20" name="clave" id="clave" /><p>
                
                <select  name="tipoUsuario">
                	<option value="" disabled selected>Elije una opción </option>
                	<option value="Administrador"> Administrador</option>
                	<option value="Alumno"> Alumno</option>
                	<option value="Profesor"> Profesor</option>
                
                </select>
               
                <label for="tipoUsuario">Tipo de Usuario&nbsp;</label><input type="text" maxlength="20" name="tipoUsuario" id="tipoUsuario"/><p>
                
 
                <label for="enviar"><button type="button" class="btn btn-default" id="botonBuscar">Enviar</button></label>
               
            </fieldset>
          </form>
      
        	<br/>
        	<br/>
        <div align="center">
    			<table class="table" border="2px">
    		<thead>  
    		<tr>
    		
            <th>&nbsp;ID de Usuario&nbsp;</th>
            <th>&nbsp;Nombre de Usuario&nbsp;</th>
            <th>&nbsp;Nombre&nbsp;</th>
            <th>&nbsp;Apellidos&nbsp;</th>
            <th>&nbsp;Correo electrónico&nbsp;</th>
            <th>&nbsp;Contrase&ntilde;a&nbsp;</th>
            <th>&nbsp;Tipo de Usuario&nbsp;</th>
       		
       		</tr>
       		</thead>
       	<tbody id="datosUser"></tbody>	
			</table>
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