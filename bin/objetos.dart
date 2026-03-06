import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class RemoteResource {
  Future<void> fetch(); // <- Método asíncrono
}

class Todo {
  //¿Qué atributos va a tener mi clase
  int _id;
  String _title;
  bool _completed;

  //Constructor
  Todo(this._id, this._title, this._completed);

  //Getters
  int get id => _id;
  String get title => _title;
  bool get completed => _completed;

  //Factory -> Constructor especial
  factory Todo.fromJson(Map<String, dynamic> json){
    return Todo(
      json['id'],
      json['title'],
      json['completed'],
    );
  }

  //Metodo
  void mostrar(){
    print("ID: $_id");
    print("Titulo: $_title");
    print("Completado: $_completed");
  }
}

class TodoService extends RemoteResource {
  @override
  Future<void> fetch() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");

    var response = await http.get(url);

    if(response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      Todo todo = Todo.fromJson(data);
      todo.mostrar();
    } else {
      print("Error al obtener los datos");
    }
  }
}

Future<void> main() async {
  TodoService service = TodoService();
  await service.fetch();
}
