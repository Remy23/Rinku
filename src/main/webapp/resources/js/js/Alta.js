
function altaEmpleado(){
	var nombre = $("#nombre").val();
	var apellidoPaterno = $("#apellidoPaterno").val();
	var apellidoMaterno = $("#apellidoMaterno").val();
	var direccion = $("#direccion").val();
	var telefono = $("#telefono").val();
	var rol =  $("input[name='rol']:checked").val()
	
	//alert("Alta empleado... " + nombre + " - " + rol);
	$.ajax({
			//type : "POST",
			url: "altaEmpleado?nombre=" + nombre + '&apellidoPaterno=' + apellidoPaterno + '&apellidoMaterno=' + apellidoMaterno + '&direccion=' + direccion  + '&telefono=' + telefono  + '&rol=' + rol,


			success: function(data) {

				if (data == 1) {
				   alert("Empleado registrado exitosamente");
				} else {
                     alert("Surgió un error, contacte al administrador");
				}


			},
			error: function(e) {
				alert("ERROR: " + e);
			}
		});
}