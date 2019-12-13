<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
</head>
<style>
	body {
    	background-image: url("Files/cas.jpg");
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
			<h1>Cadastro de Usuário</h1>
		</center>
		<form name="cadastroForm" method="post" action="/iMude/comprador-insert">
	       <div align= "center">
	       		<p>Nome: <input type="text" name="nome"> </p>
	       		<p>Senha: <input type="password" name="senha"> </p>
	       		<p>Email: <input type="text" name="email"> </p>
	       		<p>CPF: <input type="text" name="CPF"> </p>
	       		<p><input type="submit" value="Finalizar"> </p>
	       </div>
	    </form>
	</div>
</body>
</html>