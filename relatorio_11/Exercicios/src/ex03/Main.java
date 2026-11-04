package ex03;

public class Main {
    public static void main(String[] args) {
        Alienigena bilu = new Alienigena("Bilu");
        EspiritoYoukai kitsune = new EspiritoYoukai("Kitsune");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Floresta de Sakuras", kitsune);
        mapa.registrar("Alto do morro", bilu);

        mapa.investigar("Floresta de Sakuras");
        mapa.investigar("Alto do morro");
        mapa.investigar("Praça central"); // não registrado
    }
}