import 'dart:io';

void main() {
  //Condicionales
  //Ver si un alumno aprobo o reprobo
  print("Ingrese la calificacion del alumno: ");
  double calificacion = double.parse(stdin.readLineSync()!);

  if (calificacion >= 6) {
    print("Aprobado");
  } else {
    print("Reprobado");
  }

  //Ejercicio 2: Creen un programa que pida la edad del usuario y determinen si es mayor de edad o no

  //Condicionales con if's anidados
  //Ver si en un restaurante tienen cita y si tienen mesa disponible
  print("Tiene cita? (s/n)");
  String tieneCita = stdin.readLineSync()!;

  if(tieneCita == "s"){
    print("Tiene mesa disponible? (s/n)");
    String tieneMesa = stdin.readLineSync()!;

    if(tieneMesa == "s"){
      print("Puede entrar");
    } else {
      print("No puede entrar, no tiene mesa");
    }
  } else {
    print("No puede entrar, no tiene cita");
  }

  //Condicionales con más de una condicion
  //Ver si un numero es positivo, negativo o cero
  print("Ingrese un numero: ");
  int numero = int.parse(stdin.readLineSync()!);
  
  if(numero > 0){
    print("El numero es positivo");
  }else if(numero < 0){
    print("El numero es negativo");
  } else {
    print("El numero es cero");
  }

  /*Ejercicio 3: Crear un programa en el que se le pida una calificacion y ponga lo siguiente
  - Excelente -> 9-10
  - Bueno -> 7-8
  - Suficiente -> 6
  - Reprobado -> <6
   */

  //Sentencia switch-case
  //Vamos a crear un menú de usuario
  print("Seleccione la conversion que desea realizar: ");
  print("1. Celsius a Fahrenheit");
  print("2. Celsius a Kelvin");
  print("3. Fahrenheit a Celsius");
  print("4. Fahrenheit a Kelvin");
  print("5. Kelvin a Celsius");
  print("6. Kelvin a Fahrenheit");

  int opcion = int.parse(stdin.readLineSync()!);

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
    default:
      print("Opcion no valida");
      break;
  }

  /*
  Ejercicio 4: Crear un programa en el que se va a calcular el area de un 
  triangulo, rectangulo, circulo y trapecio.
   */
}
