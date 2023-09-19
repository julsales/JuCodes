programa
{
	
	funcao inicio()
	{
		inteiro quadrante, cont
		real x, y

		para(cont=1;cont<=cont;cont++){
			escreva("\n Digite a coordenada das abscissas [X]: ")
			leia(x)
			escreva("\n Digite a coordenada das ordenadas [Y]: ")
			leia(y)
			se(x>0 e y>0){
				escreva("\n Primeiro quadrante \n")
			}senao se (x<0 e y>0){
				escreva("\n Segundo quadrante \n")
			}senao se (x<0 e y<0){
				escreva("\n Terceiro quadrante \n")
			}senao se (x>0 e y<0){
				escreva("\n Quarto quadrante \n")
			}senao{
				pare
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 531; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */