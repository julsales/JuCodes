programa
{
	
	funcao inicio()
	{
		inteiro cont, candidatos, mat, port, aprovados
		real redacao
		aprovados=0

		escreva("\n Quantos candidatos foram inscritos no concurso?: ")
		leia(candidatos)
		
		para(cont=1;cont<=candidatos;cont++){
			escreva("\n Digite a quantidade de acertos em matemática do ",cont ," candidato: ")
			leia(mat)
			escreva("\n Agora digite a quantidade de acertos em português: ")
			leia(port)
			escreva("\n Digite a nota de redação desse candidato: ")
			leia(redacao)
			se(mat>=21 e port>=40 e redacao>=7){
				aprovados=aprovados+1
			} 
			
		} escreva("\n", aprovados, " candidato(s) foram aprovados nesse concurso! ")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 576; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */