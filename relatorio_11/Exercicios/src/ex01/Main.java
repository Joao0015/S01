package ex01;

public class Main {
    public static void main(String[] args) {
        Morador howl = new Mago("Howl", "Transformação");
        Morador calcifer = new DemonioDoFogo("Calcifer");

        howl.apresentar();
        calcifer.apresentar();


        // Morador qualquer = new Morador("Ninguém");
        // ex01.Morador is abstract; cannot be instantiated
    }
}