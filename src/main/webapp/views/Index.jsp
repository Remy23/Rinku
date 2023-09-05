<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index</title>
<link rel="stylesheet" type="text/css" href=  "${scheme}://${serverName}:${port}${contextPath}/resources/css/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href=   "${scheme}://${serverName}:${port}${contextPath}/resources/css/css/estilos.css">
<script src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/js/index.js"></script>
</head>
<body>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
<a class="navbar-brand" href= "${scheme}://${serverName}:${port}${contextPath}/index"><img src= "${scheme}://${serverName}:${port}${contextPath}/resources/images/images/logo.png" width="70" height="50"></a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button> 
<div class="collapse navbar-collapse" id="navbarSupportedContent">
<strong class="h3"> RINKU - CONTROL DE NÓMINAS  </strong>
</div>
 
  </div>
</nav>
		
	</header>

	<!-- Aqui va el jumbotron -->
	<section class="jumbotron">
		<div class="container">
			<h1 class="titulo-disenio">Inicio de Sesion</h1>
			<!--<p>Blog de diseÃ±o</p> -->
		</div>
	</section>

	<section class="main container">
<br>
<br>
  <div class="col-md-3">
    <label for="validationCustom04" class="form-label sizeInput">Seleccione el tipo de usuario:</label>
    <select class="form-select" id="validationCustom04" required >
      <option  value="-1">Seleccione...</option>
      <option value="1">Administrador</option>
      <option value="3">Nominas</option>
    </select>
  </div>
  <br/><br/>
<!--<form> -->
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Usuario:</label>
    <input type="email" class="form-control sizeInput" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su usuario">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Contraseña:</label>
    <input type="password" class="form-control sizeInput" id="exampleInputPassword1" placeholder="Ingrese su contrasenia">

  </div>
  <br>
  <div class="col-12">
<%--     <a href= "${scheme}://${serverName}:${port}${contextPath}/tableroPrincipal"><button class="btn btn-primary" type="submit" id="inisiarSesion" onclick="inisiarSesion()">Iniciar Sesion</button></a> --%>
    <button class="btn btn-primary" type="submit" id="inisiarSesion" onclick="iniciarSesion()">Iniciar Sesion</button>
  </div>
  
<!--</form>-->

	</section>

  <br>
  <br>
	<footer class="footerActual">
    <div class="container"><br/><br/></div>
  </footer>

	<script type="text/javascript" src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/jquery/jquery-3.6.0.js"></script>
	<script type="text/javascript" src= "${scheme}://${serverName}:${port}${contextPath}/resources/js/js/bootstrap.js"></script>

</body>
</html>