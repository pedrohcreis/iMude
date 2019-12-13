<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body style= "background-color: #00ACEE;">
	<center>
		<h1>Login de Usuário</h1>
	</center>
	<form name="loginForm" method="get" action="/iMude/comprador-login">
       <div align= "center">
       		<p>Email: <input type="text" name="email"> </p>
       		<p>Senha: <input type="text" name="senha"> </p>
       		<p><input type="submit" value="Entrar"> </p>
       </div>
       <div align= "center">
       		<p><a href="cadastro.jsp">Não possui cadastro? Clique e cadastre-se!</a></p>
       </div>
    </form>
</body>
</html>