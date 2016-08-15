package entidades.desnecessarios;

public class Curso {
	
	// Atributos
	private String nome;

	// Construtores
	public Curso(String nome) {
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
		return "Curso [nome=" + nome + "]";
	}

}
