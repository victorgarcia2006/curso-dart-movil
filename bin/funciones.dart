import 'dart:io';

//Funciones vacías: Main
void main(){
  suma(2, 3);
  int resultado = resta(5, 2);
  print(resultado);
}

//Funcion con parametros
void suma(int a, int b){
  print(a + b);
}

//Funcion con retorno
int resta(int a, int b){
  return a - b;
}

//Funcion flecha
int multiplicar(int a, int b) => a * b;