package model;

public class Professor {
	
	private String nome;
	private Disciplina disciplina;
	
	// Construtores
	public Professor(String nome){
		 
	}
	
	public Professor(String nome, Disciplina disciplina){
		
	}
	
	// Métodos
	
	
	// Getters and Setters 
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		if (nome.length() == 0){
			if (nome == " "){
				
			}
		}else{
			this.nome = nome;			
		}
	}

	public Disciplina getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}
}
