<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de Gerenciamento de Imóveis</title>
</head>
<body>
	<center>
		<h1>Gerenciamento de Imóveis</h1>
        <h2>
        	<a href="/iMude/imoveis-new-gerente">Adicionar Novo Imóvel</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="/iMude/imoveis-list-gerente">Listar Todos Imóveis</a>
        	
        </h2>
	</center>
    <div align="center">
    
		<c:if test="${imovel != null}">
			<form action="/iMude/imoveis-update" method="post">
        </c:if>
        
        <c:if test="${imovel == null}">
			<form action="/iMude/imoveis-insert" method="post">
        </c:if>
        
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${imovel != null}">
            			Editar Imóvel
            		</c:if>
            		<c:if test="${imovel == null}">
            			Adicionar Novo Imóvel
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${imovel != null}">
        			<input type="hidden" name="id" value="<c:out value='${imovel.id}' />" />
        		</c:if>            
            <tr>
                <th>Preço: </th>
                <td>
                	<input type="text" name="preco" size="45"
                			value="<c:out value='${imovel.preco}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Endereco: </th>
                <td>
                	<input type="text" name="endereco" size="45"
                			value="<c:out value='${imovel.endereco}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Status: </th>
                <td>
                	<input type="text" name="status" size="15"
                			value="<c:out value='${imovel.status}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Descrição: </th>
                <td>
                	<input type="text" name="descricao" size="15"
                			value="<c:out value='${imovel.descricao}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Foto: </th>
                <td>
                	<input type="text" name="foto" size="15"
                			value="<c:out value='${imovel.foto}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Tipo: </th>
                <td>
                	<input type="text" name="tipo" size="15"
                			value="<c:out value='${imovel.tipo}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Data Inicial: </th>
                <td>
                	<input type="text" name="dataInicial" size="15"
                			value="<c:out value='${imovel.dataInicial}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Data Final: </th>
                <td>
                	<input type="text" name="dataFinal" size="15"
                			value="<c:out value='${imovel.dataFinal}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        
        </form>
    </div>	
</body>
</html>
