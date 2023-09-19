programa
{
	
	funcao inicio()
	{
		inteiro filhos, menos2, mais2, cont
		cont=1
		menos2=0
		mais2=0

			enquanto(cont<=10){
				escreva("\n Digite quantos filhos você tem: ")
				leia(filhos)
				se(filhos<=2){
					menos2++
				}senao{
					mais2++
				}
				cont++
			}
			escreva("\n", menos2, " mulheres possuem até 2 filhos\n")
			escreva("\n", mais2, " mulheres possuem mais que 2 filhos\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */