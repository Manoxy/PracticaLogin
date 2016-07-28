	       	<br/>
        	<br/>
        <div id="tabla" align="center">
    			<table class="table" id="tabla" border="3px">
    		<thead>  
    		<tr>
   
            <th>&nbsp;Usuario del profesor&nbsp;</th>
            <th>&nbsp;Nombre del profesor&nbsp;</th>
            <th>&nbsp;Apellidos&nbsp;</th>
			<th>&nbsp;Nombre del curso&nbsp;</th>
			<th>&nbsp;Fecha de inicio&nbsp;</th>
			<th>&nbsp;Fecha de fin&nbsp;</th>
			<th>&nbsp;Numero de horas&nbsp;</th>
            
       		
       		</tr>
       		</thead>
       	<tbody id="datosUser"></tbody>	
			</table>
        </div>
	<br>
	<br>
		<script>
			$(document).ready(function(){
				console.log("funcion activada con la carga del div con id tabla");
				$.post("${pageContext.request.contextPath}/html/jsp/buscadorMiCurso.jsp", function(data){
					console.log("funcion activada que inicia buscadorMiCurso.jsp");
						$("#datosUser").html(data);
				});
			});
					
		</script>