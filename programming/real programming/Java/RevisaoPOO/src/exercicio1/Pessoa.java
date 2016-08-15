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
	 * Nome padr�o: "N�o informou o nome"
	 */
	public Pessoa(){
		this("Nao informou o nome");
	}
	
	/**
	 * Construtor completo que recebe o par�metro "nome" da Pessoa. 
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
	 * Define um novo nome e verifica se o nome est� vazio.
	 * @param nome
	 */
	public void setNome(String nome) {
		// Verifica se nome n�o est� vazio
		if (nome.length() > 0 && nome != " "){
			this.nome = nome;			
		}
	}
	
	
	

}
