programa
{
	
	funcao inicio()
	{
		inteiro n, menorn, soma, qn, npar
		caracter resp
		soma=0
		menorn=1000000
		npar=0
		qn=0
		
		faca{
			escreva("\n Digite um número para realizar as operações: ")
			leia(n)
			escreva("\n Deseja continuar? [S] ou [N]?: ")
			leia(resp)
			soma=soma+n
			qn++
			
			se(n<menorn){
				menorn=n
			}se(n%2==0){
				npar=npar+1
			}
		}enquanto(resp=='S' ou resp=='s')
			escreva("\n Ok terminamos!")
			escreva("\n O somatório desses números é: ", soma, "\n")
			escreva("\n O menor valor digitado foi: ", menorn, "\n")
			escreva("\n A média desses valores é: ", soma/qn, "\n")
			escreva("\n A quantidade é numeros pares é: ", npar, "\n")
			
		}
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */