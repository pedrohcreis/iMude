<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de Gerenciamento de Relatório</title>
</head>

<style>
	body {
    	background-image: url("Files/relatorio.jpg");
    	opacity: 1;
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
		<h1 class="title">Gerenciamento de Relatório</h1>
	</div>
	
	<style>
	.outer2 {
       border: 1px solid blue;
       background-color: #00ACEE;
       margin-right: 250px;
       margin-top: 20px;
       width: 600px;
    }
    .button {
	  background-color: rgb(255,0,0); /* Green */
	  border: none;
	  color: white;
	  padding: 15px 32px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 24px;
	}
    </style>
    
	

        <form name="cadastroForm" method="post" action="/iMude/gerarRelatorio">
       <p class="outer2">Tipo de negócio: <input type="radio" name="tipo" value="compra" checked> Compra
	  									  <input type="radio" name="tipo" value="aluguel"> Aluguel </p>
       <p class="outer2">Status do negócio: <input type="radio" name="status" value="disponivel" checked> Disponível
	  									    <input type="radio" name="status" value="ativo"> Ativo
	  									    <input type="radio" name="status" value="em andamento"> Em Andamento
	  									    <input type="radio" name="tipo" value="encerrado"> Encerrado </p>
       <p class="outer2">Data Inicial: <input type="text" name="dataInicial"> </p>
       <p class="outer2">Data Final: <input type="text" name="dataFinal"> </p>
       <p><input class = "button" type="submit" value="Gerar Relatorio"> </p>
    </form>
    
    <a href="area_do_gerente.jsp"><button type="button" class="button">Voltar</button></a>
</body>
</html>
