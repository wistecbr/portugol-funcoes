programa
{
	cadeia nomes[3], situacao[3]
	real nota1[3],nota2[3] ,nota3[3] , total[3]
	real medias[3] 
	funcao inicio()
	{
		cadastro()
		calcula_media()
		verificaSituacao()
		imprime()
	}
	
	funcao vazio cadastro(){ // função feita pela Aluna Simone A.G. Amaral
		real nota
		cadeia nome
		para (inteiro i = 0; i< 3; i++){
			inteiro soma = 0
			escreva("Informe seu nome: ")
			leia(nome)
			nomes[i] = nome
			escreva("Informe a nota da sua 1º avaliação: ")
			leia(nota)
			enquanto( nota < 0 ou nota > 34){
				escreva("Nota Inválida, informe valor entre 0 e 33 ")	 
				leia(nota)
				
			}
			nota1[i] = nota
			nota = -1
			escreva("Informe a nota da sua 2º avaliação: ")
			leia(nota)
			enquanto( nota < 0 ou nota > 34){
				escreva("Nota Inválida, informe valor entre 0 e 33 ")	 
				leia(nota)
				
			}
			nota2[i] = nota
			nota = -1
			escreva("Informe a nota da sua 3º avaliação: ")
			leia(nota)
			enquanto( nota < 0 ou nota > 35){
				escreva("Nota Inválida, informe valor entre 0 e 33 ")	 
				leia(nota)
				
			}
			nota3[i] = nota
			total[i] = nota1[i] + nota2[i] + nota3[i]
		}
	}

	funcao vazio calcula_media(){
		real media = 0.0
		para(inteiro i = 0; i < 3; i++){
			media += nota1[i]
		}
		media = media /3
		medias[0] = media
		media =0.0
		para(inteiro i = 0; i < 3; i++){
			media += nota2[i]
		}
		media = media /3
		medias[1] = media
		media =0.0
		para(inteiro i = 0; i < 3; i++){
			media += nota3[i]
		}
		media = media /3
		medias[2] = media
	}

	funcao vazio verificaSituacao(){
		para(inteiro i = 0; i< 3 ; i++){
			se(total[i] >= 60){
				situacao[i] = "APROVADO"
			}senao se(total[i] > 55 e total[i] < 60 ){
				situacao[i] = "RECUPERAÇÃO"
			}senao{
				situacao[i] = "REPROVADO"
			}
		}
	}
	
	funcao vazio imprime(){
		escreva("NOME \t\t NOTA1\t\t NOTA2\t\t NOTA3\t\t TOTAL\t\tSituação\n")
		para(inteiro i = 0; i < 3; i++){
			escreva("\n",nomes[i], "\t\t", nota1[i],"\t\t",nota2[i],"\t\t",nota3[i],"\t\t",total[i],"\t\t",situacao[i])
		}
		
		escreva("\nMÉDIA\t\t")
		para(inteiro i = 0; i < 3; i++){
			escreva(medias[i],"\t\t")
		}
	}
	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1645; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */