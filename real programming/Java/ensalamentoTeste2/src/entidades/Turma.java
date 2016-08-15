package entidades;

import entidades.desnecessarios.Curso;

public class Turma {
	
	// Atributos
	private String nome;
	private Curso curso;
	
	// Construtores
	public Turma() {
		this("Inválido", new Curso("Nome"));
	}
	
	public Turma(String nome, Curso curso) {
		super();
		this.nome = nome;
		this.curso = curso;
	}

	// Métodos
	public String toString() {
		return "Turma [nome=" + nome + ", curso=" + curso + ", getNome()="
				+ getNome() + ", getCurso()=" + getCurso() + "]";
	}
	
	public void adicionarCurso(Curso curso){
		setCurso(curso);
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}
	

}
