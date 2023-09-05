
function buscarEmpleado(){
	var numeroEmpleado = $("#numeroEmpleado").val();
	var nombreEmpleado = $("#nombreEmpleado").val();
	
	if(numeroEmpleado == "" && nombreEmpleado == ""){
		alert("Favor de ingresar un valor de busqueda");
	}else if(numeroEmpleado != "" && nombreEmpleado != ""){
		alert("Solo se permite buscar por medio de un campo o por nombre o numero de empleado");
	}else if (numeroEmpleado != ""){
			$.ajax({
			//type : "POST",
			url: "buscarEmpleado?numeroEmpleado=" + numeroEmpleado,


			success: function(data) {

				//alert ("numeroEmpleado: " + data.codigoRol);
				$("#codigoRol").val(data.codigoRol);
				$("#nombreEmpleado").val(data.nombre);
				
				$("#rolEmpleadoId").val(data.rolEmpleado);
				$("#empleadoId").val(data.id);


			},
			error: function(e) {
				alert("ERROR: " + e);
			}
		});
	} else {
		alert("Buscando por Nombre");
	}

}


function guardarHistorico(){
	var empleadoId = $("#empleadoId").val();
	var rolEmpleadoId = $("#rolEmpleadoId").val();
	var mes = $("#mes").val();
	var cantidadEntrega = $("#cantidadEntrega").val();
	
	if (cantidadEntrega != "" && cantidadEntrega > 0){
			$.ajax({
			//type : "POST",
			url: "registroMovimientoMes?empleadoId=" + empleadoId + '&rolEmpleadoId=' + rolEmpleadoId + '&mes=' + mes + '&cantidadEntrega=' + cantidadEntrega,

			success: function(data) {

				//alert ("numeroEmpleado: " + data);
				if (data == 1){
					alert ("Captura Existosa");
				}else{
					alert ("Surgió un error");
				}


			},
			error: function(e) {
				alert("ERROR: " + e);
			}
		});
		
	}else{
		alert ("La cantidad de entrega no debe ser cero o vacio");
	}
	
}