#include <iostream>
#include <stdlib.h> // Libreria que permite usar la función system() y así limpiar la pantallla y esperar tecla
#include <string> // Libreria para convertir enteros a string
using namespace std;

// Variable global
int Captura;

// Declaracion de las funciones
void ProcedimientoTablaMultiplicar(int Captura);
void ProcedimientoMostrarEvaluacionPrimo(int Captura);
void ProcedimientoDiagonalesMatriz(int Captura);


// Funcion principal, donde se ejecutará todo el programa
int main() {

  system("color E0"); // Funcion para cambiar Background y Text color

  int Opcion;

  while (Opcion != 5) {
    
    cout << "\n\n----------- MENU PRINCIPAL -----------\n\n";
    cout << "1- Captura de valor\n";
    cout << "2- Generar tabla de multiplicar\n";
    cout << "3- Determinar si es primo o No primo\n";
    cout << "4- Capturar la matriz 4x4, desplegando sus diagonales\n";
    cout << "5- Salir del programa\n\n";
    cout << "--------------------------------------\n\n";

    printf("Tu opci%cn: ", 162);
    cin >> Opcion;
    cout << "\n";

    switch (Opcion){

        case 1:
          cout << "Desposite su valor: ";
          cin >> Captura;
          cout << "\n";
          
          system("pause");
          system("CLS");
          break; 
          
        case 2:
           ProcedimientoTablaMultiplicar(Captura);
          break;

        case 3:
          ProcedimientoMostrarEvaluacionPrimo(Captura);
          break;

        case 4:
          ProcedimientoDiagonalesMatriz(Captura);
          break;

        case 5:
          system("CLS");
          cout << "Gracias por utilizar nuestro programa!\n";
	        cout << "Made by: Franklyn - Ronald\n"; //TeamDolla
	        cout << "-- Fin del Programa --\n";
          break;

        default:
          cout << "\n\nHaz introducido un valor incorrecto, porfavor intenta nuevamente \n\n";

    }
  }
  return 0;
}



// FUNCIONES DEL PROGRAMA


// Multiplicación de la Captura 
void ProcedimientoTablaMultiplicar(int Captura) {
  
  int Factor;
  int Resultado;
    
  cout << "Tablar de Multiplicar\n\n";

  for(Factor = 1; Factor <= 12; ++Factor){
    
    Resultado = Captura * Factor;
    cout << Captura << " * " << Factor << " = " << Resultado << "\n";
  }

  cout << "\n";
  system("pause");
  system("CLS");
}

// Función que determina si el valor de la captura es PRIMO o NO PRIMO

void ProcedimientoMostrarEvaluacionPrimo(int Captura){

  int Contador = 0;
  int Divisor = 1;

  printf("-- Determinaci%cn de n%cmero primo --\n\n", 162, 163);

  while (Divisor <= Captura){

    if (Captura % Divisor == 0){
      Contador += 1;
    }
    
    Divisor +=1;
  }

  if (Contador == 2){
    cout << ">> El valor " + to_string(Captura) + " es primo\n\n";

} else{
    cout << ">> El valor " + to_string(Captura) + " no es primo\n\n";
  }

  system("pause");
  system("CLS");
}

//Procedimiento Diagonales Matriz

void ProcedimientoDiagonalesMatriz(int Captura){

    int Fila, Columna;
    int Matriz[5][5];

    cout << "-- Introduzca los valores de la matriz --\n";
    
      for (Fila = 1 ; Fila < 5 ; ++Fila){
        for (Columna = 1; Columna < 5; ++Columna){
          cin >> Matriz[Fila][Columna];         
        }
      }

      system("CLS");

    // Demostración específica de el lugar donde fueron almacenados los valores de la matriz
    
    cout << "\n";
    printf("-- Representaci%cn Sencilla --\n\n", 162);

    for (Fila = 1; Fila < 5; ++Fila){
      for (Columna = 1; Columna < 5; ++Columna){
        cout << "- En la fila " + to_string(Fila) + " de la columna " + to_string(Columna) + " fue alojado el valor: " + to_string(Matriz[Fila][Columna]) + "\n";
      }
    }

    // Asi vemos las matrices normalmente representadas:

    printf("\n\n-- Representaci%cn Gr%cfica --\n\n", 162,160);

    for (Fila = 1 ; Fila < 5 ; ++Fila){
      for (Columna = 1 ; Columna < 5 ; ++Columna){

        if (Columna == 4){
          cout<<" " + to_string(Matriz[Fila][Columna]) + " ]" << endl;
          
        } else {
           if (Columna == 1){
          cout<<"[ " + to_string(Matriz[Fila][Columna]) + " " ;

        } else{
            cout<<" " + to_string(Matriz[Fila][Columna]) + " ";
    }
   }           
  }
 }

  // Diagonales de la matriz

  cout << "\n\n -- Diagonales -- \n\n";
  cout << "La Matriz Diagonal Principal es: " + to_string(Matriz[1][1]) + " ; " + to_string(Matriz[2][2]) + "; " + to_string(Matriz[3][3]) + "; " + to_string(Matriz[4][4]) + "\n";

  cout << "La Matriz Diagonal Secundaria es: " + to_string(Matriz[4][1]) + " ; " + to_string(Matriz[3][2]) + " ; " + to_string(Matriz[2][3]) + "; " + to_string(Matriz[1][4]) + "\n\n";

  system("pause");
  system("CLS");
}
