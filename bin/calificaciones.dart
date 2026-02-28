import 'dart:io';

void main(){
  //Pido al usuario que ingrese sus calificaciones 
  print("Ingrese sus calificaciones separadas por espacios: ");

  String? input = stdin.readLineSync();

  if(input != null && input.isNotEmpty){
    //Separar por espacios
    List<String> partes = input.split(" ");

    //Convertir a numeros
    List<double> calificaciones =
      partes.map((e) => double.parse(e)).toList();
    
    double promedio = media(calificaciones, calificaciones.length);
    double med = mediana(calificaciones, calificaciones.length);
    double mod = moda(calificaciones);

    print("Promedio: $promedio");
    print("Mediana: $med");
    print("Moda $mod");
  } else {
    print("No se ingresaron calificaciones");
    return;
  }
}

//Calcular la media
double media(List<double> numeros, int longitud){
  double suma = 0;

  for(int i = 0; i < longitud; i++){
    suma += numeros[i];
  }

  return suma / longitud;
}

//Calcular la mediana
double mediana(List<double> numeros, int longitud){
  //Ordenar la lista
  numeros.sort();

  if(longitud % 2 == 0){
    return (numeros[longitud ~/ 2] + numeros[(longitud ~/ 2) - 1]) / 2; 
  } else {
    return numeros[longitud ~/ 2];
  }
}

//Calcular la moda
double moda(List<double> numeros){
  Map<double, int> frecuencias = {};
  double moda = numeros[0];
  int frecuenciaMaxima = 0;

  for(double numero in numeros){
    frecuencias[numero] = (frecuencias[numero] ?? 0) + 1;

    if(frecuencias[numero]! > frecuenciaMaxima){
      frecuenciaMaxima = frecuencias[numero]!;
      moda = numero;
    }
  }

  return moda;
}