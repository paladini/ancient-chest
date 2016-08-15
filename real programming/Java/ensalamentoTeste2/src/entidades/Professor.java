package entidades;

import java.util.ArrayList;

import entidades.desnecessarios.Disciplina;

public class Professor {
	
	// Atributos
	private String nome;
	private int nAulas;
	private ArrayList<Disciplina> disciplinas = new ArrayList<Disciplina>();
	
	// Construtores
	public Professor(){
		this("Não informado", 0);
	}
	
	public Professor(String nome, int nAulas) {
		super();
		setNome(nome);
		setnAulas(nAulas);
	}
	
	// Métodos
	public void adicionarDisciplina(Disciplina disciplina){
		this.disciplinas.add(disciplina);
	}
	
	public void adicionarDisciplina(Disciplina[] disciplina){
		for (int i = 0; i < disciplinas.size(); i++){
			this.disciplinas.add(disciplina[i]);
		}
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getnAulas() {
		return nAulas;
	}
	public void setnAulas(int nAulas) {
		this.nAulas = nAulas;
	}

	public ArrayList<Disciplina> getDisciplinas() {
		return disciplinas;
	}

	public void setDisciplinas(ArrayList<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}

	@Override
	public String toString() {
		return "Professor [nome=" + nome + ", nAulas=" + nAulas
				+ ", disciplinas=" + disciplinas + "]";
	}
	
	

}
