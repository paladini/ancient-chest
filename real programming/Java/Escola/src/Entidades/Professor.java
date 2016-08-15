package Entidades;

import java.util.ArrayList;
import java.util.List;

/**
 * Classe para criar um novo professor.
 * @author fernando_paladini
 *
 */
public class Professor {
	
	// Atributos
	private String nome;
	private List<String> disciplina;
	
	// Construtores
	/**
	 * Construtor vazio para um professor.
	 * Valores padrão:
	 * Nome: Não informou
	 * Disciplina: Não informou
	 */
	public Professor(){
		this("Não informou");
	}
	
	/**
	 * Construtor com nome e disciplina para professor.
	 * @param nome Nome do professor
	 * @param disciplina Disciplina que o professor leciona
	 */
	public Professor(String nome){
		setNome(nome);
		disciplina = new ArrayList<String>(); 
	}
	
	// Métodos
	/**
	 * Adicionar apenas uma nova disciplina ao professor.
	 * @param nomeDisciplina
	 */
	public void adicionarDisciplina(String nomeDisciplina){
		if (nomeDisciplina.length() > 0 && nomeDisciplina != " "){
			disciplina.add(nomeDisciplina);			
		}
	}
	
	/**
	 * Adicionar várias disciplinas ao mesmo professor.
	 * @param nomeDisciplina
	 */
	public void adicionarDisciplina(String[] nomeDisciplina){
		for (int i = 0; i < nomeDisciplina.length; i++){
			if (nomeDisciplina[i].length() > 0 && nomeDisciplina[i] != " "){
				disciplina.add(nomeDisciplina[i]);			
			}
		}
	}
	
	/**
	 * Deletar disciplina.
	 * Busca pelo índice e depois exclui.
	 * @param nomeDisciplina
	 */
	public void deletarDisciplina(String nomeDisciplina){
		// Cria um vetor de Objects
		Object[] buscarDisciplina = disciplina.toArray();
		
		// Busca o nome da disciplina a ser removida e retorna o indice
		int indice = Util.procura(buscarDisciplina,nomeDisciplina);
		
		// Remover a disciplina de acordo com o índice
		disciplina.remove(indice);
		
	}
	
	/**
	 * Busca todas as disciplinas
	 */
	public void buscarDisciplinas(){
		for (int i = 0; i < disciplina.size(); i++){
			System.out.println(disciplina.get(i));			
		}
	}

	/**
	 * Verifica se o nome inserido está vazio ou em branco.
	 * @param nome
	 */
	public void setNome(String nome) {
		if (nome.length() != 0 && nome != " "){
			this.nome = nome;			
		}
	}
	
	public String getNome() {
		return nome;
	}

	public List<String> getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(List<String> disciplina) {
		this.disciplina = disciplina;
	}

}
