package br.edu.uniderp;

public class Aluno {

	private String ra;
	private String mensagem;
	private Double n1;
	private Double n2;
	private Double media;
	
	public Aluno(String ra, Double n1, Double n2) {
		this.ra = ra;
		this.n1 = n1;
		this.n2 = n2;
	}

	public String getRa() {
		return ra;
	}
	

	public Double getN1() {
		return n1;
	}


	public Double getN2() {
		return n2;
	}

	public void setMedia(Double media) {
		this.media = media;
	}

	public Double getMedia() {
		return media;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	public String getMensagem() {
		return mensagem;
	}

}
