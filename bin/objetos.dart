import 'dart:convert';
import 'package:http/http.dart' as http;

//Polimorfismo
abstract class RemoteResource {
  Future<void> fetch();
}

class Todo {
  //Atributos
  int _id;
  String _title;
  bool _completed;

  //Constructor
  Todo(this._id, this._title, this._completed);

  //Getters
  int get id => _id;
  String get title => _title;
  bool get completed => _completed;

  //Constructor especial: Un constructor que se ejecuta antes de que se cree el objeto
  factory Todo.fromJson(Map<String, dynamic> json){
    return Todo(
      json['id'], // _id = json['id']
      json['title'], // _title = json['title']
      json['completed'] // _completed = json['completed']
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
  @override //Polimorfismo
  Future<void> fetch() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");

    var response = await http.get(url);

    if(response.statusCode == 200){
      Map<String, dynamic> data = json.decode(response.body);

      Todo todo = Todo.fromJson(data); //Instanciar un objeto

      todo.mostrar();
    } else {
      print("Error al obtener los datos");
    }
  }
}

Future<void> main() async {
  TodoService todoService = TodoService();
  await todoService.fetch();
}