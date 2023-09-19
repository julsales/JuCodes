programa
{
	
	funcao inicio()
	{
		inteiro numero, soma, maiorn, impar
		caracter resposta
		real media
		soma=0
		maiorn=0
		impar=0

		faca{
			escreva("\n Escreva um número para realizar as operações: ")
			leia(numero)
			escreva("\n Deseja continuar? Responda com [S] ou [N]: ")
			leia(resposta)
			soma=soma+numero
			se(maiorn<numero){
				maiorn=numero	
			}se(numero%2==1){
				impar=impar+1
			}
			
		}enquanto(resposta=='S' ou resposta=='s')
		escreva("\n Ok, terminamos \n")
		escreva("\n O somatório entre todos os valores é: ", soma)
		escreva("\n O maior valor é: ", maiorn)
		escreva("\n Existem ", impar, " números ímpares nessa lista")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 489; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */