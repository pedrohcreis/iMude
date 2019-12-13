<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de Gerenciamento de Visitas</title>
</head>
<body>
	<style>
	.outer {
       border: 1px solid blue;
       background-color: #00ACEE;
    }
	</style>
	<div align="center" class="outer">
		<center>
		<h1>Gerenciamento de Visitas</h1>
		</center>
	</div>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista das Visitas</h2></caption>
            <tr>
                <th>ID</th>
                <th>Data</th>
                <th>Horario</th>
                <th>idImovel</th>
                <th>idCorretor</th>
                <th>idComprador</th>
                <th>idLocatario</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="visita" items="${listVisita}">
                <tr>
                    <td><c:out value="${visita.id}" /></td>
                    <td><c:out value="${visita.data}" /></td>
                    <td><c:out value="${visita.horario}" /></td>
                    <td><c:out value="${visita.idImovel}" /></td>
                    <td><c:out value="${visita.idCorretor}" /></td>
                    <td><c:out value="${visita.idComprador}" /></td>
                    <td><c:out value="${visita.idLocatario}" /></td>
                    <td>
                    	<a href="/iMude/visitas-edit?id=<c:out value='${visita.id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="/iMude/visitas-delete?id=<c:out value='${visita.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <a href="area_do_corretor.jsp"><button type="button" class="button">Voltar</button></a>
</body>
</html>
