class FichaDeCriatura{
    constructor(criatura, nivelDePerigo){
        this.criatura = criatura
        this.nivelDePerigo = nivelDePerigo
    }

    descrever(){
        return `${this.criatura} com nivel de perigo de ${this.nivelDePerigo}\n`
    }
}

class DiarioMisterioso{
    #fichas
    constructor(numero) {
        this.numero = numero
        this.#fichas = []
    }

    anotar(criatura, nivelDePerigo){
        const ficha = new FichaDeCriatura(criatura, nivelDePerigo)
        this.#fichas.push(ficha)
    }

    exibirFichas(){ 
        console.log(`Numero do diario: ${this.numero}`)
        this.#fichas.forEach(f => {
            console.log(f.descrever())
        });
    }
}

class Funcionario{
    constructor(nome, cargo){
        this.nome = nome
        this.cargo = cargo
    }
}
class CabanaDoMisterio {
    #funcionarios

    constructor(dono){
        this.dono = dono
        this.#funcionarios = []
    }

    contratar(funcionario){
        this.#funcionarios.push(funcionario)
    }

    abrirAsPortas(){
        console.log(`O dono é ${this.dono}`)
        console.log(`Os funcionarios sao: \n`)
        this.#funcionarios.forEach(f =>
            console.log(`${f.nome} - ${f.cargo}\n`))
        }
}

const diario = new DiarioMisterioso(3)

diario.anotar("Gnomo do Jardim" , 5)
diario.anotar("Vampiro" , 7)
diario.anotar("Bill" , 999)

diario.exibirFichas()

const wendy = new Funcionario("Wendy", "Recepcionista")
const soos = new Funcionario("Soos", "Question Mark (?)")

const cabana = new CabanaDoMisterio("Stan Pines")

cabana.contratar(wendy)
cabana.contratar(soos)

cabana.abrirAsPortas()

// AGREGAÇÃO x COMPOSIÇÃO

// A agregação nesse código seriam os funcionarios em relacao a loja, se a loja deixa de existir, os funcionarios nao morrem.
// A composicao seria a ficha em relacao ao diario, caso o diario for destruido, se perde todas as fichas dos monstros