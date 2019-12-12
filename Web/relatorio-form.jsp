<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de Gerenciamento de Relatório</title>
</head>
<body>
	<center>
		<h1>Gerenciamento de Relatório</h1>
	</center>
    <div align="center">
        
        <form name="cadastroForm" method="post" action="/iMude/gerarRelatorio">
       <p>Tipo de negócio: <input type="text" name="tipo"> </p>
       <p>Status do negócio: <input type="text" name="status"> </p>
       <p>Data Inicial: <input type="text" name="data_inicial"> </p>
       <p>Data Final: <input type="text" name="data_final"> </p>
       <p><input type="submit" value="Gerar Relatorio"> </p>
    </form>
    </div>	
</body>
</html>
