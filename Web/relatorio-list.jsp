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
		<h1 class="title">Relatório</h1>
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
	
	
	
	
    <div align="center">
        <table class = "outer2" border="1" cellpadding="7">
            <tr>
                <th>ID</th>
                <th>Preço</th>
                <th>Endereço</th>
                <th>Status</th>
                <th>Tipo</th>
                <th>DataInicial</th>
                <th>DataFinal</th>
            </tr>
            <c:forEach var="listRelatorio" items="${listRelatorio}">
                <tr>
                    <td><c:out value="${listRelatorio.id}" /></td>
                    <td><c:out value="${listRelatorio.preco}" /></td>
                    <td><c:out value="${listRelatorio.endereco}" /></td>
                    <td><c:out value="${listRelatorio.status}" /></td>
                    <td><c:out value="${listRelatorio.tipo}" /></td>
                    <td><c:out value="${listRelatorio.dataInicial}" /></td>
                    <td><c:out value="${listRelatorio.dataFinal}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    
    <a href="relatorio-form.jsp"><button type="button" class="button">Voltar</button></a>
</body>
</html>
