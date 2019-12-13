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
</body>
</html>
