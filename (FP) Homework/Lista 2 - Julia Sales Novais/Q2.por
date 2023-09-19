programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, n3, cont
		cont=1
		escreva("\nMontar a tabuada do: ")
		leia(n1)
		escreva("\nComeçar por: ")
		leia(n2)
		escreva("\nTerminar em: ")
		leia (n3)
		para(cont=n2;cont<=n3;cont++){
			 escreva(" \n", n1, " X ", cont, " = ", n1*cont, "\n")
			 
		}
		se(n2>n3){
			escreva("\n Erro! \n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */