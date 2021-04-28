import 'package:dio/dio.dart';
import 'package:thirdapp/models/todo.dart';

class TodoService {
  String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> getTodos() async {
    List<Todo> Todos = [];

    Response response = await Dio().get(url);
    var data = response.data;
    data.forEach((todo) {
      Todos.add(Todo.fromJson(todo));
    });
    return Todos;
  }
}
