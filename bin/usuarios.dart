import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  int id;
  String name;
  String email;

  //Constructor
  User(this.id, this.name, this.email);

  //Factory
  factory User.fromJson(Map<String, dynamic> json){
    return User(
      json['id'],
      json['name'],
      json['email'],
    );
  }

  void mostrar(){
    print("$name - $email");
  }
}

Future<List<User>> obtenerUsuarios() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/users");

  var response = await http.get(url);

  if(response.statusCode == 200){
    List data = json.decode(response.body);
    return data.map((e) => User.fromJson(e)).toList();
  } else {
    print("Error al obtener usuarios");
    return [];
  }
}

Future<void> main() async {
  List<User> usuarios = await obtenerUsuarios();

  for(var user in usuarios){
    user.mostrar();
  }
}