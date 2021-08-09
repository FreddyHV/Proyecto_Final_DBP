<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SOUP|Registro Realizado</title>

<link rel="stylesheet" type="text/css" href="base.css">
</head>

<body>
<div class="box">
<img src="/SOUP/Images/logo.png" style="width:50%;margin-top:50px;">
<h1>Alumno Registrado</h1>
	<br>
	Nombre y Apellido: <c:out value="${estudiante.nombre}"></c:out>
	<br>
	CUI: <c:out value="${estudiante.getCUI()}"></c:out>
	<br>
	DNI: <c:out value="${estudiante.getDNI()}"></c:out>
	<br>
	Correo: <c:out value="${estudiante.correo}"></c:out>
	<br>
	
<a href="/SOUP/Index.html"><button class="button" type="button">Regresar</button></a>
</div>
</body>
</html>