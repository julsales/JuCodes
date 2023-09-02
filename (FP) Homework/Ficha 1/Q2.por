programa
{
	//Desenvolva um programa que seja capaz de calcular a média
//ponderada de um aluno. Inicialmente solicite o nome e as três notas
//do aluno, logo após, calcule e exiba na tela a média. Na média
//ponderada considere os seguintes pesos nas notas: 2, 3 e 5. 
	funcao inicio()
	{
		real n1, n2, n3, media 

		escreva("\n Digite sua primeira nota: ")
		leia(n1)
		escreva("\n Digite sua segunda nota: ")
		leia(n2)
		escreva("\n Digite sua terceira nota: ")
		leia(n3)

		media = (n1*2+n2*3+n3*5)/10
		escreva("\n Sua média é: ", media, "\n")
		se(media<=4.9){
			escreva("\n Você foi reprovado\n")
						
		}senao se(media>=7){
			escreva("\n Você foi aprovado\n")
		
		}senao{
			escreva("\n Você está de recuperação\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 740; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */