#include <iostream>
#include <string>

using namespace std;

// Classe base
class MembroInatel {
protected:
    string nome;

public:
    MembroInatel(string n) : nome(n) {}

    virtual void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
    }

    virtual ~MembroInatel() {}
};

// Classe filha Aluno
class Aluno : public MembroInatel {
private:
    string curso;

public:
    Aluno(string n, string c) : MembroInatel(n), curso(c) {}

    void seApresentar() override {
        cout << "Meu nome e " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};

// Classe filha Professor
class Professor : public MembroInatel {
private:
    string disciplina;

public:
    Professor(string n, string d) : MembroInatel(n), disciplina(d) {}

    void seApresentar() override {
        cout << "Meu nome e " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() {
    // Objeto da classe pai
    MembroInatel membro1("Roberto");

    // Objetos das classes filhas
    Aluno aluno1("Joaozin", "Engenharia de Pesca");
    Professor prof1("Carlos", "Redes(de pesca)");

     // Comparação do método seApresentar()
    membro1.seApresentar();
    aluno1.seApresentar();
    prof1.seApresentar();

    return 0;
}