package Formas;

import heranca.Quadrilatero;

public class Quadrado extends Quadrilatero {
	
	// Atributos
	private double lado;
	
	// Construtores
	public Quadrado() {
		super();
	}
	
	public Quadrado(double lado) {
		super();
		this.lado = lado;
	}
	
	public Quadrado(String nome, double lado){
		super(nome);
		setLado(lado);
	}

	// Métodos
	public void calcularArea() {
		double resultado = Math.pow(getLado(),2);
		setArea(resultado);
	}
	
	public double getLado() {
		return lado;
	}

	public void setLado(double lado) {
		this.lado = lado;
	}

}
