use std::io;

fn validar_placa(placa: &str) -> bool {
    let mut maiusculas = 0;
    let mut numeros = 0;

    if placa.len() < 7 {
        return false;
    }

    for c in placa.chars() {

        if c.is_ascii_uppercase() {
            maiusculas += 1;
        }

        if c.is_numeric() {
            numeros += 1;
        }
    }

    if maiusculas >= 4 && numeros >= 2 {
        true
    } else {
        false
    }
}

fn main() {
    loop {
        let mut placa = String::new();

        println!("Digite a placa do veiculo:");
        io::stdin().read_line(&mut placa).expect("Erro ao ler");

        let placa = placa.trim();

        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa invalida. Digite novamente.");
        }
    }
}
