package main
import (
	"fmt"
	"unicode/utf8"
)

func ValidarCodigoRastreio(codigo string) (bool,string){
	quantidade := utf8.RuneCountInString(codigo)

	switch{
		case quantidade == 10:
			return true, "Código de rastreio registrado no sistema!"
		default:
			return false, "Erro: O código de rastreio deve ter exatamente 10 caracteres."
	}

}

func main() {
	status := false

	for status != true{
		fmt.Print("Digite o código de rastreio: ")
		var codigo string
		fmt.Scanln(&codigo)
		var resultado string
		status, resultado = ValidarCodigoRastreio(codigo)

		fmt.Println(resultado)
	}
}
