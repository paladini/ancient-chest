package model;
import java.util.ArrayList;
import java.util.List;

/*
 * 
 *                ALTERAR E ADICIONAR COMANDOS DO BANCO DE DADOS                             
 *                                06 / 03 / 2013
 * 
 *  # Colunas do banco de dados:
 *    - NomeDisciplina 
 *    - PrecisaComputadores? 
 * 
 */


public class Disciplina {
	
	private static List disciplina = new ArrayList<String>();
	private static boolean precisaComputadores;
	
	// Construtores
	public Disciplina(List disciplina, boolean precisaComputadores){
		
	}
	
	// Métodos
	public static void adicionar(String nomeDisciplina){
		disciplina.add(nomeDisciplina);
	}
	
	public static void remover(String nomeDisciplina){
		
		// Verifica se "nomeDisciplina" existe na lista disciplina
		if (disciplina.contains(nomeDisciplina)){
			
		}else{
			System.out.println("Disciplina não encontrada");
		}
	}
	
	// Getters and Setters
}
