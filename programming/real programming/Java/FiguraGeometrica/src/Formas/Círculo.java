package Formas;

import heranca.FiguraGeometrica;

public class Círculo extends FiguraGeometrica {
	
	// Atributos
	private double raio;
	
	// Construtores
	/**
	 * Construtor do circulo vazio.
	 */
	public Círculo ( ) {
		super();
	}

	/**
	 * Construtor do círculo recebendo parametro raio.
	 * @param raio
	 */
	public Círculo(double raio){
		super();
		this.raio = raio;
	}
	
	/**
	 * Construtor do círculo recebendo parâmetro nome e raio
	 * @param nome
	 * @param raio
	 */
	public Círculo(String nome, double raio) {
		super(nome);
		this.raio = raio;
	}

	// Métodos
	/**
	 * Calcula a área do círculo.
	 * resultado = PI * raio²
	 */
	public void calcularArea() {
		double resultado = 3.14 * (Math.pow(getRaio(), 2));
		setArea(resultado);
	}
	
	public double getRaio() {
		return raio;
	}

	public void setRaio(double raio) {
		this.raio = raio;
	}	

}
