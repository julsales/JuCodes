programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real ve,r
		const real PI=3.14
		
		escreva("Digite o raio: ")
		leia(r)

		ve=(4*PI*r*r*r)/3	
		
		escreva ("\nO volume da esfera é: ", Matematica.arredondar(ve,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 167; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */