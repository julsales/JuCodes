programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
	real GR, PT, PP
	inteiro planeta		
		escreva("\n Digite seu peso na Terra em KG: ")
		leia(PT)
		escreva("\n Escolha entre: Mercúrio[1], Vênus[2], Marte[3], Júpiter[4], Saturno[5] e Urano[6]. ")
		escreva("\n Qual planeta você quer que seu peso seja calculado?: ")
		leia(planeta)
		
		escolha(planeta){
			caso 1:
			GR=0.37
			PP=PT*GR
			escreva("\n Seu peso em Mercúrio é ", Matematica.arredondar(PP, 2))
			pare
			caso 2:
			GR=0.88
			PP=PT*GR
			escreva("\n Seu peso em Vênus é ",  Matematica.arredondar(PP, 2))
			pare
			caso 3:
			GR=0.38
			PP=PT*GR
			escreva("\n Seu peso em Marte é ",  Matematica.arredondar(PP, 2))
			pare
			caso 4:
			GR=2.64
			PP=PT*GR
			escreva("\n Seu peso em Júpiter é ",  Matematica.arredondar(PP, 2))
			pare
			caso 5:
			GR=1.15
			PP=PT*GR
			escreva("\n Seu peso em Saturno é ",  Matematica.arredondar(PP, 2))
			pare
			caso 6: 
			GR=1.17
			PP=PT*GR
			escreva("\n Seu peso em Urano é ",  Matematica.arredondar(PP, 2))
			pare
			caso contrario:
			escreva("\n Inválido!!")
	}
} 
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */