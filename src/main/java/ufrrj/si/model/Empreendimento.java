package ufrrj.si.model;

public class Empreendimento {
	private int idEmpreendimento;
	private String ultimaAtualizacao;
	private Categoria categoria;
	private Ator ator;
	private Sugestao sugestao;
	
	public int getIdEmpreendimento() {
		return idEmpreendimento;
	}
	public void setIdEmpreendimento(int idEmpreendimento) {
		this.idEmpreendimento = idEmpreendimento;
	}
	public String getUltimaAtualizacao() {
		return ultimaAtualizacao;
	}
	public void setUltimaAtualizacao(String ultimaAtualizacao) {
		this.ultimaAtualizacao = ultimaAtualizacao;
	}
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	public Ator getAtor() {
		return ator;
	}
	public void setAtor(Ator ator) {
		this.ator = ator;
	}
	public Sugestao getSugestao() {
		return sugestao;
	}
	public void setSugestao(Sugestao sugestao) {
		this.sugestao = sugestao;
	}
}
