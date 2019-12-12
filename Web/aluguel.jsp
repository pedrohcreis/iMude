<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="formatos.css">
    <title>Página Inicial</title>
</head>
<style>
	body {
    	background-image: url("Files/fundo_aluguel.jpg");
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
		<h1 class="title">Locação</h1>
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
    	<a href="imoveis-list.jsp"><button class="button" type="button">Alugar um Imóvel</button></a>
    	</br>
    	</br>
    	<a href="meusContratos.jsp"><button class="button" type="button">Meus Contratos</button></a>
    	</br>
    	</br>
    	</br>
    	</br>
    	</br>
	</div>
</body>
</html>