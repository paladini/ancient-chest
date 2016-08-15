package main;

import Formas.Círculo;
import Formas.Losango;
import Formas.Octogono;
import Formas.Quadrado;
import Formas.Triangulo;

public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		// Criando um quadrado. Passando nome e lado.
		Quadrado quadrado = new Quadrado("QuadradoTeste", 5.0);
		quadrado.setQtdLados(4);
		quadrado.calcularArea();
		System.out.println("");
		System.out.println(quadrado.getNome() );
		System.out.println(quadrado.getArea() );

		// Criando um losango. Passando nome e numero de lados.
		Losango losango = new Losango("Losango", 4);
		losango.setDiagonal1(5.0);
		losango.setDiagonal2(3.0);
		losango.setQtdLados(4);
		losango.calcularArea();
		System.out.println("");
		System.out.println( losango.getNome() );
		System.out.println( losango.getArea() );

		// Criando um triangulo. Passando nome, altura e base.
		Triangulo triangulo = new Triangulo("Triangulo", 5.0, 3.0);
		triangulo.setQtdLados(3);
		triangulo.calcularArea();
		System.out.println("");
		System.out.println( triangulo.getNome() );
		System.out.println( triangulo.getArea() );	

		// Criando um circulo. Passando nome e raio
		Círculo circulo = new Círculo("CirculoTeste", 5.0);
		circulo.calcularArea();
		System.out.println("");
		System.out.println(circulo.getNome());
		System.out.println("Raio: " +circulo.getRaio());
		System.out.println(circulo.getArea());
		
		// Criando um octogono e calculando a sua área.
		Octogono o1 = new Octogono();
		o1.setUmaMedidaQualquer(10);
		o1.calcularArea();
		System.out.println(o1.getArea());

	}

}
