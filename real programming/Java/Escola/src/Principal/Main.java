package Principal;

import Entidades.Aluno;
import Entidades.Professor;
import Entidades.Turma;

/**
 * Classe principal do projeto, apenas para testes
 * @author fernando_paladini
 *
 */
public class Main {

	/**
	 * Método inicializador do projeto, apenas para testes.
	 * @param args
	 */
	public static void main(String[] args) {
		
		
		/*
		 * 
		 *                             TESTE DA CLASSE PROFESSOR
		 * 
		 */
		Professor pf = new Professor("Daniel");
		
		// Adiciona novas disciplinas
		pf.adicionarDisciplina("POO");
		pf.adicionarDisciplina("Orientacao a objetos");
		
		// Retorna disciplinas existentes
		System.out.println("Disciplinas:");
		pf.buscarDisciplinas();
		
		// Deleta uma das disciplinas
		pf.deletarDisciplina("POO");
		
		// Retorna disciplinas existentes
		System.out.println("\n Disciplinas:");
		pf.buscarDisciplinas();
		
		
		
		
		
		/*
		 * 
		 *                       TESTE DE ALUNO
		 * 
		 */
		Aluno a1 = new Aluno("Fernando");
		Aluno a2 = new Aluno("Guilherme");
		Aluno a3 = new Aluno("Jaquelinda");
		Aluno a4 = new Aluno("Vintage");
		
		// Cria um vetor com alunos para enviar depois à turma.
		Aluno[] vetorAlunos = new Aluno[3];
		vetorAlunos[0] = a2;
		vetorAlunos[1] = a3;
		vetorAlunos[2] = a4;
		
		
		
		
		/*
		 * 
		 *                        TESTE DA TURMA
		 * 
		 */
		
		Turma t1 = new Turma(pf);
		
		// Adiciona novos alunos
		t1.adicionarAluno(a1);
		t1.adicionarAlunos(vetorAlunos);
		
		// Retorna lista de alunos
		System.out.println("\n Alunos:");
		t1.buscarAlunos();

		// Não deu tempo de implementar o Excluir alunos da turma.
		
		
	}

}
