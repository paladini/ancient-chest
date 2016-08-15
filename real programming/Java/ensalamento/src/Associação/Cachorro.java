package Associação;

public class Cachorro {
	
	// Atributos
	private String nome;
	private Pessoa dono;
	
	// Construtores
	public Cachorro(String nome) {
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

	public Pessoa getDono() {
		return dono;
	}

	public void setDono(Pessoa dono) {
		this.dono = dono;
	}
	
	
	

}
