programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro cont, jogadores
		real altura, media, soma
		soma=0

		escreva("\n Quantos jogadores seu time possui?: ")
		leia(jogadores)

		para(cont=1;cont<=jogadores;cont++){
			escreva("\n Digite a altura do jogador em metros: ")
			leia(altura)
				soma=soma+altura
		}
			media=soma/jogadores
		 	escreva("\n A média de altura desses jogadores é: ", Matematica.arredondar(media,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */