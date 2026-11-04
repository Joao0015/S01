package ex01;

public abstract class Morador {
    private String nome; // private: só esta classe mexe direto

    public Morador(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    // abstrato: sem corpo, só a assinatura. As filhas são obrigadas a implementar
    public abstract void apresentar();
}