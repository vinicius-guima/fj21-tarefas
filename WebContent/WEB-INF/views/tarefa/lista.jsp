<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<script type="text/javascript" src="resources/js/jquery.js"></script>

<head>
<meta charset="ISO-8859-1">
<title>Lista-tarefas</title>
</head>
<body>

	<script type="text/javascript">
		function finalizaAgora(id) {
			$.post("finalizaTarefa", {'id' : id},function(){
				$("#taefa_"+id).html("Finalzado");
			});
		}
	</script>

	<a href="novaTarefa">Criar nova tarefa</a>
	<br>
	<br>
	
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado</th>
			<th>Data de finalização</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
		
			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa. descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td id="tarefa_${tarefa.id}">
						<a href="#" onclick="finalizaAgora(${tarefa.id})">Finalizar Agora!</a>
				    </td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true}">
				<td>finalizado</td>
				</c:if>
				<td>
					<fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy"/>
				</td>	
				<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
				<td><a href="removeTarefa?id=${tarefa.id}">Remover</a> </td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>