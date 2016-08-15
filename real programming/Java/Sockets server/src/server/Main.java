package server;

import java.io.*;
import java.net.*;

public class Main {
    
    private ServerSocket server;
    private Socket socket;
    private InputStream entrada;
    private BufferedReader read;
    private String sql;
    
    /** Cria uma nova instânica de Main */
    public Main() {
        while(true){
    	try {
            //Abre uma prota para escuta (LISTENING)
            server = new ServerSocket(606);            
            
            //Imprime a Mensagem "Servidor aguardando conexao."
            System.out.println("Servidor aguardando conexao.");
            
            //Aguarda e cria a uma conexão
            socket = server.accept();
            
            //Cria um fluxo de entrada
            entrada = socket.getInputStream();
            
            
            read = new BufferedReader(new InputStreamReader(entrada));
            String entrada = read.readLine();
            System.out.println(entrada);
            
            // Criar arquivo
//            File arquivo;  
//	        arquivo = new File("C:\\Users\\Aluno\\Desktop\\arquivo.txt");
//	        FileOutputStream fos = new FileOutputStream(arquivo, true);  
//            
	        // Gravar no arquivo
//            String entrada = read.readLine();
//            while(entrada != null){
//            	entrada = read.readLine();
//            	System.out.println(entrada);  
//            	fos.write(entrada.getBytes());  
//            }
//            fos.close();  	
            
//            setSql(entrada);
//            System.out.println(getSql());
            
//            // Cria arquivo com o texto recebido
//            File arquivo;  
//	        arquivo = new File("C:\\Users\\Aluno\\Desktop\\arquivo.txt");
//	         
//	        FileOutputStream fos = new FileOutputStream(arquivo);  
//	         
//	        String texto = entrada;  
//	        fos.write(texto.getBytes());  
//	        fos.close();  	        	 
	         
            //Fecha o fluxo o socket e o serverSocket
            read.close();
            socket.close();
            server.close();            
            
        //Caso ocorra alguma exeção na criação do fluxo.
        } catch (IOException ex) {
            //Imprimi o que aconteceu de erro
            ex.printStackTrace();
        }        
        }
    }
    
    /**
     * @param args argumentos da linha de comando
     */
    public static void main(String[] args) {
        //Chama o método construtor na classe
        new Main();
    }

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}
    
    
    
}