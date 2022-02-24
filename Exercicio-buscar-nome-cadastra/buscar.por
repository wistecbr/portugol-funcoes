programa
{
	inclua biblioteca Texto --> t
	cadeia clientes[10] = { "Wisley", "Jose", "Maria", "Leandro", "Lorena", "Graziele", 
	"Larissa", "Paulo",	"Pedro", "Lucas"}
	inteiro idade[10] = {0,0,0,0,0,0,0,0,0,0}
	
	funcao inicio()
	{
		// crie uma funcao para buscar pelo nome e devolver a posicao do vetor
		inteiro posicao
		posicao = busca_nome()
		se(posicao > -1){
			cadastra_idade(posicao)
		}senao{
			escreva(" Não Encontrado\n")
		}
		// chamar a função para cadastrar a idade
		// obs: não pode cadastrar na posicao -1
		imprime()
	}
	
	funcao inteiro busca_nome(){
		inteiro posicao = -1
		cadeia comp, nome
		escreva("Informe um nome que deseja encontrar ")
		leia(nome)
		nome = t.caixa_alta(nome)

		para(inteiro i = 0; i < 10; i++){
			comp = t.caixa_alta(clientes[i])
			se(nome == comp){
				posicao = i
				pare
			}
		}
		
		retorne posicao
	}
	
	funcao imprime (){
		// usar igual a do exercicio de imprimir posicao - nome - idade
		escreva("posicao \t nome \t idade")
		para(inteiro i = 0; i < 10; i++){
			escreva("\n",(i+1),"\t\t", clientes[i], "\t\t",idade[i])
		}
	}

	funcao cadastra_idade(inteiro posicao) {
		// cadastrar apenas a idade da pessoa encontrada 
		inteiro years
		escreva("Informe a idade de ", clientes[posicao], " ")
		leia(years)
		idade[posicao] = years
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
 * @POSICAO-CURSOR = 1090; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {posicao, 11, 10, 7}-{posicao, 24, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */