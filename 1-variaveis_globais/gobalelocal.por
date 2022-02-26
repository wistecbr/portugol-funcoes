programa
{
	// variaveis globais
	inteiro i = 0, qnt = 0
	cadeia nomes[100]
	
	funcao inicio()
	{
		escreva("\n Global ", i)
		cadastro()
		i = i + 1
		escreva("\n Global ", i)
	}

	funcao vazio cadastro(){
		// variavel local
		cadeia name
		caracter conf = 'n'
		escreva("Informe o nome ")
		faca{
			leia(name)
			escreva("Deseja confirmar o nome (s/n)")
		}enquanto(conf != 's')
		
		se(conf == 's'){
			nomes[qnt] = name
			qnt++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 215; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 4, 9, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */