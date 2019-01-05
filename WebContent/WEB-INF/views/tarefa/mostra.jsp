<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>mostra</title>
</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
	
		<input type="hidden" name="id" value="${tarefa.id}"/>
		
		Descri��o:
		<br>
		
		<textarea name="descricao"  cols="10" rows="5">
			<%-- ${tarefa.descricao} --%>
		</textarea>
		
		<br>
		
		Finalizado?
		
		<input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked':'' }>
		<br>
		
		Data de finaliza��o:
		<br>
		
		<input type="text" name="dataFinalizacao"
	    value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" 
	 	pattern= "dd/MM/yyyy"/>">	
	 	<br>
	 	
	 	<input type="submit" value="Alterar">
	</form>
</body>
</html>