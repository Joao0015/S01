package main
import "fmt"

func main() {
	var valor1, valor2,valor3 int

	fmt.Print("Digite as vendas do 1° trimestre: ")
	fmt.Scanln(&valor1)
	fmt.Println()
	fmt.Print("Digite as vendas do 2° trimestre: ")
	fmt.Scanln(&valor2)
	fmt.Println()
	fmt.Print("Digite as vendas do 3° trimestre: ")
	fmt.Scanln(&valor3)
	fmt.Println()

	soma := (valor1+valor2+valor3)

	fmt.Printf("Total de vendas: %d\n", soma)

	if soma < 100{
		fmt.Println("Meta mínima anual não atingida!")
	} else{
		fmt.Print("Classificação: ")

		switch{
			case soma >= 250:
				fmt.Println("Categoria Top Seller")
			case soma < 250 && soma >= 180:
				fmt.Println("Categoria Sênior")
			case soma >= 100 && soma < 180:
				fmt.Println("Categoria Pleno")
		}
	}

}
