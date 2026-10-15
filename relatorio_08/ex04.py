from abc import ABC, abstractmethod


class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass


class Cyberdeck:
    def __init__(self, modelo):
        self.modelo = modelo


class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome, modelo_cyberdeck):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    def executar_invasao(self):
        print(f"{self.nome} usa o cyberdeck {self.cyberdeck.modelo} para quebrar o gelo (ICE) do servidor\n")


class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"Drone {self.codigo} interceptando o sinal da rede\n")


class CelulaHacker:
    def __init__(self, nome, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"Célula {self.nome} iniciando o ataque!\n")
        for membro in self.membros:
            membro.executar_invasao()


if __name__ == "__main__":
    netrunner = OperadorNetrunner("Netrunner", "Modelo X")
    drone = DroneDeVigilancia("Drone 01")

    celula = CelulaHacker("Alfa", [netrunner, drone])
    celula.iniciar_ataque()

    # unidade = IUnidadeDeRede()
    # TypeError: Can't instantiate abstract class IUnidadeDeRede without an implementation for abstract method 'executar_invasao'
    # A interface é só um contrato, então não pode virar objeto.