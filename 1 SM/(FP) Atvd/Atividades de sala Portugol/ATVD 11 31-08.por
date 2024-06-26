programa
{
	
	funcao inicio()
	{
		inteiro v1, r
		caracter opcao
		
		escreva("\n Digite seu número: ")
		leia(v1)
		escreva("\n Você deseja checar o dobro do número [A], o número ao quadrado [B] ou verificar se o número é impar ou par [C]?: ")
		leia(opcao)

			escolha(opcao){
				caso 'A':
				r=v1*2
				escreva("\n O dobro desse número é: ", r)
				pare
				caso 'B':
				r=v1*v1
				escreva("\n O quadrado desse número é: ", r)
				pare
				caso 'C': 
				r = v1%2
				se (r==1){
				escreva ("\n O número é ímpar")
				}senao se (r==0){
				escreva ("\n O número é par")
				pare
				}
				caso contrario:
				escreva("\n Erro")
			}
			
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 642; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */