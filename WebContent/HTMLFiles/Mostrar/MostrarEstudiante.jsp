<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>SOUP|Lista De Cursos</title>

<link rel="stylesheet" type="text/css" href="base.css">
</head>
<body>
<div class="box">
	<h1>Lista  De Cursos</h1>
	<table>
		<tr>
			<a href="/SOUP/Index.html"><button type="button" class="button">Regresar</button></a>
		</tr>
	</table>
	<div class="seleccion">
	<table border="1" width="100%">
		<tr>
		 <td> NOMBRE DE LABORATORIO</td>
		 <td> PROFESOR</td>
		 <td> AÑO</td>
		 <td> SEMESTRE</td>
		 <td> TURNO</td>
		 <td colspan=2>ACCIONES</td>
		</tr>
		<c:forEach var="curso" items="${lista}">
			<tr>

				<td><c:out value="${curso.getNombre()}"/></td>
				<td><c:out value="${curso.getProfesor()}"/></td>
				<td><c:out value="${curso.getAnio()}"/></td>
				<td><c:out value="${curso.getSemestre()}"/></td>
				<td><c:out value="${curso.getTurno()}"/></td>

				<td><a href="/SOUP/SOUPController?action=eliminar&id=<c:out value="${curso.getMatricula()}"/>&mycui=<c:out value="${curso.getCUI()}"/>">Eliminar</a> </td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
</body>
</html>