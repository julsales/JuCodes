programa
{
	
	funcao inicio()
	{
		real v

		escreva("\n]Digite um valor: ")
		leia(v)

		se(v<=25){
			escreva("\nO valor está no intervalo [0,25]\n")
		}senao se(v>=25.1 e v<=50){
			escreva("\nO valor está no intervalo [25,50]\n")
		}senao se(v>=50.1 e v<=75){
			escreva("\nO valor está no intervalo [50,75]\n")
		}senao se(v>=75.1 e v<=100){
			escreva("\nO valor está no intervalo [75,100]\n")
		}senao{
			escreva("\nFora de intervalo\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 62; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */