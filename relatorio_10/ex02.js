class Pistola {
    constructor(modelo) {
        this.modelo = modelo
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome
        this.#pistola = new Pistola(modeloDaPistola)
    }

    usarHabilidade() {
        throw new Error("Implemente a habilidade para criar o Agente")
    }

    entrarEmCombate() {
        console.log(`${this.codinome} possui a pistola ${this.#pistola.modelo}`);
        console.log(`Habilidade: ${this.usarHabilidade()}`);
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return `Cortinas de fumaca lancada`
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return `Drone sobrevoando a area`
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return `Dash ativo`
    }
}

class Esquadrao {
    #agentes = []

    constructor(nome, agentes = []) {
        this.nome = nome
        this.#agentes = agentes
    }

    iniciarPartida() {
        console.log(`Nome do Esquadrão eh ${this.nome}\n`)

        this.#agentes.forEach(agente => {
            agente.entrarEmCombate()
        });
    }

    listarControladores() {
        return this.#agentes.filter(a => a instanceof Controlador)
    }
}

const omen = new Controlador("Omen", "Classic")
const clove = new Controlador("Clove", "Ghost")
const skye = new Iniciador("Skye", "Sherif")
const jet = new Duelista("Jet", "Classic")

const esquadrao = new Esquadrao("Loud", [omen, clove, skye, jet])

esquadrao.iniciarPartida()

esquadrao.listarControladores().forEach(e => console.log(`${e.codinome}`))

agente = new AgenteProtocolo("Um cara qualquer","Classic" )

// agente.entrarEmCombate()

// /box/index.js:16
//         throw new Error("Implemente a habilidade para criar o Agente")
//         ^

// Error: Implemente a habilidade para criar o Agente
//     at AgenteProtocolo.usarHabilidade (/box/index.js:16:15)
//     at AgenteProtocolo.entrarEmCombate (/box/index.js:21:41)
//     at Object.<anonymous> (/box/index.js:77:8)
//     at Module._compile (node:internal/modules/cjs/loader:1781:14)
//     at Object..js (node:internal/modules/cjs/loader:1913:10)
//     at Module.load (node:internal/modules/cjs/loader:1505:32)
//     at Function._load (node:internal/modules/cjs/loader:1309:12)
//     at wrapModuleLoad (node:internal/modules/cjs/loader:254:19)
//     at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:171:5)
//     at node:internal/main/run_main_module:36:49

// Node.js v22.23.2
