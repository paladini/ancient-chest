package Entidades;

import java.util.ArrayList;
import java.util.List;

/**
 * Classe para criar uma nova turma.
 * @author fernando_paladini
 *
 */
public class Turma {
	
	// Atributos
	private Professor professor;
	private List<Aluno> aluno;
	
	/**
	 * Construtor recebendo o parâmetro professor para uma turma.
	 * @param professor
	 */
	public Turma(Professor professor){
		setProfessor(professor);
		aluno = new ArrayList<Aluno>();
	}
	
	/**
	 * Adiciona um novo aluno na turma.
	 * @param adicionarAluno Novo aluno a ser adicionado.
	 */
	public void adicionarAluno(Aluno adicionarAluno){
		aluno.add(adicionarAluno);
	}
	
	/**
	 * Adiciona vários alunos na turma.
	 * @param alunos
	 */
	public void adicionarAlunos(Aluno[] alunos){
		for (int i = 0; i < alunos.length; i++){
			aluno.add(alunos[i]);
		}
	}
	
	/**
	 * Retorna lista de alunos da turma.
	 */
	public void buscarAlunos(){
		for (int i = 0; i < aluno.size(); i++){
			System.out.println(aluno.get(i).getNome());			
		}
	}
	
	@Override
	public String toString() {
		return "Turma [professor=" + professor + ", aluno=" + aluno
				+ ", getProfessor()=" + getProfessor() + ", getAluno()="
				+ getAluno() + "]";
	}

	public Professor getProfessor() {
		return professor;
	}

	public void setProfessor(Professor professor) {
		this.professor = professor;
	}

	public List<Aluno> getAluno() {
		return aluno;
	}

	public void setAluno(List<Aluno> aluno) {
		this.aluno = aluno;
	}
}
