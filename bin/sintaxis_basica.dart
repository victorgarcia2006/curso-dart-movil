import 'dart:io';
void main() {
  // Variables y tipos de datos
  int edad = 20; // <- Entero
  double altura = 1.65; // <- Decimal
  String nombre = "Ana"; // <- Cadena de texto
  bool esEstudiante = true; // <- Booleano

  var ciudad = "CDMX"; // <- Variable con tipo dinámico

  print("Esta ciudad es: $ciudad");

  //Constantes
  const pi = 3.14; //Constante de tipado dinamico
  const String escuela = "IPN"; // Constante de tipado estático
  final double area = 1.23; // Constante de tipado estático

  //Entrada y salida de datos
  print("¿Como te llamas?");
  String? nombreUsuario = stdin.readLineSync();
  print("Hola $nombreUsuario");

  //Leer numeros
  print("¿Cuantos años tienes?");
  int edadUsuario = int.parse(stdin.readLineSync()!);
  print("Tienes $edadUsuario años");

  //Operadores aritméticos
  print("Digite el primer numero");
  int numero1 = int.parse(stdin.readLineSync()!);
  print("Digite el segundo numero");
  int numero2 = int.parse(stdin.readLineSync()!);

  print("La suma es: ${numero1 + numero2}"); // <- Suma
  print("La resta es ${numero1 - numero2}"); // <- Resta
  print("La multiplicacion es ${numero1 * numero2}"); // <- Multiplicacion
  print("La division es ${numero1 / numero2}"); // <- Division
  print("El residuo es ${numero1 % numero2}"); // <- Residuo
  //print("La potencia es ${numero1 ~/ numero2}"); // <- Potencia

  //Ejercicio 1: Calculen el area de un triangulo


  
}