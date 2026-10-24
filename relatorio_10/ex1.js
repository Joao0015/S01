class Pokemon {
    #vida = 0
    
    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido
        this.tipo = tipo 
        this.#vida = vidaInicial
    }
    
    get vida(){
        return this.#vida
    }

    sofrerDano(pontos){
        if (this.#vida - pontos >= 0) {
            this.#vida -= pontos
            console.log(`Sobrou ${this.#vida} pontos de vida\n `)        
        }else{
            this.#vida = 0
            console.log("Morreu\n")
        }
    }

    atacar(alvo){
        console.log(`Garras mortais acertam ${alvo} `)
        alvo.sofrerDano(10)
    }

}


class Squirtle extends Pokemon{

    constructor(apelido,vidaInicial){
        super(apelido,"Água", vidaInicial)


    }
    atacar(alvo){
        console.log(`Pulso d'Água atinge ${alvo.apelido}`)
        alvo.sofrerDano(20)
    }

}
class Bulbasaur extends Pokemon{

    constructor(apelido,vidaInicial){
        super(apelido,"Planta", vidaInicial)


    }
    atacar(alvo){
        console.log(`Chicote de Vinha atinge ${alvo.apelido}`)
        alvo.sofrerDano(15)
    }

}

const squirtle = new Squirtle("Bixo de agua", 90)
const bulbasaur = new Bulbasaur("Bixo de planta", 30)

bulbasaur.atacar(squirtle)

squirtle.atacar(bulbasaur)
squirtle.atacar(bulbasaur)

console.log(`Vida do squitle é ${squirtle.vida}`)
console.log(`Vida do bulbasaur é ${bulbasaur.vida}`)



// console.log(`Vida do squirtle com #vida é ${squirtle.#vida}`)]

// /box/index.js:69
// console.log(`Vida do squirtle com #vida é ${squirtle.#vida}`)
//                                                     ^

// SyntaxError: Private field '#vida' must be declared in an enclosing class
//     at wrapSafe (node:internal/modules/cjs/loader:1713:18)
//     at Module._compile (node:internal/modules/cjs/loader:1755:20)
//     at Object..js (node:internal/modules/cjs/loader:1913:10)
//     at Module.load (node:internal/modules/cjs/loader:1505:32)
//     at Function._load (node:internal/modules/cjs/loader:1309:12)
//     at wrapModuleLoad (node:internal/modules/cjs/loader:254:19)
//     at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:171:5)
//     at node:internal/main/run_main_module:36:49