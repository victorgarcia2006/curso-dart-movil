import 'dart:io';

void main() {
  //Ciclos
  
  //For
  int suma = 0;
  for(int i = 0; i < 10; i++){
    //Sume los numeros del 1 al 10
    suma += (i + 1);
  }
  print(suma);

  //Calcular el factorial de cualquier numero entero
  print("Ingrese el numero del cual quiere calcular el factorial: ");
  int numero = int.parse(stdin.readLineSync()!);
  int factorial = 1;

  for(int i = 1; i <= numero; i++){
    //factorial = factorial * i
    factorial *= i;
  }
  print("El factorial de $numero es $factorial");

  //Ejercicio 5: Pide un numero al usuario y muestra su tabla de multiplicar del 1 al 10

  //While
  int number = 0;
  while(number != 0){
    print("Entre al while");
  }

  //Do-While
  do{
    print("Entre al do-while");
  } while(number != 0);

  //Menu mejorado
  int opcion;
  do{
    print("Seleccione la conversion que desea realizar: ");
    print("1. Celsius a Fahrenheit");
    print("2. Celsius a Kelvin");
    print("3. Fahrenheit a Celsius");
    print("4. Fahrenheit a Kelvin");
    print("5. Kelvin a Celsius");
    print("6. Kelvin a Fahrenheit");
    print("7. Salir");
    opcion = int.parse(stdin.readLineSync()!);

    print("Ingrese la temperatura: ");
    double temperatura = double.parse(stdin.readLineSync()!);
    double resultado;

  switch(opcion){
    case 1:
      resultado = temperatura * 9/5 + 32;
      print("La temperatura en Fahrenheit es: $resultado");
      break;
    case 2:
      resultado = temperatura + 273.15;
      print("La temperatura en Kelvin es $resultado");
      break;
    case 3:
      resultado = (temperatura - 32) * 5/9;
      print("La temperatura en Celsius es $resultado");
      break;
    case 4: 
      resultado = (temperatura + 459.67) * 5/9;
      print("La temperatura en Kelvin es $resultado");
      break;
    case 5:
      resultado = temperatura - 273.15;
      print("La temperatura en Celsius es $resultado");
      break;
    case 6:
      resultado = (temperatura - 459.67) * 5/9;
      print("La temmperatura en Fahrenheit es $resultado");
      break;
    case 7: 
      print("Gracias, vuelva pronto");
      break;
    default:
      print("Opcion no valida");
      break;
  }
  } while(opcion != 7);

  //Ejercicio 6: Mejorar el menu del ejercicio 4

  for(int i = 0; i <= 5; i++){
    if(i == 3){
      continue; // <- Aqui continua el ciclo
    }
    if(i == 5){
      break; // <- Aqui lo termina
    }
    print(i);
  }
}