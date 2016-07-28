	       	<br/>
        	<br/>
        <div align="center">
  
       	<div id="datosUser"></div>	
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