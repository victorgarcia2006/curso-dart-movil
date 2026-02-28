import 'dart:io';

void main() {
  List<int> numeros = [1, 2, 3, 4, 5]; // <- Manera recomendada
  var nombres = ["Ana", "Juan"];

  print(numeros[0]);

  List<String> tareas = [];
  //Agregar elementos
  tareas.add("Hacer ejercicio");
  tareas.add("Comprar mandado");
  tareas.add("Estudiar");
  tareas.add("Leer un libro");
  print(tareas);

  //Longitud de la lista
  print(tareas.length);

  //Eliminar elementos
  tareas.remove("Hacer ejercicio"); // <- Elimina el elemento por valor
  print(tareas);
  tareas.removeAt(0); // <- Elimina el elemento por índice
  print(tareas);

  //Recorrer la lista
  for (int i = 0; i < tareas.length; i++){
    print("${i + 1}. ${tareas[i]}");
  }

  //For each o for in
  for(String tarea in tareas){
    print(tarea);
  }

  //Ejercicio 1: Crear un programa que dada una lista de calificaciones calcule la media, la mediana y la moda
  List<double> calificaciones = [85.5, 92.0, 78.5, 92.0, 85.5, 92.0, 55.6];

  //Calcular el promedio
  double promedio = 0;
  double suma = 0;
  for (double cal in calificaciones) {
    suma += cal;
  }
  promedio = suma / calificaciones.length;

  //Calcular la mediana
  calificaciones.sort();
  double mediana = calificaciones[calificaciones.length ~/ 2];

  print("Promedio: $promedio");
  print("Mediana: $mediana");

  /*Ejercicio 2: Crea un programa en el que se muestre al usuario un menu de diversas
  acciones que pueda hacer con su lista de tareas, por ejemplo:
  - Agregar tarea
  - Editar tarea
  - Eliminar tarea
  - Buscar tarea
  - Mostrar todas las tareas */

  List<String> tareas = [];
  int opcion = 0;

  do {
    print("Seleccione una opcion: ");
    print("1. Agregar tarea");
    /* print("2. Editar tarea");
    print("3. Eliminar tarea"); */
    print("2. Buscar tarea");
    print("3. Mostrar todas las tareas");
    print("4. Salir");

    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1: 
        print("Ingrese la tarea: ");
        String tarea = stdin.readLineSync()!;
        tareas.add(tarea);
        break;
      case 2:
        if(tareas.isEmpty){
          print("No hay tareas para buscar");
          break;
        } else {
          print("Ingrese una palabra clave para buscar: ");
          String palabraClave = stdin.readLineSync()!;
          bool encontrada = false;
          for(String tarea in tareas){
            if(tarea.contains(palabraClave.toLowerCase())){
              encontrada = true;
              print(tarea);
            }
          }
          if(!encontrada){
            print("No se encontró la tarea");
          }
        }
        break; 
      case 3:
        if(tareas.isEmpty){
          print("No hay tareas para mostrar");
          break;
        } else {
          print("Tareas: ");
          for(int i = 0; i < tareas.length; i++){
            print("${i + 1}. ${tareas[i]}");
          }
        }
        break;
      case 4:
        print("Saliendo...");
        break;
      default:
        print("Opcion no valida");
    }
  } while(opcion != 4);
}
