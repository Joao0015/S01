package ex04;

public class Main {
    public static void main(String[] args) {
        // agregacao
        Slime slime = new Slime("Slime Verde");
        Mandragora mandragora = new Mandragora("Mandrágora Gritona");

        Cozinheiro senshi = new Cozinheiro("Senshi", "ferro");
        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandragora);

        senshi.servirBanquete();


        //COMPOSIÇÃO: a Panela é criada dentro do construtor do Cozinheiro com new Panela. Ela faz parte dele e não existe sem ele.

         //AGREGAÇÃO: os Monstros são criados na main, fora do Cozinheiro, e só são passados como referência em adicionarIngrediente().
         //Se o Cozinheiro deixar de existir, os Monstros continuam existindo.
    }
}