programa
{
	inclua biblioteca Util --> u
	cadeia nomes[3], senhas[3], logins[3]
	inteiro qnt = 0
	funcao inicio()
	{
		inteiro op = -1
		cadeia login, senha
		enquanto (op != 0){
			limpa()
			escreva("1 - Cadastrar\n")
			escreva("2 - Imprimir Cadastrados\n")
			escreva("3 - Realizar Login\n")
			escreva("0 - sair \n")
			escreva("Informe uma das opções acima ")
			leia(op)

			escolha(op){
				caso 1:
					cadastra()
				pare
				caso 2:
					imprime()
				pare
				caso 3:
					escreva("Informe o login \n")
					leia(login)
					escreva("Informe a senha \n")
					leia(senha)
					validaLogin(login,senha)					
				pare
				caso 0:
					escreva("Até logo \n")
				pare
				caso contrario:
				 	escreva("Opção Inválida :(\n")
			}
		}
	}
	funcao vazio cadastra(){
		cadeia temp
		limpa()
		escreva("\nInforme o nome: ")
		leia(temp)
		nomes[qnt] = temp
		escreva("\nInforme o Login para o(a) ", nomes[qnt], " ")
		leia(temp)
		logins[qnt] = temp
		escreva("\nInforme uma senha para ",logins[qnt], " ")
		leia(temp)
		senhas[qnt] = temp
		qnt++
		escreva("\nCadastrado com Sucesso!")
		u.aguarde(3000)
	}

	funcao vazio imprime(){
		escreva("NOMES\t\tLOGIN\n")
		para(inteiro i =0; i < qnt; i++){
			escreva(nomes[i], "\t\t", logins[i],"\n")
		}
		escreva("___________________________________\n")
		u.aguarde(3000)
	}

	funcao vazio validaLogin(cadeia login, cadeia senha){
		
		para(inteiro i = 0; i < qnt; i++){
			se(login == logins[i] e senha == senhas[i]){
				escreva("\n Seja muito Bem-vindo", nomes[i])
				u.aguarde(3000)
				pare
			}
		}
		escreva("\n Login e/ou senha Inválidos :( \n")
		u.aguarde(3000)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 570; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */