programa
{
	
	funcao inicio()
	{
		cadeia F,f,nome,sexo
		real v, pdes
		 
		escreva("Digite o seu nome: ")
		leia(nome) 
		escreva("Digite o seu sexo: ")
		leia(sexo)
		escreva("Digite o valor da compra: ")
		leia(v)
		se(sexo=="F" ou sexo=="f"){
			pdes=v*0.87
			escreva(nome,", seu preço com desconto é:", pdes)
		}senao{
			pdes=v*0.95
			escreva(nome, ", seu preço fica: ", pdes)
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