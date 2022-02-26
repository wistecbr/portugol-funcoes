programa
{
	funcao inicio()
	{
		// criar função para calcular a pontencia
		inteiro resposta = 0, base, exp
		escreva("base ")
		leia(base)
		escreva("Expoente ")
		leia(exp)
		resposta = potencial(base,exp)	
		escreva(base ,"^", exp, " = ", resposta)	
	}

	funcao inteiro potencial(inteiro base, inteiro expoente){
		inteiro resultado = 1

		para(inteiro i = 0; i < expoente; i++){
			resultado = resultado * base
		}
		base = 0
		retorne resultado
	}
}
/*
	feito por Wisley Alves
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {resultado, 16, 10, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */