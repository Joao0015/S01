class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome
    }

    atacar(alvo) {
        console.log(`${this.nome} atacou ${alvo.nome} com sua aura`)
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} utilizou Jajanken – Rock para atacar ${alvo.nome}`)
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} utilizou Godspeed para atacar ${alvo.nome}`)
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} utilizou Chain Jail para atacar ${alvo.nome}`)
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome
        this.numero = numero
    }
}

class TrupeFantasma {
    #aranhas

    constructor(cidade, aranhas = []) {
        this.cidade = cidade
        this.#aranhas = aranhas
    }

    revelarAranhas() {
        console.log(`A Trupe Fantasma foi avistada em ${this.cidade}\n`)
        this.#aranhas.forEach(a =>
            console.log(`Aranha numero ${a.numero} - ${a.nome}`))
    }

    buscarAranha(numero) {
        return this.#aranhas.find(a => a.numero === numero)
    }
}

const chrollo = new Aranha("Chrollo", 0)
const feitan = new Aranha("Feitan", 2)

const trupe = new TrupeFantasma("Yorknew", [chrollo, feitan])

trupe.revelarAranhas()

const achaAranha = trupe.buscarAranha(0)

const hunters = [
    new Intensificador("Gon"),
    new Transmutador("Killua"),
    new Materializador("Kurapika")
]

console.log("\n")
hunters.forEach(h => h.atacar(achaAranha))