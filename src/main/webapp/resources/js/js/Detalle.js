
function buscarDetalle(){
	var empleadoId = $("#empleadoId").val();
	var mes = $("#mes").val();
//	alert (empleadoId + " " + mes);
	
	if(empleadoId == "" || mes == "-1"){
		alert("Favor de revisar los datos de busqueda");
	}else if (empleadoId != ""){
			$.ajax({
			//type : "POST",
			url: "detalleSueldo?empleadoId=" + empleadoId + '&mes=' + mes,


			success: function(data) {

				//alert ("numeroEmpleado: " + data.horasTrabajadas);
				$("#horasTrabajadas").html(data.horasTrabajadas);
				$("#pagoPorEntregas").html(data.totalPorEntregas);
				$("#pagoPorBonos").html(data.totalPorBonos);
				$("#retencion").html(data.retencion);
				$("#vales").html(data.vales);
				$("#sueldoTotal").html(data.sueldoTotal);
				$("#nombreEmpleado").html('NOMBRE: ' + data.nombreEmpleado);

			},
			error: function(e) {
				alert("ERROR: " + e);
			}
		});
	} else {
		alert("No es posible realizar la busqueda");
	}

}
