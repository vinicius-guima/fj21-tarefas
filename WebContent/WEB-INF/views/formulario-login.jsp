<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>

	<h3>pagina de login</h3>
	
	<form action="efetuaLogin" method="post">
		Login:<input type="text" name="login">
		<br>
		Senha:<input  type="password" name="senha">
		<br>
		<input type="submit" value="Entrar">
	</form>
</body>
</html>