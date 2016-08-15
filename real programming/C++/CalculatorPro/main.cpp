#include <iostream>
#include <cstdlib>

using namespace std;

long Subtracao(int num1, int num2){
    int resultado;
    resultado = num1 - num2;
    return resultado;
}

int Soma(int , int){
    int num1,num2,resultado;
    resultado = num1 + num2;
    return resultado;
}

long Multiplicacao(){

}

long Divisao(){

}

int main()
{
    int num1,num2,resultado,opt;

    cout << "Digite o numero desejado: ";
    cin >> num1;
    system("cls");
    cout << "Digite o outro numero desejado: ";
    cin >> num2;
    system("cls");
    cout << "Digite a operacão desejada: \n" << endl;
    cout << "1 - Soma" << endl;
    cout << "2 - Subtracao" << endl;
    cout << "3 - Multiplicao" << endl;
    cout << "4 - Divisao\n" << endl;
    cin >> opt;
    system("cls");

    switch(opt){
    case 1:
    Soma(num1,num2);
    cout << "O resultado eh: " << resultado << endl;
    break;

    case 2:
    Subtracao(num1,num2);
    break;

    default:
    cout << "Operaçao invalida!" << endl;
    break;
    }


}
