#include <iostream>
#include <iomanip>
using namespace std;

int main() {

    int matriz_solar[5][5] = {};
    int opcao = 0;
    int fileira, coluna;

    while(opcao != 3) {

        cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch(opcao) {

            case 1:

                cout << "Digite a fileira (0-4): ";
                cin >> fileira;

                cout << "Digite a coluna (0-4): ";
                cin >> coluna;

                if(matriz_solar[fileira][coluna] == 0) {
                    matriz_solar[fileira][coluna] = 1;

                    cout << "Sucesso: Celula solar ativada!" << endl;
                }
                else {
                    cout << "Erro: Celula solar ja esta em operacao!" << endl;
                }

                break;


            case 2:

                cout << "--- Mapa da Matriz Solar ---" << endl;

                for(int i = 0; i < 5; i++) {

                    for(int j = 0; j < 5; j++) {

                        cout << "[" << matriz_solar[i][j] << "] ";

                    }

                    cout << endl;
                }

                break;


            case 3:
                break;


            default:
                cout << "Opcao invalida!" << endl;

        }
    }


    int ativas = 0;

    for(int i = 0; i < 5; i++) {

        for(int j = 0; j < 5; j++) {

            if(matriz_solar[i][j] == 1) {
                ativas++;
            }

        }
    }


    int inativas = 25 - ativas;
    float percentual = (ativas / 25.0) * 100;


    cout << "=== RELATORIO FINAL DE OPERACAO ===" << endl;

    cout << "Total de celulas ATIVAS: "
         << ativas << endl;

    cout << "Total de celulas INATIVAS: " << inativas << endl;

    cout << fixed << setprecision(2);

    cout << "Capacidade Operacional: " << percentual << "%" << endl;


    return 0;
}
