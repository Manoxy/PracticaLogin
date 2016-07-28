<div align="center">
 <form action="#" name="busqueda" method="post">
         <hr>
        	<span id="titulos">Busqueda de Cursos</span>
       	 <hr>
       	 	<table>
       	 		<tr>
       	 			<td>
              	   		<label for="idCurso">ID del Curso &nbsp;</label>
              	   </td>
              	   <td>
              	  		<input type="number" maxlength="10" name="idCurso" id="idCurso" />
              	  		<br>
              	  		<br>
              	  </td>
              </tr>
              <tr>
              		<td>
	              		<label for="nombre">Nombre&nbsp;</label>
	              	</td>
	              	<td>
	              		<input  type="text" size="30" maxlength="30" name="nombre" id="nombre" />
	              		<br>
	              		<br>
	              	</td>
	          </tr>
	          <tr>
	          		<td>   
	              		<b>Descripción&nbsp;</b><br/>
	              	</td>
	              	<td>
	              		<textarea name="descripcion" cols="50" rows="4" id="descripcion"> </textarea>
	              		<br>
	              		<br>
	              	</td>
	           </tr>
	           <tr> 
	           		<td> 
	              		<label for="fechaInicio">Fecha de inicio&nbsp;</label>
	              	</td>
	              	<td>
	              		<input type="date" size="10" name="fechaInicio" id="fechaInicio"/>
	              		<br>
	              		<br>
	              	</td>
	           </tr>
	           <tr>
	           		<td> 
	              		<label for="fechaFin">Fecha de fin&nbsp;</label>
	              	</td>
	              	<td>
	              		<input type="date" size="10" name="fechaFin" id="fechaFin"/>
	              		<br>
	              		<br>
	              	</td>
	           </tr>
	           <tr>
	           		<td>
	              		<label for="numeroHoras">Número de horas&nbsp;</label>
	              	</td>
	              	<td>
	              		<input  type="number" min="1" name="numeroHoras" id="numeroHoras"/>
	              		<br>
	              		<br>
	              	</td>
	           </tr>
	           <tr>
	           		<td>  
	              		<b>Objetivos&nbsp;</b><br/>
	              	</td>
	              	<td>
	              		<textarea name="objetivos" cols="50" rows="4" id="objetivos"> </textarea>
	              		<br>
	              		<br>
	              	</td>
	            </tr>
	            <tr>
	            	<td>
	              		<b>Requisitos&nbsp;</b><br/>
	              	</td>
	              	<td>
	              		<textarea name="requisitos" cols="50" rows="4" id="requisitos"> </textarea>
	              		<br>
	              		<br>
	              	</td>
	            </tr>
	            <tr>
	            	<td>
	              		<label for="enviar"><button class="btn btn-default" type="button" id="botonBuscar" >Enviar</button></label>
	              	</td>
              	</tr>	
            </table>
          </form>
          
</div>
          
      <div align="center">
    			
       	<div id="datosUser"> </div>	
			
       </div>
        <br>
        <br>
		<script>
				$("#botonBuscar")
				.on("click",
					function(){
							var idCurso = $("#idCurso").val();
							var nombre = $("#nombre").val();
							var descripcion = $("#descripcion").val();
							var fechaInicio = $("#fechaInicio").val();
							var fechaFin = $("#fechaFin").val();
							var numeroHoras = $("#numeroHoras").val();
							var objetivos = $("#objetivos").val();
							var requisitos = $("#requisitos").val();
						
							var paramPost = { 	idCurso: idCurso,
										nombre: nombre,
										descripcion: descripcion,
										fechaInicio: fechaInicio,
										fechaFin: fechaFin,
										numeroHoras: numeroHoras,
										objetivos: objetivos,
										requisitos: requisitos
									};			
					
					$.post("${pageContext.request.contextPath}/html/jsp/buscadorCursos.jsp", 
							paramPost,
							function(data){
								$("#datosUser").html(data);
							});
					});
					
		</script>