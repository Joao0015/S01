package ex02;

import java.util.ArrayList;

public class CafeLeblanc {
    // ArrayList: lista que cresce sozinha. <ItemDoCardapio> = só aceita esse tipo
    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc() {
        this.cardapio = new ArrayList<>(); // lista vazia
    }

    public void adicionar(ItemDoCardapio item) {
        cardapio.add(item);
    }

    public void mostrarCardapio() {
        // for-each: "para cada item dentro de cardapio"
        for (ItemDoCardapio item : cardapio) {
            System.out.printf("%s - R$ %.2f%n", item.getNome(), item.precoFinal());
        }
    }
}