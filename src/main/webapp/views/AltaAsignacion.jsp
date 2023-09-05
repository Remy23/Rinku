<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index</title>
<link rel="stylesheet" type="text/css" href=  "${scheme}://${serverName}:${port}${contextPath}/resources/css/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href=   "${scheme}://${serverName}:${port}${contextPath}/resources/css/css/estilos.css">
<script src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/js/Alta.js"></script>
</head>
<body>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
<a class="navbar-brand" href="index.html"><img src= "${scheme}://${serverName}:${port}${contextPath}/resources/images/images/logo.png" width="70" height="50"></a>
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
            <li><a class="dropdown-item" href="${scheme}://${serverName}:${port}${contextPath}/captura">Captura de entregas</a></li>
<!--             <li><a class="dropdown-item" href="#">Another action</a></li> -->
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="${scheme}://${serverName}:${port}${contextPath}/detalle">Detalle de sueldo por empleado</a></li>
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
			<h1 class="titulo-disenio">Alta de Empleado y Asignacion de Rol</h1>
			<!--<p>Blog de diseño</p> -->
		</div>
	</section>

	<br>
	<section class="main container">
<!-- 		<form class="row g-3 needs-validation" novalidate> -->
  <div class="col-md-4">
    <label for="validationCustom01" class="form-label">Nombre</label>
    <input type="text" class="form-control" id="nombre" value="" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Apellido Paterno</label>
    <input type="text" class="form-control" id="apellidoPaterno" value="" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Apellido Materno</label>
    <input type="text" class="form-control" id="apellidoMaterno" value="" required>
    <div class="valid-feedback">
      Looks good!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Dirección</label>
    <input type="text" class="form-control" id="direccion" required>
    <div class="invalid-feedback">
      Please provide a valid city.
    </div>
  </div>
  <div class="col-md-3">
    <label for="validationCustom05" class="form-label">Telefono</label>
    <input type="text" class="form-control" id="telefono" required>
    <div class="invalid-feedback">
      Please provide a valid zip.
    </div>
  </div>
  <br>
  <div class="col-12">
    <label for="validationCustom05" class="form-label"><strong>Seleccione el Rol: </strong></label>
  </div>
  <div class="col-12">
    <label>
        <input type="radio" name="rol" value="1"> Chofer
    </label>
    <br>
    <label>
        <input type="radio" name="rol" value="2"> Cargador
    </label>
    <br>
    <label>
        <input type="radio" name="rol" value="3"> Auxiliar
    </label>
  </div>
  <br/><br/>
  <div class="col-12">
    <button class="btn btn-primary" onclick="altaEmpleado()">Guardar</button>
  </div>
<!-- </form> -->



	</section>

  <br>
	<footer class="footerActual">
    <div class="container"></div>
  </footer>

	<script type="text/javascript" src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/jquery/jquery-3.6.0.js"></script>
	<script type="text/javascript" src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/bootstrap/bootstrap.js"></script>


</body>
</html>