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
	 * Padrão:
	 * Nome: "Não informado"
	 */
	Aluno(){
		this("Não informado");
	}
	
	/**
	 * Construtor para aluno recebendo parâmetro "nome".
	 * @param nome Nome do aluno.
	 */
	public Aluno(String nome){
		setNome(nome);
	}

	// Métodos
	/**
	 * Verifica se o nome não está vazio ou em branco.
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
