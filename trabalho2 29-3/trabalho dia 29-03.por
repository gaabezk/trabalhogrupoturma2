programa
{    
	inteiro vetor[30]
	
    funcao inicio()
    {
    	
        inteiro numero, numeroVagaEntrada,numeroVagaSaida,f=0
        
	
	faca{
        escreva("\n---------------------\n")
        escreva("1-Entrada de Veículo\n")
        escreva("2-Saída de Veículo\n")
        escreva("3-Listar vagas\n")
        escreva("4-Sair do programa\n")
        escreva("---------------------\n\n")

        escreva("Escolha uma opção: ")
        leia(numero)
        limpa()

        escolha(numero){
            caso 1: escreva("Selecione uma vaga para seu veiculo ser estacionado: ")
                    leia(numeroVagaEntrada)
                    limpa()
                    (entrada(numeroVagaEntrada))
            pare
            caso 2: escreva("Selecione a vaga que seu veiculo está estacionado: ")
                    leia(numeroVagaEntrada)
                    limpa()
                    (saida(numeroVagaEntrada))
            pare
            caso 3: escreva("os '0' representam as vagas vazias: \n\n")
            		listar()
            		escreva("\n")
            pare
            caso 4: limpa()
            		escreva("Finalizando o programa...")
            		f=1
            pare
            caso contrario : escreva("Opção inválida!")
            pare
        }
    }enquanto(f==0)
}
    funcao entrada(inteiro numeroVaga){
    		inteiro numeroVaga1 = numeroVaga-1
            enquanto(numeroVaga1 < 0 ou numeroVaga1 >= 30 ou vetor[numeroVaga1] == 1){
            	escreva("Vaga inexistente ou já ocupada, escolha outra vaga: ")
            	leia(numeroVaga)
            	numeroVaga1 = numeroVaga-1
            }
            vetor[numeroVaga1] = 1
            escreva("Voce acaba de estacionar na vaga: ",numeroVaga1+1,"\n")
    }
    funcao saida(inteiro numeroVaga){
    		inteiro numeroVaga1 = numeroVaga-1
		enquanto(numeroVaga1 < 0 ou numeroVaga1 >= 30 ou vetor[numeroVaga1] == 0){
			escreva("Nao ha carro nesta vaga, escolha outra vaga: ")
			leia(numeroVaga)
			numeroVaga1 = numeroVaga-1
            }
          
		vetor[numeroVaga1] = 0
		escreva("Voce acaba de retirar seu veiculo da vaga: ",numeroVaga1+1,"\n")
    }
    funcao listar(){
    		para(inteiro i=0; i < 30; i++){
    			escreva(vetor[i]," ")

		}
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1746; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */