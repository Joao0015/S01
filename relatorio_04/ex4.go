package main
import "fmt"

func validarIngresso(setor string, codigo int) (bool){
	if setor == "VIP" && codigo == 2026{
		return true
	}
	return false
}


func main() {
	loop := true 
	for loop{
		var codigo int
		var setor string

		fmt.Println("Digite o setor do ingresso:")
		fmt.Scanln(&setor)

		fmt.Println("Digite o código do ingresso:")
		fmt.Scanln(&codigo)

		resultado := validarIngresso(setor, codigo)

		if resultado{
			fmt.Println("Acesso liberado à área VIP")
			break
		} else{
			fmt.Println("Ingresso ou setor inválido. Tente novamente.")
		}
		
	}
}

// Crie uma função chamada func validarIngresso(setor
// string, codigo int) bool. A função deve utilizar uma
// estrutura condicional para verificar se o setor é igual a
// "VIP" E se o codigo do ingresso é igual a 2026.
// A função deve retornar true apenas se ambas as
// condições forem verdadeiras.
// Caso contrário, deve retornar false.
// Na main, utilize um laço for infinito para:
// Solicitar ao usuário o setor do ingresso e o código
// numérico.
// Chamar a função validarIngresso passando os
// valores lidos.
// Verificar o retorno da função:
// Se for true, imprima "Acesso liberado à área
// VIP!" e utilize o comando break para encerrar o
// laço.
// Se for false, imprima "Ingresso

// Exemplo de Execução:
// Digite o setor do ingresso: PISTA
// Digite o código do ingresso: 2026
// Ingresso ou setor inválido. Tente novamente.
// Digite o setor do ingresso: VIP
// Digite o código do ingresso: 1010
// Ingresso ou setor inválido. Tente novamente.
// Digite o setor do ingresso: VIP
// Digite o código do ingresso: 2026
// Acesso liberado à área VIP
