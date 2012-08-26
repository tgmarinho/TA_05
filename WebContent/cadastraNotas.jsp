<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Notas</title>
</head>
<body>
<h3 align="center">Cadastro de Notas de Alunos de Tópicos Avançados</h3>
	<form action="CalculoNotasServlet" method="post">
		<table align="center" border="1">
			<tr>
				<td align="center">RA</td>
				<td align="center">N1</td>
				<td align="center">N2</td>
			</tr>

			<%
				String str = request.getParameter("quantidadeAlunos");
				
				if(str.toString().trim() == "0" || str.toString().trim() == "+"){
						
					response.sendRedirect("index.jsp");
					out.println("Não pode digitar 0 ou deixar o campo vazio, preencha com 1 até a quantidade de alunos que quiser");
					
				} else {
				
				int quantidadeAlunos = Integer.valueOf(str);
				int quantidadeLinhas=0;
						
				for (quantidadeLinhas = 0; quantidadeLinhas < quantidadeAlunos; quantidadeLinhas++) {
			%>
			<!-- Crio o nome dinamicamente para ra, n1 e n2 -->
			<tr>
				<td><input type="text" name="ra<%=quantidadeLinhas%>" /></td>
				<td><input type="text" name="n1<%=quantidadeLinhas%>" /></td>
				<td><input type="text" name="n2<%=quantidadeLinhas%>" /></td>
			</tr>
			<%
				}
				request.getSession().setAttribute("qtdeFor", quantidadeLinhas);
				//request.setAttribute("qtdeFor", quantidadeLinhas);
				}
			%>
			<td colspan="3" rowspan="1"><input type="submit" value="Calcular as Notas" /> </td>
			
		</table>
	</form>

	<p align="center"><a href="index.jsp">Inicio</a></p>

</body>
</html>