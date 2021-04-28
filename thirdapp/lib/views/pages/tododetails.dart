import 'package:flutter/material.dart';

class TodoDetails extends StatefulWidget {
  final String userId;
  final String id;
  final String title;
  TodoDetails({this.userId, this.title, this.id});
  @override
  _TodoDetailsState createState() => _TodoDetailsState();
}

class _TodoDetailsState extends State<TodoDetails> {
  // String myInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [InkWell(onTap: () {}, child: Icon(Icons.search))],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                widget.id,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(widget.userId),
              SizedBox(
                height: 15,
              ),
              Text(widget.title),
            ],
          ),
        ),
      ),
    );
  }
}
