package heranca;

public abstract class FiguraGeometrica {
	
	// Atributos
	private String nome;
	private double area;
	
	// Construtores
	public FiguraGeometrica() {
		super();
	}
	
	public FiguraGeometrica(String nome) {
		super();
		this.nome = nome;
	}
	
	// Métodos
	public void calcularArea(){
		setArea(0);
	}
	
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}

	
	
}
