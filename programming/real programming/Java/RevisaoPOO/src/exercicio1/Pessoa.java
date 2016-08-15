package exercicio1;

/**
 * Classe para instanciar um novo objeto pessoa.
 * @author fernando_paladini
 *
 */
public class Pessoa {

	// Atributos	
	private String nome;

	// Construtores
	/**
	 * Construtor vazio.
	 * Nome padrão: "Não informou o nome"
	 */
	public Pessoa(){
		this("Nao informou o nome");
	}
	
	/**
	 * Construtor completo que recebe o parâmetro "nome" da Pessoa. 
	 * @param nome Nome Completo da Pessoa
	 */
	public Pessoa(String nome){
		setNome(nome);
	}
	
	// Getters and setters
	public String getNome() {
		return nome;
	}

	/**
	 * Define um novo nome e verifica se o nome está vazio.
	 * @param nome
	 */
	public void setNome(String nome) {
		// Verifica se nome não está vazio
		if (nome.length() > 0 && nome != " "){
			this.nome = nome;			
		}
	}
	
	
	

}
