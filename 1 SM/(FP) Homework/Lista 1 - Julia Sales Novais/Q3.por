programa
{
	inclua biblioteca Matematica
	//Solicite a altura e o peso do usuário, calcule o seu IMC e mostre a
	//classificação. O IMC é calculado pela expressão peso/altura2 (peso
	//dividido pelo quadrado da altura).
	funcao inicio()
	{
		real peso, altura, IMC
		escreva("\n Calculadora de IMC")
		escreva("\n Digite seu peso em KG: ")
		leia(peso)
		escreva("\n Digite sua altura em M: ")
		leia(altura)

		IMC=peso/(altura*altura)
		escreva("\n Seu IMC é: ", Matematica.arredondar(IMC,2))

		se(IMC<=18.4){
			escreva("\n Você está abaixo do peso ideal\n")
		}senao se(IMC>=18.5 e IMC<=24.9){
			escreva("\n Você está na faixa de peso ideal\n")
		}senao se(IMC>=25.0 e IMC<=29.9){
			escreva("\n Você está com sobrepeso\n")
		}senao se(IMC>=30.0 e IMC<=39.9){
			escreva("\n Você está com obesidade\n")
		}senao{
			escreva("\nVocê está com obesidade mórbida \n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 876; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */