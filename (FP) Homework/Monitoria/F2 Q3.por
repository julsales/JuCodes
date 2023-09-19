programa
{
	
	funcao inicio()
	{
		inteiro idade, soma, cont, mais18, menos5, maioridade
		soma=0
		mais18=0
		menos5=0
		maioridade=0
		
		para(cont=1;cont<=10;cont++){
			escreva("\n Digite a sua idade: ")
			leia(idade)
			soma=soma+idade
		se(idade>=18){
			mais18=mais18+1
		}se(idade<=5){
			menos5=menos5+1
		}se(idade>maioridade){
			maioridade=idade
		}
		}
		escreva("\n A média de idade desse grupo é: " ,soma/10, "\n")
		escreva("\n ", mais18, " pessoas têm mais de 18 anos \n")
		escreva("\n ", menos5, " pessoas têm menos de 5 anos \n")
		escreva("\n A pessoa de maior idade nesse grupo tem ", maioridade, " anos \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */