<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adiciona tarefas</title>
</head>
<body>

	<h3>Adicionar Tarefas</h3>
	<form:errors path="tarefa.descricao"/>
	<form action="adicionaTarefa" method="post">
		Descri��o: <br>
		<textarea  name="descricao" rows="5" cols=""></textarea><br>
		<input type="submit" value="Adicionar">
	
	</form>
	
</body>
</html>