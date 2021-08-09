<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>SOUP | Registro </title>
	<link rel="stylesheet" type="text/css" href="base.css">
</head>
<style>
	
</style>

<!--Solo las personas con la clave del administrador podran registrar/eliminar un estudiante -->

<body>
	<div class="box" style="margin-top: 100px;">
		<img src="/SOUP/Images/logo.png" style="width:50%;margin-top:50px;">
		<h1 style="color: white">INGRESE LA CLAVE DE ADMINISTRADOR</h1>
		<form id = "form" name ="form" action="/SOUP/claveservlet" method="post">
			<input type = "password"  name = "admi" placeholder="CLAVE ADMINISTRADOR"><br>
			<input class = "submit" TYPE="submit" VALUE="Ingresar">
		</form>
	</div>

</body>
</html>