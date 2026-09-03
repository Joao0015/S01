use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64{
    let NPT = (prova1 + prova2) /2.0;
    let PF = (NPT * 0.6) + (redacao * 0.4);

    if PF >= 60.0 {
        println!("Parabens! Candidato aprovado no processo seletivo.");
    }
    else{
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
    }
    PF
}

fn main() {
   
    let mut prova1 = String::new();
    let mut prova2 = String::new();
    let mut nota_redacao = String::new();
     
    println!("Digite a nota da Prova Teorica 1: ");
    io::stdin().read_line(&mut prova1).expect("Erro ao ler");
    let p1: f64 = prova1.trim().parse().unwrap_or(0.0);

    println!("Digite a nota da Prova Teorica 2: ");
    io::stdin().read_line(&mut prova2).expect("Erro ao ler");
    let p2: f64 = prova2.trim().parse().unwrap_or(0.0);

    println!("Digite a nota da Redacao");
    io::stdin().read_line(&mut nota_redacao).expect("Erro ao ler");
    let redacao: f64 = nota_redacao.trim().parse().unwrap_or(0.0);

    let pf = calcular_pontuacao(p1, p2, redacao);   

    println!("Pontuacao Final: {}", pf); 
     
}
