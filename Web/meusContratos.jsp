<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="formatos.css">
    <title>Meus Contratos</title>
</head>
<style>
	body {
    	background-image: url("Files/contrato.jpg");
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
		<h1 class="title">Meus Contratos</h1>
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
	  font-size: 20px;
	}
	.outer3 {
		border: 1px solid black;
		background-color: #FFFFFF;
		margin-right: 400px;
		margin-left:400px;
		margin-top: 20px;
		margin-bottom: 20px;
		width: 300px;
		height: auto;
   	    margin: 0 auto;
    	padding: 20px;
    	position: relative;
	}
    </style>
	<div align="center" class="outer2">
		</br>
		<c:forEach var="contrato" items="${listContrato}" >
			<div align="center" class="outer3">
				<input type="checkbox"><td>Código do Contrato: </td>
				<td><c:out value="${contrato.id}" /></td>
				<ul>
					<li>
						<td>Data de Expiração: </td>
						<td><c:out value="${contrato.data}" /></td>
					</li>
					<li>
						<td>Descrição: </td>
						<td><c:out value="${contrato.descricao}" /></td>
					</li>
				</ul>
			</div>
			</br>
		</c:forEach>
		<a href="index.jsp"><button type="button" class="button">Cancelar Contrato</button></a>
		</br></br>
		<a href="index.jsp"><button type="button" class="button">Renovar Contrato</button></a>
		</br></br></br>
	</div>
</body>
</html>