package main;

public class Main {
	public static void main(String[] args){
		
		Pessoa p = new Pessoa();
		p.setNome("Jo�o");
		Pessoa p2 = p;
		p.setNome("Maria");
		System.out.println("Nome atual: " +p2.getNome());
		
		Pessoa p3 = p2;
		p3.setNome("Jus�");
		System.out.println("Nome atual: " +p.getNome());
		
	}
}
