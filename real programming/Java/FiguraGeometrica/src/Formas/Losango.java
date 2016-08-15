package Formas;
import heranca.Quadrilatero;

public class Losango extends Quadrilatero{
	
	// Atributos
	private double diagonal1;
	private double diagonal2;
	
	// Construtores
	public Losango() {
		super();
	}
	
	public Losango(String nome, int qtdLados) {
		super(nome, qtdLados);
	}
	
	public Losango(String nome) {
		super(nome);
	}

	public Losango(double diagonal1, double diagonal2) {
		super();
		this.diagonal1 = diagonal1;
		this.diagonal2 = diagonal2;
	}
	
	// Métodos
	/**
	 * Calcula área do losango.
	 * resultado = Diagonal1 * Diagonal2 / 2
	 */
	public void calcularArea() {
		double resultado = (getDiagonal1() * getDiagonal2()) / 2;
		setArea(resultado);
	}
	
	public double getDiagonal1() {
		return diagonal1;
	}
	public void setDiagonal1(double diagonal1) {
		this.diagonal1 = diagonal1;
	}
	public double getDiagonal2() {
		return diagonal2;
	}
	public void setDiagonal2(double diagonal2) {
		this.diagonal2 = diagonal2;
	}
	

}
