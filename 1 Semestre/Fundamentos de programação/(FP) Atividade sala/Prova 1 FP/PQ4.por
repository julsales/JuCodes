programa
{
	
	funcao inicio()
	{
		inteiro eleitores, votos
		cadeia municipio

		escreva("\n Digite o nome do município: ")
		leia(municipio)
		escreva("\n Quantos eleitores esse município tem?: ")
		leia(eleitores)
		escreva("\n Quantos votos o candidato mais votado teve?: ")
		leia(votos)

		se(eleitores<=150000){
			escreva("\n O município ",municipio , " não terá segundo turno. \n")
		}senao se (votos>=eleitores/2){
			escreva("\n O município ",municipio , " não terá segundo turno. \n")
		}senao{
			escreva("\n O município ",municipio , " terá segundo turno!! \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */