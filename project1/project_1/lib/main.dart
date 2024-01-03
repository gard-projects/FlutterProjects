import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ToDoWindow());
  }
}

class ToDoBar extends AppBar {
  ToDoBar({super.key})
      : super(
            title: const Text('To Do App',
                style: TextStyle(color: Colors.white, fontSize: 30.0)),
            centerTitle: true,
            backgroundColor: Colors.green.shade200);
}

class ToDoWindow extends StatelessWidget {
  const ToDoWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: ToDoBar(), body: ToDoList());
  }
}

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ToDoButtonList(),
    ]);
  }
}

class ToDoButtonList extends StatelessWidget {
  const ToDoButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("To Do List"),
        SizedBox(width: 50),
        Row(children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(minimumSize: Size(50, 50)),
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          ElevatedButton(onPressed: () {}, child: Icon(Icons.delete)),
          SizedBox(width: 10),
          ElevatedButton(onPressed: () {}, child: Icon(Icons.edit)),
        ]),
      ],
    );
  }
}
