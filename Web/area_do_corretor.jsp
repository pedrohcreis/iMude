<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <!-- link rel="stylesheet" href="/formatos.css"-->
    <style type="text/css"> @import url("./formatos.css"); </style>
    <title>Tela inicial</title>
</head>
<style>
	body {
    	background-image: url("Files/area_do_corretor.jpg");
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
		<h1 class="title">Área do Corretor</h1>
	</div>
	
    <style>
	.outer2 {
       border: 1px solid blue;
       background-color: #00ACEE;
       margin-right: 350px;
       margin-top: 20px;
       width: 400px;
    }
    .button {
	  background-color: #4CAF50; /* Green */
	  border: none;
	  color: white;
	  padding: 15px 32px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 24px;
	}
    </style>
	<div align="center" class="outer2">
		<h2>Ações disponíveis</h2>
  		<a href="/iMude/visitas"><button type="button" class="button">Gerenciar Visitas</button></a>
        </br>
        </br>
        </br>
	</div>
	<a href="index.jsp"><button type="button" class="button">Voltar</button></a>
</body>
</html>