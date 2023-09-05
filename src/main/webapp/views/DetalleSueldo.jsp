<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index</title>
<link rel="stylesheet" type="text/css" href=  "${scheme}://${serverName}:${port}${contextPath}/resources/css/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href=   "${scheme}://${serverName}:${port}${contextPath}/resources/css/css/estilos.css">
<script src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/js/Detalle.js"></script>
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
            <li><a class="dropdown-item" href="${scheme}://${serverName}:${port}${contextPath}/alta">Alta</a></li>
<!--             <li><a class="dropdown-item" href="#">Another action</a></li> -->
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="${scheme}://${serverName}:${port}${contextPath}/captura">Captura de entregas</a></li>
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
			<h1 class="titulo-disenio">Detalle de Sueldo por Empleado</h1>
			<!--<p>Blog de diseño</p> -->
		</div>
	</section>

	<br>
	<section class="main container">
    <div class="container">
  <div class="row">
    <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;">Empleado:</label>
    </div>
    <div class="col-auto">
      <input type="text" class="form-control" id="empleadoId" placeholder="">
    </div>
   <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;">Mes:</label>
  </div>
  <div class="col-auto">
          <select class="form-select" id="mes" required>
      <option value="-1">Seleccione...</option>
      <option value="1">Enero</option>
      <option value="2">Febrero</option>
      <option value="3">Marzo</option>
      <option value="4">Abril</option>
      <option value="5">Mayo</option>
      <option value="6">Junio</option>
      <option value="7">Julio</option>
      <option value="8">Agosto</option>
      <option value="9">Septiembre</option>
      <option value="10">Octubre</option>
      <option value="11">Noviembre</option>
      <option value="12">Diciembre</option>
    </select>
  </div>
    <div class="col-auto">
      <button type="submit" class="btn btn-primary mb-3" id="validarSolicitud" onclick="buscarDetalle()">Buscar</button>
  </div>
  <div style="color: green;">
  <strong id="nombreEmpleado">NOMBRE: </strong>
  </div>
    </div>
    <div class="modal-body text-justify" >
        <strong>DETALLE</strong>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Pago Horas Trabajadas</th>
            <th scope="col">Pago Total por Entregas</th>
            <th scope="col">Pago Total por Bonos</th>
            <th scope="col">Retención</th>
            <th scope="col">Vales</th>
            <th scope="col">Sueldo Total</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong id="horasTrabajadas">0</strong></td>
            <td><strong id="pagoPorEntregas">0</strong></td>
            <td><strong id="pagoPorBonos">0</strong></td>
            <td><strong id="retencion">0</strong></td>
            <td><strong id="vales">0</strong></td>
            <td><strong id="sueldoTotal">0</strong></td>
          </tr>
        </tbody>
      </table>
      </div>

      

  </div>
  <div class="row text-center">
    <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;"></label>
    </div>
    <div class="col-auto">
      
    </div>
   <div class="col-auto">
      <label for="staticEmail2" class="visually" style="padding: 0.375rem 0.75rem;"></label>
  </div>
  <div class="col-auto">
  </div>
    <div class="col-auto">
      
  </div>
    </div>
	</section>
  <br>
  <br>
  <br>
  <br>
    <br>
  <br>
    <br>
  <br>
	<footer class="footerActual">
    <div class="container"></div>
  </footer>

	<script type="text/javascript" src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/jquery/jquery-3.6.0.js"></script>
	<script type="text/javascript" src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/bootstrap/bootstrap.js"></script>


</body>
</html>