package br.edu.uniderp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;


public class CalculoNotasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalculoNotasServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int quantidadeLinhas = (Integer) request.getSession().getAttribute("qtdeFor");
		
		List<Aluno> alunos = new ArrayList<Aluno>();
		
		// Para cada linha busco o correspondente aluno ra1, ra2, ra3...raN
		for(int i = 0; i < quantidadeLinhas; i++) {
			String strRa = request.getParameter("ra"+i);
			String nota1 = request.getParameter("n1"+i);
			String nota2 = request.getParameter("n2"+i);
			double intNota1 = converterAsDouble(nota1);
			double intNota2 = converterAsDouble(nota2);
			// Crio um novo usuário com os dados recebidos da JSP, e adiciono na lista de Usuários
			alunos.add(new Aluno(strRa, intNota1, intNota2));
		}
		
		// Gero a estatistica para cada aluno da lista de alunos
		Estatistica estatistica = new Estatistica(alunos);
		estatistica.doCalcEstatistica();
	
		// armazeno na sessãao da requisição o objeto estatistica que será enviado para a página de resultado
		request.getSession().setAttribute("estatistica", estatistica);
		// com os resultados em mão redireciono o calculo para resultadoCalculo.jsp 
		response.sendRedirect("resultadoCalculo.jsp");
	
	}

	private double converterAsDouble(String nota) {
		double notaTipoDouble = 0;
		try {
			notaTipoDouble = Double.valueOf(nota);
			return notaTipoDouble;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return 0;
		
	}

}
