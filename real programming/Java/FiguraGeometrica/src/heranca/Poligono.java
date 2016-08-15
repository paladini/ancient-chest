package heranca;


public abstract class Poligono extends FiguraGeometrica{
	
	private int qtdLados;

	/**
	 * Construtor vazio para poligono
	 */
	public Poligono() {
		super();
	}

	/**
	 * Construtor recebendo "nome" para poligono
	 * @param nome
	 */
	public Poligono(String nome) {
		super(nome);
	}
	
	/**
	 * Construtor recebendo "nome" e "qtdLados" para poligono. 
	 * @param nome
	 * @param qtdLados
	 */
	public Poligono(String nome, int qtdLados){
		super(nome);
		setQtdLados(qtdLados);
	}

	public int getQtdLados() {
		return qtdLados;
	}

	public void setQtdLados(int qtdLados) {
		this.qtdLados = qtdLados;
	}
	
	
	
}
