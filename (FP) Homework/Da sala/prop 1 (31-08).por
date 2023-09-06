programa
{
	
	funcao inicio()
	{
		real v
		inteiro q, co

		escreva("\n Digite o código do pedido [entre 101, 102, 103, 104 e 105]: ")
		leia(co)
		escreva("\n Digite a quantidade: ")
		leia(q)

		escolha(co){
			caso(100):
			v=1.70
			escreva("\nVocê pediu ", q, " cachorro-quente(s) e irá pagar ", v*q, " reais.")
			pare
			caso(101):
			v=2.30
			escreva("\nVocê pediu ", q, " bauru(s) simples e irá pagar ", v*q, " reais.")
			pare
			caso(102):
			v=2.60
			escreva("\nVocê pediu ", q, " bauru(s) com ovo e irá pagar ", v*q, " reais.")
			pare
			caso(103):
			v=2.40
			escreva("\nVocê pediu ", q, " hamburguer(s) e irá pagar ", v*q, " reais.")
			pare
			caso(104):
			v=2.50
			escreva("\nVocê pediu ", q, " cheeseburguer(s) e irá pagar ", v*q, " reais.")
			pare
			caso(105):
			v=1.00
			escreva("Você pediu ", q, " refrigerante(s) e irá pagar ", v*q, " reais.")
			pare
			caso contrario:
			escreva("\n Erro!!\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 932; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */