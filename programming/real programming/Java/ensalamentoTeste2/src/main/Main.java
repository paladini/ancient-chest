package main;

import antigas.DiaSemana;
import entidades.Aula;
import entidades.Escola;
import entidades.Professor;
import entidades.Sala;
import entidades.Turma;
import entidades.desnecessarios.Curso;
import entidades.desnecessarios.Disciplina;
import entidades.desnecessarios.Turno;
import genetica.Populacao;

public class Main {
	
	public static void main (String[] args){
	
		// Adicionando curso
		Curso curso1 = new Curso("Técnico em Informática");
		Curso curso2 = new Curso("Superior em Análise e Desenvolvimento de Sistemas");
		
		// Adicionando turma
		Turma turma1 = new Turma("pronatec", curso1);
		Turma turma2 = new Turma("graduacao", curso2);
		
		// Adicionando salas
		Sala g23 = new Sala("G23");
		Sala g24 = new Sala("G24");

		// Adicionando disciplinas
		Disciplina poo = new Disciplina("POO");
		Disciplina bd = new Disciplina("BD");

		// Adicionando professores e associando à disciplina
		Professor daniel = new Professor("Daniel",5);
		daniel.adicionarDisciplina(poo);
		Professor priscila = new Professor("Priscila",4);
		priscila.adicionarDisciplina(bd);

//		// Adicionando turno
//		Turno vespertino = new Turno("Vespertino");
		
		// Adicionado os dias da semana
//		DiaSemana[] diaSemana = new DiaSemana[4];
//		diaSemana[0] = new DiaSemana("Segunda-feira");
//		diaSemana[1] = new DiaSemana("Terça-feira");
//		diaSemana[2] = new DiaSemana("Quarta-feira");
//		diaSemana[3] = new DiaSemana("Quinta-feira");
//
//		// Testando associações
//		System.out.println(turma1);
//		System.out.println(daniel);
//		System.out.println("\n");
		
		// Adicionando dados à lista da escola
		Escola escola = new Escola();
		escola.adicionarProfessor(daniel);
		escola.adicionarProfessor(priscila);
		escola.adicionarTurma(turma1);
		escola.adicionarSala(g23);
		escola.adicionarSala(g24);
		
		// Gerar população
		Populacao.gerarPopulacao(escola);
		
		
		
		
		
		
		
	}
}
