<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<td>${tarefa.id}</td>
	<td>${tarefa.descricao}</td>
	<td>Finalizada</td>
	<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/></td>
	<td><a href="removeTarefa?id=${tarefa.id}">delete</a></td>
	<td><a href="alteraTarefa?id=${tarefa.id}">update</a></td>
	
	
</body>
</html>