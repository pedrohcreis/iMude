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
<body class="tela">
	<c:set var="count" value="${imovel.id}" scope="page" />
	<div class="imovel-cont" align="center">
		<form action="new" method="post">
			<tr>
				<img src="Files/casa${imovel.id}.jpg" width="600" height="360">
				<br/>
				<td>descricao <c:out value="${imovel.descricao}" /></td>
				<br/>		
				<td>endereco <c:out value="${imovel.endereco}" /></td>
				<br/>
				<td>preco <c:out value="${imovel.endereco}" /></td>
				<br/>
			</tr>
		</form>
	</div>
</body>
</html>