programa
{
	
	funcao inicio()
	{
		inteiro v1, v2, resultado
		caracter opcao
		
			escreva("\n Digite o primeiro valor: ")
			leia(v1)
			escreva("\n Digite o segundo valor: ")
			leia(v2)
			escreva("\n Digite a operação em S, M, B e D: ")
			leia(opcao)
		escolha(opcao){
			caso 'S':
			resultado = v1+v2
			escreva("\n Seu resultado é: ", resultado)
			pare
			caso 'M': 
			resultado = v1*v2
			escreva("\n Seu resultado é: ", resultado)
			pare
			caso 'D':
			resultado = v1/v2
			escreva("\n Seu resultado é:", resultado)
			pare
			caso 'B':
			resultado = v1-v2
			escreva("\n Seu resultado é: ", resultado)
			pare
			caso contrario:
			escreva("Erro!")
			}
		}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 469; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */