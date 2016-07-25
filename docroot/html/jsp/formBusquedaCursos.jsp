 <form action="#" name="busqueda" method="post">
            <fieldset>
              <legend>Busqueda de Cursos</legend>
              	  <label for="idCurso">ID del Curso &nbsp;</label><input type="number" maxlength="10" name="idCurso" id="idCurso" /><p>
              
	              <label for="nombre">Nombre&nbsp;</label><input  type="text" size="30" maxlength="30" name="nombre" id="nombre" /><p>
	              
	              <b>Descripción&nbsp;</b><br/><textarea name="descripcion" cols="50" rows="4" id="descripcion"> </textarea><p>
	              
	              <label for="fechaInicio">Fecha de inicio&nbsp;</label><input type="date" size="10" name="fechaInicio" id="fechaInicio"/><p>
	             
	              <label for="fechaFin">Fecha de fin&nbsp;</label><input type="date" size="10" name="fechaFin" id="fechaFin"/><p>
	             
	              <label for="numeroHoras">Número de horas&nbsp;</label><input  type="number" min="1" name="numeroHoras" id="numeroHoras"/><p>
	             
	              <b>Objetivos&nbsp;</b><br/><textarea name="objetivos" cols="50" rows="4" id="objetivos"> </textarea><p>
	             
	              <b>Requisitos&nbsp;</b><br/><textarea name="requisitos" cols="50" rows="4" id="requisitos"> </textarea><p>
	             
	              <label for="enviar"><button class="btn btn-default" type="button" id="botonBuscar" >Enviar</button></label>
              
            </fieldset>
          </form>
          
         </div>
          
      	<div align="center">
    			<table class="table" border="2px">
    		<thead>  
    		<tr>
    		
            <th>&nbsp;ID de Curso&nbsp;</th>
            <th>&nbsp;Nombre&nbsp;</th>
            <th>&nbsp;Descripción&nbsp;</th>
            <th>&nbsp;Fecha de inicio&nbsp;</th>
            <th>&nbsp;Fecha de fin&nbsp;</th>
            <th>&nbsp;Número de horas&nbsp;</th>
            <th>&nbsp;Objetivos&nbsp;</th>
            <th>&nbsp;Requisitos&nbsp;</th>
       		
       		</tr>
       		</thead>
       	<tbody id="datosUser"></tbody>	
			</table>
        </div>
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