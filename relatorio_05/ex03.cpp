#include <iostream>
#include <iomanip>
using namespace std;

int main() {

    float capacidade, carga = 0;
    int opcao;

    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> capacidade;

    do {

        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch(opcao) {

            case 1:
                cout << fixed << setprecision(2);
                cout << "Carga Atual: " << carga << " kg / "
                     << capacidade << " kg" << endl;

                cout << "Espaco Disponivel: "
                     << capacidade - carga << " kg" << endl;
                break;

            case 2: {
                float peso;

                cout << "Digite o peso do pacote a ser carregado (kg): ";
                cin >> peso;

                if(carga + peso <= capacidade) {
                    carga = carga + peso;
                    cout << "Pacote adicionado com sucesso!" << endl;
                }
                else {
                    cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
                }

                break;
            }

            case 3: {
                float peso;

                cout << "Digite o peso do pacote a ser descarregado (kg): ";
                cin >> peso;

                if(peso <= carga) {
                    carga = carga - peso;
                    cout << "Pacote removido com sucesso!" << endl;
                }
                else {
                    cout << "Erro: nao ha peso suficiente para descarregar!" << endl;
                }

                break;
            }

            case 4:
                cout << "Encerrando sistema de telemetria..." << endl;
                break;

            default:
                cout << "Opcao invalida!" << endl;
        }

    } while(opcao != 4);

    return 0;
}
