<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<style>
	body {
    	background-image: url("Files/cliente.jpg");
    	opacity: 0.9;
    	background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-position: cover;
  		background-size: cover;
	}
	.outer {
       border: 1px solid blue;
       background-color: #00ACEE;
       margin-left: 200px;
       margin-right: 200px;
       margin-top: 50px;
    }
</style>
<body>
	<div class="outer" align="center">
		<center>
			<h1>Login de Usuário</h1>
		</center>
		<form name="loginForm" method="get" action="/iMude/comprador-login">
	       <div align= "center">
	       		<p>Email: <input type="text" name="email"> </p>
	       		<p>Senha: <input type="password" name="senha"> </p>
	       		<p><input type="submit" value="Entrar"> </p>
	       </div>
	       <div align= "center">
	       		<p><a href="cadastro.jsp">Não possui cadastro? Clique e cadastre-se!</a></p>
	       </div>
	    </form>
	</div>
</body>
</html>