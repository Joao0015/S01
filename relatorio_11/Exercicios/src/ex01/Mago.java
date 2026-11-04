package ex01;

public class Mago extends Morador {
    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome); // chama o construtor do pai (Morador)
        this.feitico = feitico;
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o mago " + getNome() + " e meu feitiço é " + feitico + ".");
    }
}