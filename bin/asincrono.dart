Future<String> obtenerMensaje() async {
  await Future.delayed(Duration(seconds: 2));
  return "Datos cargados";
}

Future<void> main() async {
  print("Cargando...");

  String mensaje = await obtenerMensaje();
  
  print(mensaje);
}