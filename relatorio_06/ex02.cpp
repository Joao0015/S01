#include <iostream>
#include <string>

using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    // Setters
    void setNome(string n) {
        nome = n;
    }

    void setArcana(string a) {
        arcana = a;
    }

    void setRank(int r) {
        rank = r;
    }

    // Getters
    string getNome() {
        return nome;
    }

    string getArcana() {
        return arcana;
    }

    int getRank() {
        return rank;
    }

    // Método para incrementar o rank em +1
    void subirRank() {
        rank++;
    }
};

int main() {
    LinkSocial link;

    // Definindo valores
    link.setNome("Caneta Azul");
    link.setArcana("Presidente da Republica");
    link.setRank(999);

    cout << "Status inicial:" << endl;
    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;
    cout << endl;

    // Aumentando o rank
    link.subirRank();

    cout << "Status apos subir de rank:" << endl;
    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;

    return 0;
}