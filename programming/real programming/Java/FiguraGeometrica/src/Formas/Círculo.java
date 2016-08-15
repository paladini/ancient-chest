package Formas;

import heranca.FiguraGeometrica;

public class C�rculo extends FiguraGeometrica {
	
	// Atributos
	private double raio;
	
	// Construtores
	/**
	 * Construtor do circulo vazio.
	 */
	public C�rculo ( ) {
		super();
	}

	/**
	 * Construtor do c�rculo recebendo parametro raio.
	 * @param raio
	 */
	public C�rculo(double raio){
		super();
		this.raio = raio;
	}
	
	/**
	 * Construtor do c�rculo recebendo par�metro nome e raio
	 * @param nome
	 * @param raio
	 */
	public C�rculo(String nome, double raio) {
		super(nome);
		this.raio = raio;
	}

	// M�todos
	/**
	 * Calcula a �rea do c�rculo.
	 * resultado = PI * raio�
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
