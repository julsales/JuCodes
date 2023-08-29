programa
{
	inclua biblioteca Graficos --> g

		inteiro guato = g.carregar_imagem("C:\\Users\\julia\\Downloads\\Imagem besteirol\\48c9522aaa31a27582216bec737e92ce.gif")
	funcao inicio()
	{
		inteiro freq
		real media
		
		escreva ("Digite sua frequência: ")
		leia(freq)
		escreva ("\nDigite sua media: ")
		leia(media)
		se (freq>=75 e media>=7){
			escreva("\nVocê passou parabéns!!")
				g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(400, 400)
		g.definir_titulo_janela("Happy happy happy")
		enquanto(verdadeiro){
		g.desenhar_imagem(0, 0,guato)
			g.renderizar()
		}	
			
		}senao se (freq<=76){
			escreva("\nVocê foi reprovado por falta")
			
		}senao{
			escreva("\nVocê foi reprovado por média")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 463; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */