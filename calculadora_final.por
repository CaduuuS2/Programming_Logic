programa { //Nome do programa:Calculadora 
	inclua biblioteca Tipos-->t
     inclua biblioteca Matematica-->m
	cadeia num1
	cadeia num2
	cadeia option
	funcao inicio() {
		escreva("Primeiro número 1: ")
		leia(num1)
		limpa()
		se (t.cadeia_e_real(num1) == verdadeiro  ou t.cadeia_e_inteiro(num1, 10)==verdadeiro) {
			real num12 = t.cadeia_para_real(num1)
     		escreva("Para Adição digite (1) \n")
     		escreva("Para Subtração digite (2) \n")
     		escreva("Para multiplicação digite (3) \n")
     		escreva("Para Divisão digite (4) \n")
     		leia(option)
     		limpa()
     		se (t.cadeia_e_inteiro(option, 10) == verdadeiro) {
     			inteiro option2 = t.cadeia_para_inteiro(option, 10)
     			se (option2 == 1 ou option2 == 2 ou option2 == 3 ou option2 == 4) { 
     				escreva("Segundo número 2: ")
					leia(num2)
					limpa()
     				se (t.cadeia_e_real(num2) == verdadeiro ou t.cadeia_e_inteiro(num2, 10) == verdadeiro) { 
     					real num22 = t.cadeia_para_real(num2)
     					se (num22 !=0.0) {
     						escolha(option2) {
     						caso(1):
							escreva("O resultado de (",num12,") + (",num22,") é igual à (", num12+num22,")\n")
     						pare
     						caso(2):
     						escreva("O resultado de (",num12,") - (",num22,") é igual à (", num12-num22,")\n")
     						pare
     						caso(3):
     						escreva("O resultado de (",num12,") * (",num22,") é igual à (", num12*num22,")\n")
     						pare
     						caso(4):
     						escreva("O resultado de (",num12,") / (",num22,") é igual à (", num12/num22,")\n")
     						pare
     						}
     					}
     					senao se (num22 ==0.0) {
     						escolha(option2) {
     						caso(1):
							escreva("O resultado de (",num12,") + (",num22,") é igual à (", num12+num22,")\n")
     						pare
     						caso(2):
     						escreva("O resultado de (",num12,") - (",num22,") é igual à (", num12-num22,")\n")
     						pare
     						caso(3):
     						escreva("O resultado de (",num12,") * (",num22,") é igual à (", num12*num22,")\n")
     						pare
     						caso(4):
     						escreva("Não há resultados lógicos numa dividisão por zero.\n")
     						pare
     						}
     					}
     				}
     				senao {
    							escreva("\"", num2, "\"", " não é um carácter válido. \nTente novamente.\n\n")
     				}
     			}
     				senao {
     					escreva("\"", option, "\"", " não é um carácter válido. \nTente novamente.\n\n")
     				}
     		}
     		senao {
     			escreva("\"", option, "\"", " não é um carácter válido. \nTente novamente.\n\n")	
     		}
		}
     	senao {
     			escreva("\"", num1, "\"", " não é um carácter válido. \nTente novamente.\n\n")
     	}	
     }	
}





/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 30; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */