/**
 * 
 */
 function iniciarSesion(){
	//alert("hola desde el boton iniciar sesion");
	
	var usuario = $("#exampleInputEmail1").val();
    var contrasenia = $("#exampleInputPassword1").val();
    var tipoUsuario = $("#validationCustom04").val();

 
   
	
	if(usuario == ""){
		alert("Favor de ingresar un Usuario");
	}else if(contrasenia == "" ){
		alert("Favor de ingresar la contrasenia");
	}else if(tipoUsuario == -1){
		alert("Seleccione una opcion");
	}else if(tipoUsuario == 1){
		//alert("Empleado");
		
	url = "http://localhost:8080/prestamos/tableroPrincipalUsuario";
				
	$.ajax({
			//type : "POST",
			url : "validacionTipoUsuario?usuario="+ usuario + '&contrasenia=' + contrasenia,
	
			success : function(data) {
                //alert(data);
                
                   
				if(data.validacionUsuario == 1){
					$(location).attr('href',url + '?usuarioId='+data.usuarioId);
					
					
				}else{
					alert("Favor de revisar los datos ingresados o que el tipo de usuario sea el correcto");
				
				}
							
			},
			error : function(e) {
				alert("ERROR: " + e);
			}
		});

		
	}else if (tipoUsuario == 2 ){//Corresponde al ID de gerente en el combo box


	var url = 'http://localhost:8080/prestamos/tableroPrincipalGerente';
	// url = "http://localhost:8080/prestamos/tableroPrincipalUsuario";
	 
	
		$.ajax({
			//type : "POST",
			url : "validacionTipoGerente?usuario="+ usuario + '&contrasenia=' + contrasenia,
	
			success : function(data) {
				if(data.validacion == '1'){
					$(location).attr('href',url + '?gerenteId='+data.gerenteId);
				}else{
					alert("Favor de revisar los datos ingresados o que el tipo de usuario sea el correcto");
				}

		
			},
			error : function(e) {
				alert("ERROR: " + e);
			}
		});
		
		
		
	} else if (tipoUsuario == 3) {
		//alert("Nominas");

		url = "http://localhost:8080/prestamos/tableroPrincipalNomina";

		$.ajax({
			//type : "POST",
			url: "validacionTipoNominas?usuario=" + usuario + '&contrasenia=' + contrasenia,


			success: function(data) {

				alert(data);

				if (data.validacion == 1) {
					//alert("Datos correctos")

					$(location).attr('href', url + '?usuarioNominaId=' + data.usuarioNominaId);
					//alert(data.usuarioNominaId);

				} else {
                     alert("Favor de revisar los datos ingresados o que el tipo de usuario sea el correcto");
				}


			},
			error: function(e) {
				alert("ERROR: " + e);
			}
		});




	}
}




