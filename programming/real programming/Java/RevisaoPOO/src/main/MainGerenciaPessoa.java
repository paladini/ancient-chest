package main;

public class MainGerenciaPessoa {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		GerenciaPessoa gp = new GerenciaPessoa();
		
		Pessoa p = new Pessoa();
		p.setNome("João");
		p.setIdade(10);
		
		gp.setP(p);
		gp.mudarNomePessoa("Maria");
		gp.setIdade(15);
		System.out.println(p.getNome());
		System.out.println(p.getIdade());

	}

}
