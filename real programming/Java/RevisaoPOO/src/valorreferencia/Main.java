package valorreferencia;

public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		
		Secretaria secretaria = new Secretaria();
			
		int n1 = 10;
		int resultado = secretaria.abaixarNota(n1);
		System.out.println(resultado);
		
		System.out.println(n1);
		
		
		Aluno a1 = new Aluno();
		a1.setNome("Joao");
		a1.setNota(10);
		secretaria.abaixarNota(a1);
		
		
		
	}

}
