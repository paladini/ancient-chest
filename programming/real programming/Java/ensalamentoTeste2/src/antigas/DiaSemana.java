package antigas;

import entidades.desnecessarios.Turno;

public class DiaSemana {
	
	private String nomeDia;
	private Turno[] turno = new Turno[3];
	
// Talvez criar outra entidade para Horário
//	private Professor p;
//	private Sala s;
//	private Turno turno;
//	private Turma turma;
	
	public DiaSemana(String nomeDia) {
		super();
		this.nomeDia = nomeDia;
	}
	
	public Turno[] getTurno() {
		return turno;
	}

	public void setTurno(Turno[] turno) {
		this.turno = turno;
	}

	public String getNomeDia() {
		return nomeDia;
	}

	public void setNomeDia(String nomeDia) {
		this.nomeDia = nomeDia;
	}
}
