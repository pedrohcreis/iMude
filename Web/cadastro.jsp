<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
</head>
<body style= "background-color: #00ACEE;">
	<center>
		<h1>Cadastro de Usuário</h1>
	</center>
	<form name="cadastroForm" method="post" action="/iMude/comprador-insert">
       <div align= "center">
       		<p>Nome: <input type="text" name="nome"> </p>
       		<p>Senha: <input type="text" name="senha"> </p>
       		<p>Email: <input type="text" name="email"> </p>
       		<p>CPF: <input type="text" name="CPF"> </p>
       		<p><input type="submit" value="Finalizar"> </p>
       </div>
    </form>
</body>
</html>