package exercicio1;

public class Main {

	/**
	 * M�todo principal, inicializador. 
	 * @param args
	 */
	public static void main(String[] args) {
		
		Pessoa p1 = new Pessoa("Bia Chata");
		System.out.println(p1.getNome());
		
		Cartorio.mudarNome(p1, "NovoNome");
		System.out.println(p1.getNome());
	}

}
