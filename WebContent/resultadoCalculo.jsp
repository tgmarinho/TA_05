<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resultado do Calculo</title>
</head>
<body>
	<h3 align="center">Resultado do Cálculo</h3>
	<table align="center" border="1">
		<tr>
			<td align="center" width="100">RA</td>
			<td align="center" width="100">MÉDIA</td>
			<td align="center" width="100">MENSAGEM</td>
		</tr>

		<%@ page import="java.util.*, br.edu.uniderp.*"%>

		<% 			
				Estatistica estatistica = (Estatistica) request.getSession().getAttribute("estatistica");
				List<Aluno> alunos = estatistica.getAlunos();
				
				for (Aluno aluno : alunos){
					%>
		<tr>
			<td align="center"><%=aluno.getRa() %></td>
			<td align="center"><%=aluno.getMedia() %></td>
			<td align="center"><%=aluno.getMensagem() %></td>
		</tr>
		<%  
				}
				%>
	</table>
	<table align="center" border="1">
		<tr>
			<td colspan="4" align="center"><b>Estatistica</b></td>
		</tr>
		<tr align="center">
			<td align="center" width="100">Aprovados</td>
			<td align="center" width="100">Exame</td>
			<td align="center" width="100">Reprovados</td>
			<td align="center" width="100">Media Geral</td>
		</tr>
		<tr align="center">
			<td align="center"><%=estatistica.getQdteAprovados()%></td>
			<td align="center"><%=estatistica.getQtdeExame()%></td>
			<td align="center"><%=estatistica.getQtdeReprovados()%></td>
			<td align="center"><%=estatistica.getQtdeMediaGeral()%></td>
		</tr>
	</table>
	
	
	<p align="center"><a href="<%=request.getContextPath() + "/cadastraNotas.jsp"  %>">Voltar Anterior</a></p>
	<p align="center"><a href="index.jsp">Inicio</a></p>
	
</body>
</html>