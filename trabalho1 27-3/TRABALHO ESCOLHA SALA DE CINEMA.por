programa
{
	
	funcao inicio()
	{
		inteiro linha,coluna,matriz[12][12]
		caracter continuar='s'
		
// INICIO -> Roda somente na primeira vez que o programa é executado! - todas as poltronas vao receber valor de 0.
			para(inteiro i=0; i < 12; i++){
				para(inteiro j=0; j < 12; j++){
					matriz[i][j] = 0
				}		
			}
// ENQUANTO -> Roda em lop [linha 17 até linha 69] ate que a resposta final seja 'n' ou 'N' )
		enquanto(continuar=='s' ou continuar=='S'){
			
			escreva("===Sala de cinema 5===\n\nOs assentos '0' representam os lugares vazios!\n")
			// PARA -> algoritmo para mostrar ao usuario quantas "poltronas" estao disponiveis.
				para(inteiro i=0; i < 12; i++){
					escreva("\n")
					para(inteiro j=0; j < 12; j++){
						escreva(matriz[i][j]," ")
					}		
				}
		// LER QUAL POLTRONA VC QUER RESERVAR
			escreva("\n\nPor Favor, escolha um assento!\nDigite a linha e coluna do assento:\n")
			leia(linha,coluna)
			
	/* ENQUANTO -> algoritmo para detectar e avisar o usuario se o numero lido a cima é 
	negativo, ou maior q o valor permitido */
		enquanto(linha >= 13 ou coluna >= 13 ou coluna <= 0 ou linha <= 0){
			escreva("Nao existe essa poltrona. Favor selecionar outra:")
			leia(linha,coluna)
		}

	// SE -> DECLARA O VALOR 1 A POLTRONA ESCOLHIDA MAS SO RODA COM A CONDIÇÃO (se poltrona == 0 )
		se(matriz[linha-1][coluna-1] == 0){
			matriz[linha-1][coluna-1] = 1
			limpa()
			escreva("\nParábens! ingresso comprado com sucesso!\n")
			
	// PARA -> MOSTRA SUA POLTRONA RESERVADA E AS OUTRAS DISPONIVEIS
		para(inteiro i=0; i < 12; i++){
			escreva("\n")
			para(inteiro j=0; j < 12; j++){
				escreva(matriz[i][j]," ")
			}		
		}
		
	// SE o (se) for falso ele vem direto pra cá
		}senao{
			escreva("Assento já está reservado!")
			}

	//ultima condição para ver se o usuario sai ou continua no programa
		escreva("\n\nDeseja comprar outro ingresso?\nResponda SIM ou NAO  : ")
		leia(continuar)

	// condição para detectar e avisar ao usuario se ele digitar resposta DIFERENTE de (sim ou nao).
		enquanto(continuar != 's' e continuar != 'n' e continuar != 'S' e continuar != 'N'){
			limpa()
			escreva("\nVoce precisa digitar a opção correta!")
			escreva("\nDeseja comprar outro ingresso?\nResponda SIM ou NAO  : ")
			leia(continuar)
		}
		limpa()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1761; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */