package br.edu.uniderp;

import java.util.ArrayList;
import java.util.List;

public class Estatistica {

	private List<Aluno> alunos;
	private int qdteAprovados;
	private int qtdeReprovados;
	private int qtdeExame;
	private Double qtdeMediaGeral;
	
	public Estatistica(List<Aluno> alunos){
		this.setAlunos(new ArrayList<Aluno>(alunos));
	}
	
	
	public void doCalcEstatistica(){
		Double media;
		double n1 = 0;
		double n2 = 0;
		double mediaGeralAlunos = 0;
		
		for (Aluno aluno : alunos) {
			
			media = new Double(( aluno.getN1() + aluno.getN2() ) / 2);
			aluno.setMedia(media);
			
			if(media <= 3) {
				setQtdeReprovados(getQtdeReprovados() + 1);
				aluno.setMensagem("Reprovado");
			} else if (media < 7) {
				setQtdeExame(getQtdeExame() + 1);
				aluno.setMensagem("Exame");
			} else if (media >= 7) {
				setQdteAprovados(getQdteAprovados() + 1);
				aluno.setMensagem("Aprovado");
			}
			
			n1 = (n1 + aluno.getN1());
			n2 = (n2 + aluno.getN2());
			
			// somo a média de todos os alunos e armazeno em mediaGeralAlunos);
			mediaGeralAlunos = (mediaGeralAlunos + aluno.getMedia());
			
			
		}
		// armazeno na qtdemediaGeral a a médias do alunos / qtde de Alunos
		setQtdeMediaGeral(mediaGeralAlunos/alunos.size()); 
			
	}

	//getters and setters
	
	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}

	public List<Aluno> getAlunos() {
		return alunos;
	}

	public Integer getQtdeExame() {
		return qtdeExame;
	}

	public void setQtdeReprovados(int qtdeReprovados) {
		this.qtdeReprovados = qtdeReprovados;
	}

	public int getQtdeReprovados() {
		return qtdeReprovados;
	}

	public void setQtdeExame(int qtdeExame) {
		this.qtdeExame = qtdeExame;
	}

	public void setQdteAprovados(Integer qdteAprovados) {
		this.qdteAprovados = qdteAprovados;
	}

	public Integer getQdteAprovados() {
		return qdteAprovados;
	}


	public void setQtdeMediaGeral(Double qtdeMediaGeral) {
		this.qtdeMediaGeral = qtdeMediaGeral;
	}


	public Double getQtdeMediaGeral() {
		return qtdeMediaGeral;
	}


	public void setQdteAprovados(int qdteAprovados) {
		this.qdteAprovados = qdteAprovados;
	}
	
}