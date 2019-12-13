<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de Cadastro de Visita</title>
</head>
<body>
	<center>
		<h1>Marque sua visita!</h1>
	</center>
    <div align="center">
    
	<form action="/iMude/visitas-insert" method="post">
        
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            			Marcar Visita
            	</h2>
            </caption>
            <tr>
                <th>Data: </th>
                <td>
                	<input type="text" name="data" size="45"
                			value="<c:out value='${visita.data}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Horario: </th>
                <td>
                	<input type="text" name="horario" size="45"
                			value="<c:out value='${visita.horario}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Marcar" />
            	</td>
            </tr>
        </table>
        
        </form>
    </div>	
</body>
</html>
