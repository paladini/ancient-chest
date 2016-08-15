package entidades.desnecessarios;

public class Disciplina {
	
	// Atributos
	private String nome;

	// Construtores
	public Disciplina(String nome) {
		super();
		this.nome = nome;
	}
	
	// Métodos
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public String toString() {
		return "Disciplina [nome=" + nome + "]";
	}

}
