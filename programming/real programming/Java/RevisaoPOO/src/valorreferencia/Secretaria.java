package valorreferencia;

/**
 * Classe secretaria que gerencia a nota dos alunos.
 * @author fernando_paladini
 *
 */
public class Secretaria {
	
	/**
	 * Reduzir a nota do aluno pela metade.
	 * @param a2
	 */
	public void abaixarNota(Aluno a2){
		int notaGetada = a2.getNota();
		int resultado = notaGetada / 2;
		a2.setNota(resultado);
	}
	
	/**
	 * Reduzir a nota do aluno pela metade.
	 * @param nota2
	 * @return
	 */
	public int abaixarNota(int nota2){
		int resultado = nota2 / 2;
		return resultado;
	}

}
