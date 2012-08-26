<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cálculo Média Alunos de TA</title>

<script type="text/javascript">

function verifica(form) {
	
	if (naoEhZeroNemLetraMuitoMenosCaracterEspecial(form.quantidadeAlunos.value)) {
		alert("Digite apenas números de 1 a 99, * Campo Obrigatório não deixe esse campo em branco!");
		form.quantidadeAlunos.select();
		return false;
	} else {
		return true;
	}
}

function naoEhZeroNemLetraMuitoMenosCaracterEspecial(valor) {
	var str = valor; // recebo o valor do formulário
	var patt1=/\D/g; // Verifica se é Letra ou caracter especial
	if(str=="0" ||  str == "" || str.match(patt1))
		return true;
	else 
		return false;
}

	
</script>

</head>
<body>

	<form onsubmit="return verifica(this)" action="cadastraNotas.jsp">
		<h1 align="center">Sistema de Cálculo de Notas de Provas - 1.0.0 beta</h1>
		<br><br>
		<h3 align="center" style="font-style: italic; color: red" >Olá Professor, Bem vindo ao Sistema de Calculo de Notas </h3>
		<p align="center">
			* Informe a quantidade de Alunos: <input type="text" maxlength="10" 
				name="quantidadeAlunos" /> <input type="submit" value="OK" />
		</p>
	</form>
	<br>
	<p align="center" style="color: blue">@tgmarinho - 8o Semestre - CC</p>

</body>
</html>