package ex03;

import java.util.HashMap;

public class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos; //chave valor, como se fosse um dict

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser); //par chave valor
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local); // get devolve null se a chave não existe
        if (ser == null) {
            System.out.println(local + " está tranquilo. Nenhuma aparição no local");
        } else {
            ser.manifestar();
        }
    }
}