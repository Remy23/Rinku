<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index</title>
<link rel="stylesheet" type="text/css" href=  "${scheme}://${serverName}:${port}${contextPath}/resources/css/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href=   "${scheme}://${serverName}:${port}${contextPath}/resources/css/css/estilos.css">
<script src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/js/js/index.js"></script>
</head>
<body>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
<a class="navbar-brand" href="index.html"><img src="images/logo_creditos.png" width="70" height="50"></a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button> 
<div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav me-auto mb-2 mb-lg-0">


        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Operaciones
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> 
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Reportes
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> 
      </ul>
     
    </div>
     <!--<div><strong>Cerrar Sesión</strong></div> -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Hola <strong>Remigio</strong>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Modificar mi información</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Cerrar Sesión</a></li>
          </ul>
        </li>
      </ul>
  </div>
</nav>
		
	</header>

	<!-- Aqui va el jumbotron -->
	<section class="jumbotron">
		<div class="container">
			<h1 class="titulo-disenio">Captura de Movimientos por Mes</h1>
		</div>
	</section>

	<br>
  <br>
  <br>
	<section class="main container">
	
    <div class="container">
  <div class="row">
    <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;">Número de Empleado:</label>
    </div>
    <div class="col-auto">
      <input type="text" class="form-control" id="inputPassword2" placeholder="">
    </div>
    </div>
    <br>
    <div class="row">
    <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;">Nombre: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    </div>
    <div class="col-auto">
      <input type="text" class="form-control" id="inputPassword2" placeholder="">
    </div>
    <div class="col-auto">
      <button type="submit" class="btn btn-primary mb-3" id="validarSolicitud">Buscar</button>
  </div>
    </div>
  </div>
</div>
<br>
<br>
<div class="row">
    <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;">Rol: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    </div>
    <div class="col-auto">
      <input type="text" class="form-control" id="inputPassword2" placeholder="">
    </div>
    </div>
<br>
    <div class="row">
    <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;">Mes: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    </div>
    <div class="col-auto">
      <input type="text" class="form-control" id="inputPassword2" placeholder="">
    </div>
    </div>
    <br>
    <div class="row">
    <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;">Cantidad de entregas:&nbsp;&nbsp;</label>
    </div>
    <div class="col-auto">
      <input type="text" class="form-control" id="inputPassword2" placeholder="">
    </div>
    </div>
    <br><br>
     <div class="col-auto" style="padding-left: 20%;">
      <button type="submit" class="btn btn-primary mb-3" style="" id="validarSolicitud">Guardar</button>
      <button type="submit" class="btn btn-primary mb-3" style="" id="validarSolicitud">Cancelar</button>
  </div>

<br>
<br>
<br>

<!--<p>Usted esta solicitando un préstamos por un monto de $10,000 el cual deberá ser liquidado en su totalidad a mas tardar el 27 de Marzo 2023 con un cargo adicional del 5%. <br>
La solicitud deberá se aprobada por su jefe directo y por el personal de nominas.<br>
El deposito a su cuenta se realiza en un lapso de 3 a 5 dias habiles despues de su aprobación.<br><br>

¿Confirma realizar la solicitud?

</p>-->

<!--<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
	
	<button type="button" class="btn btn-secondary">Secondary</button>-->

	</section>

  <br>
	<footer class="footerActual">
    <div class="container"></div>
  </footer>



	<script type="text/javascript">
				// Example starter JavaScript for disabling form submissions if there are invalid fields
		(
			function () {
		  'use strict'

		  // Fetch all the forms we want to apply custom Bootstrap validation styles to
		  var forms = document.querySelectorAll('.needs-validation')

		  // Loop over them and prevent submission
		  Array.prototype.slice.call(forms).forEach(function (form) {
		      form.addEventListener('submit', function (event) {
		        if (!form.checkValidity()) {
		          event.preventDefault()
		          event.stopPropagation()
		          alert(1);
		        }else{
		        	alert(2);
		        }

		        //alert(123);
		        form.classList.add('was-validated')

		      }, 

		      false
		      )
		      
		    })

		

		}
		)
		()
	</script>
</body>
</html>