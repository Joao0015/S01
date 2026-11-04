package ex01;

public class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou " + getNome() + ", o demônio do fogo. Esse castelo se move sob minhas ordens.");
    }
}