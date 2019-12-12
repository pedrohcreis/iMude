<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de Gerenciamento de Relatório</title>
</head>
<body>
	<center>
		<h1>Relatório</h1>
	</center>
    <div align="center">
        <table border="1" cellpadding="7">
            <tr>
                <th>ID</th>
                <th>Preço</th>
                <th>Endereço</th>
                <th>Status</th>
                <th>Tipo</th>
                <th>Data Inicial</th>
                <th>Data Final</th>
            </tr>
            <c:forEach var="imovel" items="${listRelatorio}">
                <tr>
                    <td><c:out value="${imovel.id}" /></td>
                    <td><c:out value="${imovel.preco}" /></td>
                    <td><c:out value="${imovel.endereco}" /></td>
                    <td><c:out value="${imovel.status}" /></td>
                    <td><c:out value="${imovel.tipo}" /></td>
                    <td><c:out value="${imovel.data_inicial}" /></td>
                    <td><c:out value="${imovel.data_final}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
