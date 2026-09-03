use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    let mut diferenca = palpite - numero_secreto;

    if diferenca < 0 {
        diferenca = diferenca * -1;
    }

    if diferenca <= 5 {
        true
    } else {
        false
    }
}

fn main() {
    let numero_secreto: i32 = 42;

    loop {
        let mut entrada = String::new();

        println!("Digite seu palpite:");

        io::stdin().read_line(&mut entrada).expect("Erro ao ler");

        let palpite: i32 = entrada.trim().parse().unwrap_or(0);

        if acertou_o_alvo(palpite, numero_secreto) {
            let mut diferenca = palpite - numero_secreto;
       
            if diferenca < 0 {
                diferenca = diferenca * -1;
            }


            println!(
                "Voce acertou! Ficou a apenas {} unidades do numero secreto!",
                diferenca
            );

            break;
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
