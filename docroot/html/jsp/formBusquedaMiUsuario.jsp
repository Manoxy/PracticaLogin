	       	<br/>
        	<br/>
        <div id="tabla" align="center">
    			<table class="table" border="3px">
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
	<br>
	<br>
		<script>
			$(document).ready(function(){
				console.log("funcion activada con la carga del div con id tabla");
				$.post("${pageContext.request.contextPath}/html/jsp/buscadorMiUsuario.jsp", function(data){
					console.log("funcion activada que inicia buscadorMiUsuario.jsp");
						$("#datosUser").html(data);
				});
			});
					
		</script>