class HeroiOverwatch:
    def __init__(self, codinome, funcao):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} - Aumentando atributos de velocidade ")  


class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} - Dano recebido reduzido em 15% por 30 segundos")


class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} - Stunando time inimgo")  

    def curar_equipe(self):
        print(f"{self.codinome} - Curando aliados")   


if __name__ == "__main__":
    tanque = HeroiTanque("Reinhardt", "Tanque")
    suporte = HeroiSuporte("Mercy", "Suporte")

    herois: list[HeroiOverwatch] = [tanque, suporte]

    for heroi in herois:
        heroi.usar_suprema()
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()