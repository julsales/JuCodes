programa
{
	
	funcao inicio()
	{
		real h, p

		escreva("\n Digite sua horas de atividade física: ")
		leia(h)

		se(h<=10){
			p = h*2
		}senao se(h>=11 e h<=20){
			p = h*5
		}senao{
			p = h*10
	}
		escreva("\n Você se exercitou por ", h, " horas e por isso ganhou ", p, " pontos.\n")
}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */