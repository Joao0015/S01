package ex02;

public class Main {
    public static void main(String[] args) {
        ItemDoCardapio cafe = new ItemDoCardapio("Café coado", 12.00);
        ItemDoCardapio bolo = new ItemDoCardapio("Bolo de morango", 30.00);
        ComboLeblanc combo = new ComboLeblanc("Combo Café + Bolo de morango", 40.00);

        CafeLeblanc leblanc = new CafeLeblanc();
        leblanc.adicionar(cafe);
        leblanc.adicionar(bolo);
        leblanc.adicionar(combo);

        leblanc.mostrarCardapio();
    }
}