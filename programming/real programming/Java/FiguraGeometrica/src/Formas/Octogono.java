package Formas;

import heranca.Poligono;

public class Octogono extends Poligono {

	private double umaMedidaQualquer;

	public void calcularArea(){
		setArea( umaMedidaQualquer * 8);
	}
		
	public double getUmaMedidaQualquer() {
		return umaMedidaQualquer;
	}

	public void setUmaMedidaQualquer(double umaMedidaQualquer) {
		this.umaMedidaQualquer = umaMedidaQualquer;
	}
	
	

}
