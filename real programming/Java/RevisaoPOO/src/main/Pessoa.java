package main;

public class Pessoa {
	
	// Atributos
	private String nome;
	private String altura;
	private int idade;
	
	// Construtores
	public Pessoa(){
		
	}
	
	public Pessoa(String nome, String altura) {
		super();
		this.nome = nome;
		this.altura = altura;
	}
	
	// Métodos
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getAltura() {
		return altura;
	}
	public void setAltura(String altura) {
		this.altura = altura;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}
	
}
