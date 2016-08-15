package Entidades;

/**
 * Classe para criar um novo aluno.
 * @author fernando_paladini
 *
 */
public class Aluno {
	
	// Atributos
	private String nome;
	
	// Construtores
	/**
	 * Construtor vazio para aluno.
	 * Padr�o:
	 * Nome: "N�o informado"
	 */
	Aluno(){
		this("N�o informado");
	}
	
	/**
	 * Construtor para aluno recebendo par�metro "nome".
	 * @param nome Nome do aluno.
	 */
	public Aluno(String nome){
		setNome(nome);
	}

	// M�todos
	/**
	 * Verifica se o nome n�o est� vazio ou em branco.
	 * @param nome Nome do aluno.
	 */
	public void setNome(String nome) {
		if (nome.length() != 0 && nome != " "){
			this.nome = nome;			
		}
	}
	
	public String getNome() {
		return nome;
	}

}
