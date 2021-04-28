import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thirdapp/models/todo.dart';
import 'package:thirdapp/views/pages/tododetails.dart';

class MyTodo extends StatefulWidget {
  final String id;
  final String userId;
  final String title;
  final Todo todo;
  MyTodo({this.id, this.title, this.todo, this.userId});
  @override
  _MyTodoState createState() => _MyTodoState();
}

class _MyTodoState extends State<MyTodo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TodoDetails(
                  title: widget.title, id: widget.id, userId: widget.userId),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.id,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Text(
                      widget.title,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
