<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta charset="utf-8">
    <link rel="stylesheet" href="formatos.css">
	<title>Im�veis para Loca��o</title>
</head>
<body class="tela">
	<center>
		<h1>Im�veis dispon�veis</h1>
	</center>
	<c:forEach var="imovel" items="${listImovel}">
		<div align="center">
			</br>
			<tr>
				<td>Pre�o: R$</td>
	    		<td><c:out value="${imovel.preco}" /></td>
	    		</br>
	    		<td>Endere�o: </td>
	    		<td><c:out value="${imovel.endereco}" /></td>
	    		</br>
	    		<td>Descri��o: </td>
	    		<td><c:out value="${imovel.descricao}" /></td>
	    		</br>
	    		</br>
    		</tr>
		</div>
    </c:forEach>
    </div>
</body class="tela">
</html>