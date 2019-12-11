<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta charset="utf-8">
    <link rel="stylesheet" href="formatos.css">
	<title>Imóveis para Locação</title>
</head>
<body>
	<center>
		<h1>Imóveis disponíveis</h1>
	</center>
	<div align="center">
	<tr>
		<td>preco</td>
		<td>endereco</td>
		<td>descricao</td>
	</tr>
	<c:forEach var="imovel" items="${listImovel}">
    	<tr>
    		<td><c:out value="${imovel.preco}" /></td>
    		<td><c:out value="${imovel.endereco}" /></td>
    		<td><c:out value="${imovel.descricao}" /></td>
    	</tr>
    </c:forEach>
    </div>
</body>
</html>