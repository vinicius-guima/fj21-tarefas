<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="dataTag" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<link type="text/css" href="resources/css/tarefas.css" rel=stylesheet>
	<link href="resources/js/jquery.css" rel="stylesheet"/>
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/jquery-ui.js"></script>

<head>
<meta charset="ISO-8859-1">
<title>mostra</title>
</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
	
		<input type="hidden" name="id" value="${tarefa.id}"/>
		
		Descrição:
		<br>
		
		<textarea name="descricao" rows="5" cols="50"></textarea>
		
		<br>
		
		Finalizado?
		
		<input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked':'' }>
		<br>
		
		Data de finalização:
		<br>
		
		<dataTag:campoData id="dataFinalizacao" />
	 	
	 	<br>
	 	
	 	<input type="submit" value="Alterar">
	</form>
</body>
</html>