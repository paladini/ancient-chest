package main;

/**
 * Classe que gerencia objetos Pessoa.
 * @author fernando_paladini
 *
 */
public class GerenciaPessoa {
	
	// Atributos
	private Pessoa p;
	private int idade;
	
	// Construtor
	/**
	 * Construtor vazio.
	 */
	public GerenciaPessoa(){
		
	}
	
	// Métodos
	/**
	 * Mudar o nome do objeto Pessoa.
	 * @param nome
	 */
	public void mudarNomePessoa(String nome){
		p.setNome(nome);
	}

	// Getters and Setters
	public Pessoa getP() {
		return p;
	}

	public void setP(Pessoa p) {
		this.p = p;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}
	
	
	
	

}
