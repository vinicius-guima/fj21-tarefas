<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

	<a href="novaTarefa">Criar nova tarefa</a>
	<br>
	<br>
	
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizadp</th>
			<th>Data de finalização</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
		
			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa. descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td>não finalizado</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true}">
				<td>finalizado</td>
				</c:if>
				<td>
					<fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy"/>
				</td>	
			</tr>
		</c:forEach>
	</table>
</body>
</html>