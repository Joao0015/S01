package main
import "fmt"

func gerarEscalaPlantao(n int){
	i := 1
	var contador int
	for i <= 30{
		if(contador == n){
			break	
		}  

		//caso o valor dos mutiplos impares -1 for multiplo de 4 (resto 0) entao é dia de plantao
		if (i-1) % 4 == 0 {
			contador++
			fmt.Printf("Plantão %d: Dia %d do mês\n", contador, i)
		}
		i++
	}
	if(n >8){
		fmt.Println("Não é possivel de ter mais de 8 plantões em um mês")
	}
}


func main() {
	var numero int
	fmt.Println("Digite a quantidade de plantões necessários: ")
	fmt.Scanln(&numero)

	gerarEscalaPlantao(numero)
}


