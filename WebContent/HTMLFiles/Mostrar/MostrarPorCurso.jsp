<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SOUP|Lista de Estudiantes</title>
<link rel="stylesheet" type="text/css" href="base.css">


</head>
<body>
<div class="box">
	<h1>Estudiantes matriculados</h1>
	<table>
		<tr>
			<a href="HTMLFiles/Mostrar/ListarIndex.html"><button class="button" type="button">Regresar</button></a>
		</tr>
		
	</table>
	<div class="seleccion">
	<table border="1" width="100%">
		<tr>
		 <td> CUI</td>
		 <td> NOMBRE</td>
		 <td> CORREO</td>
		 <td> TURNO</td>
		 <td colspan=2>ACCIONES</td>
		</tr>
		<c:forEach var="estudiante" items="${lista}">
			<tr>
				<td><c:out value="${estudiante.getCUI()}"/></td>

				<td><c:out value="${estudiante.nombre}"/></td>
							
				<td><c:out value="${estudiante.getCorreo()}"/></td>
				
				<td><c:out value="${estudiante.turno}"/></td>
								
				<td><a href="/SOUP/SOUPController?action=eliminar&id=<c:out value="${estudiante.getId()}"/>&idCurso=<c:out value="${estudiante.getIdCurso()}"/>">Eliminar</a> </td>
				
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
</body>
</html>