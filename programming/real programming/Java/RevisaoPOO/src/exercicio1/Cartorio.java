package exercicio1;

/**
 * Controle os dados das pessoas.
 * @author fernando_paladini
 *
 */
public class Cartorio {
	
	/**
	 * Mudar o nome da pessoa. 
	 * @param p Objeto pessoa.
	 * @param novoNome Novo nome para pessoa.
	 */
	public static void mudarNome(Pessoa p, String novoNome){
		p.setNome(novoNome);
	}

}
