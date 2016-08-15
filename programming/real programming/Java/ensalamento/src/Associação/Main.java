package Associação;

public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {


		// Criar uma pessoa
		Pessoa p1 = new Pessoa("Zueiro");
		
		// Criar um cachorro
		Cachorro c1 = new Cachorro("Rex");
		
		// Associar o cachorro à pessoa
		p1.setCachorro(c1);
		
		// Associar a pessoa ao cachorro
		c1.setDono(p1);
		
		//imprimir dados
		// imrpimir dados do cachorro da pessoa
		System.out.println("Nome do cidadão: " +p1.getNome());
		System.out.println("Cachorro do cidadão: " +p1.getCachorro().getNome());

		//imprimir dados
		// imrpimir dados da pessoa do cachorro
		System.out.println("Nome do cahorro: " +c1.getNome());
		System.out.println("Dono do cachorro: " +c1.getDono().getNome());
		
	}

}
