 <!DOCTYPE html>
 <html>
 <head>
 	<title>Registro de datos</title>
 	<link rel="stylesheet" type="text/css" href="css/materialize.css">
 </head>
 <body>
 	<div class="row">
 	<div class="col-md6"></div>
 	<!--inicio de columnas-->
 	<div class="col-md6"></div>
 	<center><h1>Clinica</h1></center>
 	<form method="POST" action="registro.php"></form>
 	<!--etiquetas-->
 	<div class="form-group"></div>
 		<label for="nombre">Nombre Clinica</label>
 		<input type="text" name="nombre" class="form-control" id="nombre">
	</div>
	 	<div class="form-group"></div>
 		<label for="nombre">Dentista</label>
 		<input type="text" name="dent" class="form-control" id="nombre">
	</div>
	 	<div class="form-group"></div>
 		<label for="nombre">Direccion</label>
 		<input type="text" name="direc" class="form-control" id="nombre">
	</div>
	 	<div class="form-group"></div>
 		<label for="nombre">Telefono</label>
 		<input type="text" name="tel" class="form-control" id="nombre">
	</div>
	 	<div class="form-group"></div>
 		<label for="nombre">Tipo de sita</label>
 		<input type="text" name="ts" class="form-control" id="nombre">
	</div>
	<center>
		<input type="submit" value="Registrar" class="btn btn-success" name="btn-registrar">
		<input type="submit" value="Consulta" class="btn btn-primary" name="btn-Consulta">
		<input type="submit" value="Actualizar" class="btn btn-info" name="btn-Actualizar">
		<input type="submit" value="Eliminara" class="btn btn-danger" name="btn-Eliminar">
	</center>


 
 </body>
 </html>