package genetica;

import java.util.Collections;

import entidades.Aula;
import entidades.Escola;

public class Populacao {
	
	public static void gerarPopulacao(Escola escola){
		// Embaralha ArrayList
		Collections.shuffle(escola.getProfessor());
		Collections.shuffle(escola.getTurma());
		Collections.shuffle(escola.getSala());
		
		// Variáveis
		int posicaoHashmap = 0;
		
		// Gera população
		
		for (Integer i = 0; i < escola.getProfessor().size(); i++){
				for (Integer j = 0; j < escola.getTurma().size(); j++){
					for (Integer k = 0; k < escola.getSala().size(); j++){
						Aula[][] aula = new Aula[5][3];
						for (int m = 0; m < 5; m++){
							for (int n = 0; n < 3; n++){
								aula[i][j].adicionarTudo(escola.getProfessor().get(i),escola.getSala().get(k),escola.getTurma().get(j));
								posicaoHashmap++;								
							}
						}
					}
				}	
		}			
		escola.getHashmap().put(posicaoHashmap, aula[][]);
	}

}
