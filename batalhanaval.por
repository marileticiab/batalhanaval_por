programa
{
	//dodos Jogador 1
	inteiro matJog1 [8][8]
	inteiro pontos1 = 0

	//dodos Jogador 2
	inteiro matJog2 [8][8]
	inteiro pontos2 = 0

	inteiro vez = 1
	inteiro lin = 0, col = 0
	
	funcao imprimeTabuleiro (){

		//depois aumentar as possibilidades do tabuleiro
		escreva(" __ __ __ __ __ __ __ __\n")

		para(inteiro c = 0; c < 8; c++){
			para(inteiro i = 0; i <= 8; i++){

				se(i != 8){
					escreva("|__")	
				}senao{
					escreva("|\n")	
				}
			}
		}
	}
	
	funcao inicio()
	{
		

		escreva("...................................... JOGO BATALHA NAVAL .....................................................\n")

		escreva("Seja bem-vindo!\n")
		escreva("A regra do jogo é simples: afundar as embarcações do oponente. Ganha quem afundar mais embarcações.\n")
		escreva("Veja: SUBMARINO --> 9 | CRUZADOR --> 8 | AVIÃO --> 7\n")
		escreva("As coordenadas são de 0 a 7. Fique ligado!\n")
		escreva("Preparado? Vamos lá!\n")

		limpa()

		//informando posições das peças
		// sub = 9 | cruz = 8 | pa = 7
		
		escreva("JOGADOR 1 (você) .........................................................................................\n")
		

		//Agua --> 0
		para(inteiro l = 0; l <= 7; l++){
			para(inteiro c = 0; c <= 7; c++){
				matJog1 [l][c] = 0
				matJog2 [l][c] = 0
			}
		}

		posiciona(matJog1, 1)
		posiciona(matJog2, 2)

		//imprimeTabuleiro()
	}

	funcao posiciona(inteiro &mat [][], inteiro numJog){

	//3 sub --> 1 celula cada----------------------------------ok

	
		para(inteiro cont = 1; cont <= 3; cont++){
			
			escreva("Informe as coordenadas (linhas e colounas, respectivamente) que deseja distribuir seu SUBMARINO ", cont, ": ")
			leia(lin)
			leia(col)
			
			se(numJog == 1){
				matJog1 [lin][col] = 9
			}senao{
				matJog2 [lin][col] = 9
			}

			
		}

	
	//3 cruzadores (duas células)------------------------------ok
		para(inteiro cont = 1; cont <= 3; cont++){
			escreva("Agora informe as coordenadas (linhas e colounas, respectivamente) que deseja distribuir seu CRUZADOR ", cont, ": ")
		
				leia(lin)
				leia(col)

			se(numJog == 1){
				se(col != 7){
				matJog1[lin][col+1] = 8
				matJog1[lin][col] = 8
				}senao{
					matJog1[lin][col] = 8
					matJog1[lin][col -1] = 8
				}
			}senao{
				se(col != 7){
				matJog2[lin][col] = 8
				matJog2[lin][col +1] = 8
				}senao{
					matJog2[lin][col] = 8
					matJog2[lin][col -1] = 8
				}
			}

		}
			
	// 2 porta aviões (quatro células)----------------------------ok
		para(inteiro cont = 1; cont <= 2; cont++){
			escreva("Por fim, informe as coordenadas (linhas e colounas, respectivamente) que deseja distribuir seu PORTA AVIÃO ", cont, ": ")
			para(inteiro c = 0; c < 4; c ++){
				leia(lin)
				leia(col)

			se(numJog == 1){
				se(col != 7){
					matJog1 [lin][col] = 7
					matJog1 [lin][col+1] = 7
					matJog1 [lin][col+2] = 7
					matJog1 [lin][col+3] = 7
				}senao{
					matJog1 [lin][col] = 7
					matJog1 [lin][col+1] = 7
					matJog1 [lin][col+2] = 7
					matJog1 [lin][col+3] = 7
				}
			}senao{
				se(col != 7){
					matJog2 [lin][col] = 7
					matJog2 [lin][col+1] = 7
					matJog2 [lin][col+2] = 7
					matJog2 [lin][col+3] = 7
				}senao{
					matJog2 [lin][col] = 7
					matJog2 [lin][col+1] = 7
					matJog2 [lin][col+2] = 7
					matJog2 [lin][col+3] = 7
				}
			}
		}	
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1336; 
 * @DOBRAMENTO-CODIGO = [13];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matJog1, 4, 9, 7}-{matJog2, 8, 9, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */