package ex04;

public class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Asse no forno por 20 minutos com azeite e uma pitada de sal.";
    }
}