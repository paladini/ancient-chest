 package Formas;
import heranca.Poligono;

public class Triangulo extends Poligono{
	
	// Atributos
	private double altura;
	private double base;
	
	// Construtores
	/**
	 * Construtor vazio para Triangulo.
	 */
	public Triangulo(){
		super();
	}
	
	/**
	 * Construtor recebendo parâmetros altura e base para triangulo.
	 * @param altura
	 * @param base
	 */
	public Triangulo(double altura, double base){
		super();
		setAltura(altura);
		setBase(base);
	}
	
	/**
	 * Construtor recebendo parâmetros nome, altura e base para triangulo.
	 * @param nome
	 * @param altura
	 * @param base
	 */
	public Triangulo(String nome, double altura, double base){
		super(nome);
		setAltura(altura);
		setBase(base);
	}
	
	// Métodos
	/**
	 * Calcula área do triângulo.
	 * resultado = base * altura / 2
	 */
	public void calcularArea() {
		double resultado = (getBase() * getAltura()) / 2;
		setArea(resultado);
	}
	
	public double getAltura() {
		return altura;
	}
	
	public void setAltura(double altura) {
		this.altura = altura;
	}
	
	public double getBase() {
		return base;
	}
	
	public void setBase(double base) {
		this.base = base;
	}

}
