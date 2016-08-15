package model;

public class Turma {

	// Atributos
	/**
	 * Nome da sala
	 */
	private String nomeSala;

	/**
	 * Número de lugares disponíveis na sala.
	 */
	private int tamanhoSala;

	/**
	 * Se a sala é computadorizada ou não.
	 * 
	 * 0 - Sala de aula normal
	 * 1 - Sala informatizada
	 * 2 - Auditório / Sala de vídeo
	 * 3 - Laboratório
	 * 
	 */
	private int tipoDeSala;

	// Construtores
	public Turma(String nomeSala, int tamanhoSala, int tipoDeSala){
		setNomeSala(nomeSala);
		setTamanhoSala(tamanhoSala);
		setTipoDeSala(tipoDeSala);
	}

	// Métodos
	/**
	 * Aumenta o tamanho da sala (número de lugares).
	 * @param nLugaresNovos
	 */
	public void aumentarSala(int nLugaresNovos){
		if (ehPossivel(1,nLugaresNovos)){
			setTamanhoSala(getTamanhoSala() + nLugaresNovos);			
		}
	}

	/**
	 * Diminui o tamanho da sala (número de lugares).
	 * O argumento 2 no método "ehPossivel" significa que ele vai diminuir do valor atual da sala.
	 * @param nDiminuirLugares
	 */
	public void diminuirSala(int nDiminuirLugares){
		if (ehPossivel(2,nDiminuirLugares)){
			setTamanhoSala(getTamanhoSala() - nDiminuirLugares);			
		}
	}

	/**
	 * Verifica se é possível diminuir ou aumentar determinados lugares, dando um resultado positivo.
	 * @param opcao
	 * @param valor
	 * @return
	 */
	private boolean ehPossivel(int opcao, int valor){
		int resultado = 0;
		if (opcao == 1){
			resultado = getTamanhoSala() + valor;
		}else{
			if (opcao == 2){
				resultado = getTamanhoSala() - valor;
			}
		}

		if (resultado > 0){
			return true;
		}else{
			return false;
		}
	}

	// Getters e Setters
	public String getNomeSala() {
		return nomeSala;
	}
	public void setNomeSala(String nomeSala) {
		this.nomeSala = nomeSala;
	}
	public int getTamanhoSala() {
		return tamanhoSala;
	}
	public void setTamanhoSala(int tamanhoSala) {
		this.tamanhoSala = tamanhoSala;
	}

	public int getTipoDeSala() {
		return tipoDeSala;
	}


	public void setTipoDeSala(int tipoDeSala) {
		this.tipoDeSala = tipoDeSala;
	}


}
