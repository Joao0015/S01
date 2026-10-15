class Persona:
    def __init__(self, nome, arcano):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Nome: {self.nome} | Arcano: {self.arcano}\n")


class Aliado:
    def __init__(self, nome, codinome):
        self.nome = nome
        self.codinome = codinome


class Lider:
    def __init__(self, codinome):
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco")
        self._equipe = []

    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)
        print(f"{aliado.nome} recrutado para o bando\n")   

    def infiltrar(self, palacio):
        print(f"{self.codinome} invadiu o Palácio de {palacio}!\n")
        self.persona.invocar()
        print("Listagem da equipe: \n")
        for aliado in self._equipe:
            print(f"{aliado.nome} ({aliado.codinome})")   


if __name__ == "__main__":
    skull = Aliado("Ryuji Sakamoto", "Skull")
    panther = Aliado("Ann Takamaki", "Panther")

    joker = Lider("Joker")
    joker.recrutar(skull)
    joker.recrutar(panther)

    joker.infiltrar("Kamoshida")

# Podemos definir Composição e Agregação em Python de um jeito simples:
# Composição: o objeto é criado dentro da própria classe (no __init__), então ele só
# existe enquanto o objeto que o criou existir. Ex.: a Persona Arsène nasce dentro do Joker.
# Agregação: o objeto é criado fora (na main) e passado por parâmetro para os métodos,
# então ele continua existindo mesmo se o objeto que o guarda sumir. Ex.: Skull e Panther
# existem antes de serem recrutados pelo Joker.