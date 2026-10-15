from abc import ABC, abstractmethod

class MortoVivo:
    def __init__(self, nome, almas, estus):
        self.nome = nome
        self._almas = almas
        self.__estus = estus

    def get_estus(self):
        return self.__estus

    def set_estus(self, quantidade):
        if 0 <= quantidade <= 10:
            print("Definido com sucesso!\n")
            self.__estus = quantidade
        else:
            print("Quantidade de Estus invalida!\n")

    def mostrar_status(self):
        return f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"


class Clerigo(MortoVivo):
    def __init__(self, nome, almas, estus, milagre):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self):
        return f"{super().mostrar_status()} | Milagre: {self.milagre}\n"


if __name__ == "__main__":
    print("Inicializando personagens...\n")

    clerigo = Clerigo("Joshua", 3, 5, "Ressurgir")

    print("Status do clerigo:")
    print(clerigo.mostrar_status())

    print("Defininfo estus:")
    clerigo.set_estus(15)
    clerigo.set_estus(10)

    print("Status do clerigo:")
    print(clerigo.mostrar_status())
    print(clerigo._MortoVivo__estus)

    # print(clerigo.__estus)

'''
    print(clerigo.__estus)
          ^^^^^^^^^^^^^^^
AttributeError: 'Clerigo' object has no attribute '__estus'. Did you mean: 'get_estus'?

Isso quer dizer que o clerigo nao consegue acessar o atributo __estus diretamente, justamete por ele ser privado. Apenas acessivel por meio do metodo get_estus. Pelas minhas pesquisar no python isso apenas "embaralha" o codigo e nao deixa privado realmente, entao caso eu de um "print(clerigo._MortoVivo__estus)" ele retorna normalmente, so serve mais como boas praticas mesmo os dois underlines
'''
        


