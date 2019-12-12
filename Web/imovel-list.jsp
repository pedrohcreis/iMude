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
	<style>
	.title {
		background-image: url("Files/aluguel.jpg");
    	opacity: 0.7;
    	background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-position: cover;
  		background-size: cover;
	}
	</style>
	<div class="title" align="center">
		<div align="center" style="background-color: #00ACEE">
			<h1>Im�veis dispon�veis</h1>
		</div>
		<p color="black">Nesta se��o est�o listados todos os im�veis dispon�veis para loca��o cadastrados em nosso sistema. Caso tenha interesse em algum im�vel, clique no bot�o <b>mais detalhes</b> para ver maiores detalhes sobre o im�vel e clique em alugar para iniciar sua solicita��o.</p>
		 </br>
	</div>
	<style>
	.outer {
	   background-color: #FFFFFF;
       border: 1px solid black;
       margin-top: 5px;
       margin-bottom: 5px;
       margin-right: 350px;
       margin-left: 350px;
       }
	</style>
	<c:set var="count" value="1" scope="page" />
	<c:forEach var="imovel" items="${listImovel}">
		<div class="outer" align="center">
			</br>
			<tr>
				<img src="Files/casa${count}.jpg" width="400" height="240">
				</br>
				<td><b>Pre�o:</b> R$</td>
	    		<td><c:out value="${imovel.preco}" /></td>
	    		</br>
	    		<td><b>Endere�o:</b></td>
	    		<td><c:out value="${imovel.endereco}" /></td>
	    		</br>
	    		<td><b>Descri��o:</b></td>
	    		<td><c:out value="${imovel.descricao}" /></td>
	    		</br>	
	    		</br>
    			<a href="imovel.jsp"><button type="button" style="background-color: #008CBA;">Mais Detalhes</button></a>
	    		</br>	
	    		</br>
    		</tr>
    		<c:set var="count" value="${count + 1}" scope="page" />
			</form>
		</div>
    </c:forEach>
    </div>
</body class="tela">
</html>