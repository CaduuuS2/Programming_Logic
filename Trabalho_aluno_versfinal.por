 //Um aluno, chamado Zé. v
 //Recebe duas notas. v
 //O sistema calcula a média. v
 //Apresenta as notas e a média. v
 //Tratar números negativos. v 
 //Tratar números maiores que 10. v
 //Tratar caracteres diferentes de números. v
 //Tratar o enter.v
 //Arredondar as notas para 2 casa decimal. v
 //Arredondar a média para 1 casa. v
 //Caso o ponto flutuante da média seja >=8, arredondar para o inteiro imediatamente superior. v
 //Caso o ponto flutuante da média seja <=2, arredondar para o inteiro imediatamente inferior. v

programa {
    inclua biblioteca Tipos-->t
    inclua biblioteca Matematica-->m
    inclua biblioteca Util-->u
    const cadeia nome = "Zé"
    cadeia nota1, nota2
    real media
    real nt1 = 0.0
    real nt2 = 0.0
    funcao inicio() {
    		escreva("Informe a primeira nota: ")
          leia(nota1)
          limpa()
          
          se(t.cadeia_e_real(nota1)==verdadeiro ou t.cadeia_e_inteiro(nota1,10)==verdadeiro) {
    		inicio2()
    		}
    		senao {
    			escreva("\"",nota1,"\"", " não é uma nota válida.\n\n")
    			u.aguarde(2900)
    			para (inteiro t = 5; t > -1; t--) {
    				limpa()
    				escreva("Tente novamente em: ",t, "...\n")
    				u.aguarde(1000)
    				limpa()
    			}
    			inicio()	
    		}
    }
	funcao inicio2() {
		nt1 = t.cadeia_para_real(nota1)
          nt1 = m.arredondar(nt1, 2)
          se (nt1>=0 e nt1<=10) {
          	escreva("Informe a segunda nota: ")
          	leia(nota2)
          	limpa()
        		se((t.cadeia_e_real(nota2)==verdadeiro ou t.cadeia_e_inteiro(nota2,10)==verdadeiro)) {  			
				nt2 = t.cadeia_para_real(nota2)
				nt2 = m.arredondar(nt2, 2)
				se(nt2>=0 e nt2<=10){
					media = m.arredondar (((nt1 + nt2)/2), 1)
					real coin = media - t.real_para_inteiro(media)
					real coin2 = coin*10
					real mediacoif
					se (coin2 >8.1) {
						mediacoif = media - t.real_para_inteiro(media)
						media = media + (1-mediacoif)
						escreva("Aluno: Zé\nNota 1: ", nt1,"\nNota 2: ",nt2,"\nA média do aluno ","\"Zé","\" é igual à: ", media)
						escreva("\n\n")
						inicio3()											
					}
					senao se ((coin2 <2.1) == verdadeiro) {
						mediacoif = media - t.real_para_inteiro(media)
						media = media - (mediacoif)
						escreva("Aluno: Zé\nNota 1: ", nt1,"\nNota 2: ",nt2,"\nA média do aluno ","\"Zé","\" é igual à: ", media)
						escreva("\n\n")
						inicio3()			
					}					
					senao {
						escreva("Aluno: Zé\nNota 1: ", nt1,"\nNota 2: ",nt2,"\nA média do aluno ","\"Zé","\" é igual à: ", media)
						escreva("\n\n")
						inicio3()		
					}																																																											
				}
				senao{
					escreva("\"",nt2,"\"", " não é uma nota válida.\n\n")
    					u.aguarde(2900)
    					para (inteiro t = 5; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
    					}
    					inicio2()				
				}	
			}
			senao{
				escreva("\"",nota2,"\"", " não é uma nota válida.\n\n")
    				u.aguarde(2900)
    				para (inteiro t = 5; t > -1; t--) {
    					limpa()
    					escreva("Tente novamente em: ",t, "...\n")
    					u.aguarde(1000)
    					limpa()
    				}
    				inicio2()				
			}		
          }
          senao {
           	escreva("\"",nt1,"\"", " não é uma nota válida.\n\n")
    			u.aguarde(2900)
    			para (inteiro t = 5; t > -1; t--) {
    				limpa()
    				escreva("Tente novamente em: ",t, "...\n")
    				u.aguarde(1000)
    				limpa()
    			}
    			inicio()   				    			
          }
	}
		funcao inicio3() {
			cadeia option
			escreva("Para reinserir nota, digite: (1)\nPara encerrar programa, digite: (2)\n")
			leia(option)
			limpa()
				se (t.cadeia_e_inteiro(option, 10)) {
					inteiro option2 = t.cadeia_para_inteiro(option, 10)
					escolha (option2) {
					caso(1):
						inicio()
					pare
					caso(2):
						limpa()
					pare
					caso contrario: {
						escreva("\"",option,"\"", " não é uma opção válida.\n\n")
    						u.aguarde(2900)
    						para (inteiro t = 5; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
    						}
    					inicio3()
					}
			
					}
				}
				senao {
					escreva("\"",option,"\"", " não é uma opção válida.\n\n")
    					u.aguarde(2900)
    					para (inteiro t = 5; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
				}
					inicio3()
				}
		}
}




		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2545; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */