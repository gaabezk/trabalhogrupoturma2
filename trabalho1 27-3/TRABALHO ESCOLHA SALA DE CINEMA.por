programa
{
	
	funcao inicio()
	{
		inteiro x=0,a1,a2,matriz[12][12]
		
		escreva("        ===Sala de cinema 2===\n\nOs assentos '0' representam os lugares vazios!\n")

			para(inteiro i=0; i < 12; i++){
				para(inteiro j=0; j < 12; j++){
					matriz[i][j] = 0
		}		
	}
			para(inteiro i=0; i < 12; i++){
				escreva("\n")
				para(inteiro j=0; j < 12; j++){

					escreva(matriz[i][j]," ")
		}		
	}
		escreva("\n\nPor Favor, escolha um assento!\nDigite a linha e coluna do assento:\n")
		leia(a1,a2)
		enquanto(a1 > 12 ou a2 > 12 ){
			escreva("Nao existe essa poltrona. Favor selecionar outra:")
			leia(a1,a2)
		}
		matriz[(a1-1)][(a2-1)] = 1
		limpa()
		escreva("\nParábens! ingresso comprado com sucesso!\n")
		para(inteiro i=0; i < 12; i++){
			escreva("\n")
			para(inteiro j=0; j < 12; j++){
			escreva(matriz[i][j]," ")
			}		
		}escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 616; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */