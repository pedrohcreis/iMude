<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="formatos.css">
	<title>Insert title here</title>
</head>
<body class="tela">
	<div class="imovel-cont" align="center">
		<form action="new" method="post">
			<tr>
				<img src="Files/casa1.jpg" width="600" height="360">
				<br/>
				<td>descricao <out value="${imovel.descricao}" /></td>
				<br/>		
				<td>endereco <out value="${imovel.endereco}" /></td>
				<br/>
				<td>preco <out value="${imovel.endereco}" /></td>
				<br/>
			</tr>
		</form>
	</div>
</body>
</html>