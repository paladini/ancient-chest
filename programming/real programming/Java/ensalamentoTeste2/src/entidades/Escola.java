package entidades;

import java.util.ArrayList;
import java.util.HashMap;

import antigas.DiaSemana;

public class Escola {

	// Atributos
	ArrayList<Professor> professor = new ArrayList<Professor>();
	ArrayList<Sala> sala = new ArrayList<Sala>();
	ArrayList<Turma> turma = new ArrayList<Turma>();
	ArrayList<DiaSemana> dia = new ArrayList<DiaSemana>();
	
	HashMap<Integer,Aula[][]> hashmap = new HashMap();
			
	// Construtores
	public Escola() {
		super();
		
		// Hashmap
		//Integer rowNumber = 1;
		//Aula[][] aula = hashmap.get(rowNumber);
		//aula[5][3] = null;
	}

	
	// Métodos
	public void adicionarProfessor(Professor p1){
		if (p1 != null){
			professor.add(p1);			
		}
	}
	
	public void adicionarSala(Sala s1){
		if (s1 != null){
			sala.add(s1);
		}
	}
	
	public void adicionarTurma(Turma t1){
		if (t1 != null){
			turma.add(t1);
		}
	}
	
//	public void adicionarDia(DiaSemana d1){
//		if (d1 != null){
//			dia.add(d1);
//		}
//	}
	
	
	
	
	public ArrayList<Professor> getProfessor() {
		return professor;
	}

	public HashMap<Integer, Aula[][]> getHashmap() {
		return hashmap;
	}


	public void setHashmap(HashMap<Integer, Aula[][]> hashmap) {
		this.hashmap = hashmap;
	}


	public void setProfessor(ArrayList<Professor> professor) {
		this.professor = professor;
	}

	public ArrayList<Sala> getSala() {
		return sala;
	}

	public void setSala(ArrayList<Sala> sala) {
		this.sala = sala;
	}

	public ArrayList<Turma> getTurma() {
		return turma;
	}

	public void setTurma(ArrayList<Turma> turma) {
		this.turma = turma;
	}

	public ArrayList<DiaSemana> getDia() {
		return dia;
	}

	public void setDia(ArrayList<DiaSemana> dia) {
		this.dia = dia;
	}

	
	
}
