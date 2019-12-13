<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="formatos.css">
	<title>Detalhes Imovel</title>
</head>
<body style="background-color: #BBDEFD">
	<style>
		.texto {
			background-color: #FFFF;
			width: 904px;
			margin-top: 20px;
			padding-left: 5px;
			padding-right: 5px;
		}
		.titulo {
			background-color: #2196F3;
			width: 900px;
			height: auto;
   	    	margin: 0 auto;
    		padding: 2px;
    		position: relative;
    		font-size: 20px;
		}
		.outer2 {
	       border: 1px solid blue;
	       background-color: #00ACEE;
	       margin-left: 390px;
	       margin-right: 390px;
	       margin-top: 20px;
	       width: 350px;
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
	<div class="" align="center">
		<img src="Files/casa${imovel.id}.jpg" width="830" height="500">
		<div class="texto" align="left">
			<div class="titulo" align="center">
				<p><b>Descrição do imóvel:</b></p>
			</div>
			<p><c:out value="${imovel.descricao}" /></p>
			<div class="titulo" align="center">
				<p><b>Endereço:</b></p> 
			</div>
			<p><c:out value="${imovel.endereco}" /></p>
			<div class="titulo" align="center">
				<p><b>Preço: </b></p> 
			</div>
			<p><c:out value="R$ ${imovel.preco}" /></p>
		</div>
	</div>
	<div class="outer2" align="center">
		</br></br>
		<a href="visita-form.jsp"><button class="button" type="button">Agendar Visita</button></a>
		</br></br>
		<a href="/iMude/imoveis-list-aluguel"><button class="button" type="button">Fechar Negócio</button></a>
		</br></br>
	</div>
</body>
</html>