package valorreferencia;

public class Aluno {
	
	// Atributos
	private String nome;
	private int nota;
	
	// Construtores
	public Aluno(){
		
	}
	
	public Aluno(String nome, int nota) {
		super();
		this.nome = nome;
		this.nota = nota;
	}
	
	// Getters & Setters
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getNota() {
		return nota;
	}
	public void setNota(int nota) {
		this.nota = nota;
	}
	
}
