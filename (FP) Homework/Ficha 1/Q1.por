programa
{
	//Desenvolva um programa que leia a largura e altura de uma parede,
	//calcule e mostre a área a ser pintada e a quantidade de tinta
	//necessária para o serviço, sabendo que cada litro de tinta pinta uma
	//área de 2 metros quadrados (m2).
	funcao inicio()
	{
		real l, a, r, tinta

		escreva("\n Digite a altura da parede em metros: ")
		leia(a)
		escreva("\n Digite a largura da parede em metros: ")
		leia (l)

			r = a*l
			tinta = r/2

		escreva("\n A área a ser pintada é ", r, " e irá precisar de ", tinta, "L de tinta.")
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 562; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */