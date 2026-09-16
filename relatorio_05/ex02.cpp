#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float resultado = 1.0;
    for (int i = 0; i < tamanho; i++) {
        resultado *= probabilidades[i];
    }
    return resultado;
}

int main() {
    int n;
    cout << "Digite a quantidade de componentes: "<<endl;
    cin >> n;
    float probabilidades[n];
    for (int i = 0; i < n; i++) {
        cout << "Probabilidade do componente " << i+1 << ": " <<endl;
        cin >> probabilidades[i];
    }
    float resultado = calcular_confiabilidade_sistema(probabilidades, n);
    cout << "Confiabilidade total: " << resultado << endl;
    return 0;
}
