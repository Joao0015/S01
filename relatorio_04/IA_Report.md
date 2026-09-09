# Relatório de Uso de Inteligência Artificial

## 1. Identificação

**Nome:** João Victor Simões Rosa
**Matrícula:** 784

---

## 2. Declaração de Uso de IA

Nesta atividade, utilizei Inteligência Artificial **exclusivamente como auxílio no Exercício 1**.

Os demais exercícios foram realizados sem o auxílio de Inteligência Artificial.

**Ferramenta utilizada:** ChatGPT
**Modelo utilizado:** GPT-5.6 Sol
**Exercício em que foi utilizada:** Exercício 1

---

# 3. Histórico de Prompts e Respostas

## Prompt 1

### Prompt enviado

> COMO CONTAR CARACTERES EM GO?

### Resposta obtida

Em Go, depende do que você quer contar. Para começar, o mais simples é usar `len()`:

```go
package main

import "fmt"

func main() {
    texto := "banana"

    fmt.Println(len(texto))
}
```

Saída:

```text
6
```

Mas é necessário ter cuidado com acentos, pois `len()` conta bytes, não necessariamente caracteres.

Para contar caracteres de verdade:

```go
package main

import (
    "fmt"
    "unicode/utf8"
)

func main() {
    texto := "João"

    quantidade := utf8.RuneCountInString(texto)

    fmt.Println(quantidade)
}
```

A diferença principal é:

```go
len(texto)                    // quantidade de BYTES
utf8.RuneCountInString(texto) // quantidade de CARACTERES
```

Para exercícios básicos sem caracteres especiais, `len()` normalmente é suficiente.

---

## Prompt 2

### Prompt enviado

> por que deu erro de "status declarado e nao utilizado"?

### Resposta obtida

Em Go, toda variável declarada precisa ser utilizada.

Por exemplo:

```go
package main

func main() {
    status := "aprovado"
}
```

Nesse caso, a variável `status` foi criada, mas nunca utilizada, fazendo com que o compilador apresente um erro semelhante a:

```text
declared and not used: status
```

Uma maneira de corrigir é utilizar a variável:

```go
package main

import "fmt"

func main() {
    status := "aprovado"

    fmt.Println(status)
}
```

Caso a variável não seja necessária, ela deve ser removida.

---

## Prompt 3

### Prompt enviado

> veja o codigo:
>
> ```go
> package main
> import (
> "fmt"
> "unicode/utf8"
> )
>
> func ValidarCodigoRastreio(codigo string) (bool,string){
> quantidade := utf8.RuneCountInString(codigo)
>
> switch{
>     case quantidade == 10:
>         return true, "Código de rastreio registrado no sistema!"
>     default:
>         return false, "Erro: O código de rastreio deve ter exatamente 10 caracteres."
> }
>
> }
>
> func main() {
> status := false
>
> for status != true{
>     fmt.Print("Digite o código de rastreio: ")
>     var codigo string
>     fmt.Scanln(&codigo)
>     status, resultado := ValidarCodigoRastreio(codigo)
>
>     fmt.Println(resultado)
> }
>
> }
> ```

### Resposta obtida

O problema estava nesta linha:

```go
status, resultado := ValidarCodigoRastreio(codigo)
```

A variável `status` já havia sido criada anteriormente:

```go
status := false
```

Porém, ao utilizar `:=` dentro do bloco do `for`, uma nova variável `status` estava sendo criada naquele escopo.

A solução apresentada foi declarar `resultado` anteriormente e utilizar `=`:

```go
var resultado string
status, resultado = ValidarCodigoRastreio(codigo)
```

O código corrigido ficou:

```go
package main

import (
    "fmt"
    "unicode/utf8"
)

func ValidarCodigoRastreio(codigo string) (bool, string) {
    quantidade := utf8.RuneCountInString(codigo)

    switch {
    case quantidade == 10:
        return true, "Código de rastreio registrado no sistema!"
    default:
        return false, "Erro: O código de rastreio deve ter exatamente 10 caracteres."
    }
}

func main() {
    status := false

    for status != true {
        fmt.Print("Digite o código de rastreio: ")

        var codigo string
        var resultado string

        fmt.Scanln(&codigo)

        status, resultado = ValidarCodigoRastreio(codigo)

        fmt.Println(resultado)
    }
}
```

Também foi explicado que:

```go
for !status {
```

poderia ser utilizado no lugar de:

```go
for status != true {
```

pois as duas condições possuem o mesmo significado nesse caso.

---

# 4. Relatório de Aprendizado

A Inteligência Artificial foi utilizada somente durante a resolução do **Exercício 1**, principalmente para esclarecer dúvidas relacionadas à linguagem Go.

Inicialmente, tive dúvida sobre como contar a quantidade de caracteres presentes em uma `string`. A resposta me apresentou a função `len()` e também `utf8.RuneCountInString()`. Com isso, aprendi que `len()` conta a quantidade de bytes de uma string, enquanto `utf8.RuneCountInString()` pode ser utilizada para contar os caracteres Unicode, sendo importante quando existem caracteres como letras acentuadas.

Outra dificuldade encontrada foi o erro relacionado à variável `status` declarada e não utilizada. A explicação me ajudou a entender melhor o funcionamento da declaração de variáveis em Go e a diferença entre os operadores `:=` e `=`.

No meu código, eu já havia declarado a variável `status` antes do laço, mas utilizei novamente `:=` dentro do `for`. A resposta mostrou que isso estava relacionado ao escopo das variáveis e que, para atualizar a variável que já existia, eu deveria utilizar `=`.

Com essas respostas, consegui corrigir o código e entender melhor três conceitos que poderão ser utilizados em exercícios futuros: contagem de caracteres em strings, escopo de variáveis e diferença entre declaração (`:=`) e atribuição (`=`) em Go.

A IA não foi utilizada para a resolução dos demais exercícios desta atividade.
