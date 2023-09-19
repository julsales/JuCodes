programa
{
	//Estou ciente de que um número pode ser múltiplo de 3 e 2 ao mesmo tempo, porém realizei a atividade de acordo com o exemplo dado.
	funcao inicio()
	{
		inteiro num, q_num, cont, n3, n2
		cont=1
		n3=0
		n2=0
		escreva("\n Olá Bino, aaqui está o programa para resolver o desafio de Berg. ")
		escreva("\n Quantos números tem essa lista?: ")
		leia(q_num)
		enquanto(cont<=q_num){
			escreva("\n Digite o ", cont, " número: ")
			leia(num)
			cont++	
		 se(num%2==0){
			n2=n2+1
		}senao se(num%3==0){
			n3=n3+1
			}
		} escreva("\n Essa lista possui ", n2, " número(s) múltiplo(s) de 2 ")
		escreva("\n Essa lista possui ", n3, " número(s) múltiplo(s) de 3 \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 99; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */