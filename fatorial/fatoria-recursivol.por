programa
{
	funcao inicio()
	{
		// criar função para calcular a pontencia
		inteiro resposta = 0, num
		escreva("Digite um número ")
		leia(num)
		resposta = fatorial(num)	
		escreva(num,"! é  igual ", resposta)	
	}

	funcao inteiro fatorial(inteiro numero){
		inteiro resultado = 1

		se(numero < 2){
			retorne 1
		}
		
		retorne (numero * fatorial(numero - 1))
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
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */