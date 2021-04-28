import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thirdapp/models/todo.dart';
import 'package:thirdapp/services/todoservice.dart';
import 'package:thirdapp/views/widgets/mytodo.dart';

class TodosPage extends StatefulWidget {
  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  bool loading = true;
  List<Todo> todos = [];

  getData() async {
    todos = await TodoService().getTodos();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: Colors.red,
            ))
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) {
                return MyTodo(
                    todo: todos[index],
                    title: todos[index].title,
                    id: "${todos[index].id}",
                    userId: "${todos[index].userId}");
              },
            ),
    );
  }
}
