package ex04;

import java.util.ArrayList;

public class Cozinheiro {
    private String nome;
    private Panela panela;                    // COMPOSIÇÃO
    private ArrayList<Monstro> ingredientes;  // AGREGAÇÃO

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela); // criada AQUI dentro
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro); // monstro já criado lá fora
    }

    public void servirBanquete() {
        System.out.println("O cozinheiro " + nome + " começou a preparar o jantar em sua panela de " + panela.getMaterial() + ".");
        System.out.println();

        for (Monstro m : ingredientes) {
            System.out.println("Ingrediente: " + m.getNome());
            System.out.println("Modo de preparo: " + m.receita());
            System.out.println();
        }

        System.out.println("O jantar está pronto. Bom apetite!");
    }
}