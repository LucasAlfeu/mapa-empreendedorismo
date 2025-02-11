package ufrrj.si.model;

public class Usuario {
	private int idUsuario;
	private String nome;
	private String usuario;
	private String senha;
	private String cargo;
	private String identificacao;
	private String tipo;
	private String curso;
	private String email;
	
	public Usuario(){
		
	}
	public Usuario(String nome, String usuario, String senha, String cargo, String identificacao, String tipo,
			String curso, String email) {
		this.nome = nome;
		this.usuario = usuario;
		this.senha = senha;
		this.cargo = cargo;
		this.identificacao = identificacao;
		this.tipo = tipo;
		this.curso = curso;
		this.email = email;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public String getIdentificacao() {
		return identificacao;
	}
	public void setIdentificacao(String identificacao) {
		this.identificacao = identificacao;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	
	
}
