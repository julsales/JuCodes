programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro cont, idade, mvelha, qhomens, mais20, soma
		caracter sexo
		cont=1
		soma=0
		qhomens=0
		mais20=0
		mvelha=0
		enquanto (cont<=5){
			escreva("\n Qual é o seu sexo? [H] ou [M]?: ")
			leia(sexo)
			escreva("\n Qual é a sua idade?: ")
			leia(idade)
			soma=soma+idade
			cont++
			escolha(sexo){
			caso 'H':
				qhomens=qhomens+1
			pare
			caso 'M':
			se(idade>=21){
				mais20=mais20+1
			}se(idade>=mvelha){
				mvelha=idade
			}
			
			}
			
		}
			escreva("\n ", qhomens, " homem(ns) foram cadastrados.")
			escreva("\n A mulher mais velha tem ", mvelha, " anos")
			escreva("\n A média de idade do grupo é: ", soma/5)
			escreva("\n", mais20, " mulher(es) tem mais de 20 anos")
			
	}         
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 760; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */