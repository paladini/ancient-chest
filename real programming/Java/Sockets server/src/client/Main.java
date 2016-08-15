package client;
import java.io.*;
import java.net.*;

public class Main {
    
    /** Cria uma nova instância de Main */
    public Main() {
 
    }
    
    /**
     * @param args argumentos da linha de comando
     */
    public static void main(String[] args) {
//    	  while(true){
    	try {
            //Crio um socket
            Socket socket = new Socket("127.0.0.1", 606);
//            Socket socket = new Socket("127.0.0.1", 606);
        
            //Crio o fluxo para o envio de dados
            OutputStream saida = socket.getOutputStream();            
            PrintStream escrita = new PrintStream(saida);
            
            escrita.println("AUHDSHUASD");
            
//            try {
//                BufferedReader in = new BufferedReader(new FileReader("rfrefre.txt"));
//                    String str;
//                    while (in.ready()) {
//                        str = in.readLine();
//                        System.out.println("cliente: "+ str);
//                        escrita.println(str);
//                    }
//                    in.close();
//            } catch (IOException e) {
//            }
           

            socket.close();
            
        //Caso não encontre o host    
        } catch (UnknownHostException ex) {
            ex.printStackTrace();
        //Caso ocorra alguma exceção na criação do fluxo
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        
        
//    }
    }
}