package ex04;

public class Slime extends Monstro{

    public Slime(String nome){
        super(nome);
    }

    @Override
    public String receita(){
        return "Cozinhe em fogo baixo por 10 minutos e tempere com sal.";
    }
}
