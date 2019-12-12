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
    	background-image: url("Files/home.jpg");
    	opacity: 0.7;
    	background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-position: cover;
  		background-size: cover;
	}
</style>
<body>
	<style>
	.outer {
       border: 1px solid blue;
       background-color: #00ACEE;
    }
	</style>
	<div align="center" class="outer">
		<h1 class="title">Bem-vindo ao Sistema iMude</h1>
	</div>
	<style>
	.outer2 {
       border: 1px solid blue;
       background-color: #00ACEE;
       margin-right: 350px;
       margin-left: 350px;
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
		<h2>Veja nossos serviços</h2>
  		<a href="aluguel.jsp"><button type="button" class="button">Imóveis para Aluguel</button></a>
        </br>
        </br>
        <a href="compra.jsp"><button type="button" class="button">Imóveis para Compra</button></a>
        </br>
        </br>
        </br>
	</div>
	<style>
	.outer3 {
       border: 1px solid gray;
       background-color: #C0C0DA;
       margin-right: 350px;
       margin-left: 350px;
       margin-top: 20px;
       margin-bottom: 20px;
       width: 400px;
    }
    </style>
    <div align="center" class="outer3">
	    <h2>Área dos Usuários</h2>
	    <p style="font-size: 20px;"><a href="comprador.jsp">Área do Cliente</a></p>
	    <p style="font-size: 20px;"><a href="corretor.html">Área do Corretor</a></p>
	    <p style="font-size: 20px;"><a href="area_do_gerente.jsp">Área do Gerente</a></p>
    </div>
</body>
</html>