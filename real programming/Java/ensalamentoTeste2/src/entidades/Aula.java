package entidades;

import antigas.DiaSemana;


public abstract class Aula {
	
	static Professor professor;
	static Sala sala;
	static Turma turma;
	static DiaSemana dia;
	
	public Aula(Professor p1,
			Sala s1, Turma t1) {
		super();
		professor = p1;
		sala = s1;
		turma = t1;
	}
	
	public Aula(Professor p1,
			Sala s1, Turma t1, DiaSemana d1) {
		super();
		professor = p1;
		sala = s1;
		turma = t1;
		dia = d1;
	}

	public static void adicionarTudo(Professor p1, Sala s1, Turma t1){
		setProfessor(p1);
		setSala(s1);
		setTurma(t1);
	}
	
	public Professor getProfessor() {
		return professor;
	}
	public static void setProfessor(Professor p1) {
		professor = p1;
	}
	public Sala getSala() {
		return sala;
	}
	public static void setSala(Sala s1) {
		sala = s1;
	}
	public Turma getTurma() {
		return turma;
	}
	public static void setTurma(Turma t1) {
		turma = t1;
	}

	
	public DiaSemana getDia() {
		return dia;
	}

	public void setDia(DiaSemana d1) {
		dia = d1;
	}

	public static void verificaProfessor(Professor professor, DiaSemana[] dia){
		for (int i = 0; i < dia.length; i++){
			if (dia[i] != null ){
				
			}			
		}
	}

}
