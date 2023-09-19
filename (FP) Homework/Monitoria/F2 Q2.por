programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real peso, alt, soma
		inteiro cont, mais90, menos50, mais100
		soma=0
		mais90=0
		menos50=0
		mais100=0
		
		para(cont=1;cont<=7;cont++){
			escreva("\n Digite o seu peso: ")
			leia(peso)
			escreva("\n Digite a sua altura: ")
			leia(alt)
			soma=soma+alt
		se(peso>=90){
			mais90=mais90+1
		}se(peso<=50 e alt<=1.60){
			menos50=menos50+1
		}se(peso>=100 e alt>=1.90){
			mais100=mais100+1
			}
		}
		escreva("\n A média de altura desse grupo é: " , Matematica.arredondar(soma/7, 2), "\n")
		escreva("\n", mais90, " pessoas têm mais de 90KG \n")
		escreva("\n", menos50, " pessoas têm menos de 50KG e menos de 1.60m de altura \n")
		escreva("\n", mais100, " pessoas têm mais de 100KG e mais de 1.90m de altura \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */