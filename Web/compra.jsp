<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body {
    	background-image: url("Files/compra.jpg");
    	opacity: 0.7;
    	background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-position: cover;
  		background-size: cover;
	}
</style>
<body class="tela">
	<style>
	.outer {
       border: 1px solid blue;
       background-color: #00ACEE;
    }
	</style>
	<div align="center" class="outer">
		<h1 class="title">Compra</h1>
	</div>
	<style>
	.quest_box{
		border: 1px solid blue;
        background-color: #00ACEE;
        margin-top: 100px;
        margin-left: 400px;
        margin-right: 400px; 
        margin-bottom: 100px;
	}
	.button {
	  background-color: #4CAF50; /* Green */
	  border: none;
	  color: white;
	  padding: 15px 32px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
}
	</style>
	<div align="center" class="quest_box">
		<h2>Qual a sua intenção?</h2>
    	<a href="/iMude/imoveis-list-compra"><button class="button" type="button">Comprar um Imóvel</button></a>
    	</br>
    	</br>
    	<a href="/iMude/contratos"><button class="button" type="button">Meus Contratos</button></a>
    	</br>
    	</br>
    	</br>
    	</br>
    	</br>
	</div>
</body>
</html>
