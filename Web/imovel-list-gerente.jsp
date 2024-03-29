<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de Gerenciamento de Imóveis</title>
</head>
<body>

<style>
	.outer {
       border: 1px solid blue;
       background-color: #00ACEE;
    }
	</style>
	<div align="center" class="outer">
		<h1 class="title">Gerenciamento de Imóveis</h1>
		<h2>
        	<a href="/iMude/imoveis-new-gerente">Adicionar Novo Imóvel</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="/iMude/imoveis-list-gerente">Listar Todos Imóveis</a>
        	
        </h2>
	</div>

    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista de Imóveis</h2></caption>
            <tr>
                <th>ID</th>
                <th>Preço</th>
                <th>Endereço</th>
                <th>Status</th>
                <th>Descrição</th>
                <th>Foto</th>
                <th>Tipo</th>
                <th>Data Inicial</th>
                <th>Data Final</th>
            </tr>
            <c:forEach var="imovel" items="${listImovel}">
                <tr>
                    <td><c:out value="${imovel.id}" /></td>
                    <td><c:out value="${imovel.preco}" /></td>
                    <td><c:out value="${imovel.endereco}" /></td>
                    <td><c:out value="${imovel.status}" /></td>
                    <td><c:out value="${imovel.descricao}" /></td>
                    <td><c:out value="${imovel.foto}" /></td>
                    <td><c:out value="${imovel.tipo}" /></td>
                    <td><c:out value="${imovel.dataInicial}" /></td>
                    <td><c:out value="${imovel.dataFinal}" /></td>
                    <td>
                    	<a href="/iMude/imoveis-edit?id=<c:out value='${imovel.id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="/iMude/imoveis-delete?id=<c:out value='${imovel.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
            <a href="area_do_gerente.jsp"><button type="button" class="button">Voltar</button></a>
        </table>
    </div>	
</body>
</html>
