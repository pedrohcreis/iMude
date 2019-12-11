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
        <h2>
        	<a href="gerar-relatorio">Gerar Relatorio</a>
        </h2>
	</center>
    <div align="center">
        
        <table border="1" cellpadding="5">       
            <tr>
                <th>Tipo do Negócio: </th>
                <td>
                	<input type="text" name="tipo" size="45"
                			value="<c:out value='${imovel.tipo}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Data Inicial: </th>
                <td>
                	<input type="int" name="data_inicial" size="15"
                			value="<c:out value='${imovel.data_inicial}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Data Final: </th>
                <td>
                	<input type="int" name="periodo_final" size="15"
                			value="<c:out value='${imovel.periodo_final}' />"
                	/>
                </td>
            </tr>
        </table>
        
        </form>
    </div>	
</body>
</html>
