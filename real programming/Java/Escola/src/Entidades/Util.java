package Entidades;


/**
 * Classe de métodos úteis
 * @author fernando_paladini
 *
 */
public class Util {
	
	/**
	 * Procura por elementos em um string.
	 * @param vetor
	 * @param elementoProcurado
	 * @return
	 */
	public static int procura(Object[] vetor, Object elementoProcurado) {
		for (int i = 0; i < vetor.length; i++)
			if (vetor[i].equals(elementoProcurado))
				return i;
		return -1; 
	}
}
