package Associação;

public class Pessoa {
	
	// Atributos
	private String nome;
	private Cachorro cachorro;
	
	
	// Construtores
	public Pessoa(String nome, Cachorro cachorro) {
		super();
		this.nome = nome;
		this.cachorro = cachorro;
	}
	public Pessoa(String nome) {
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
	public Cachorro getCachorro() {
		return cachorro;
	}
	public void setCachorro(Cachorro cachorro) {
		this.cachorro = cachorro;
	}
	
	

}
