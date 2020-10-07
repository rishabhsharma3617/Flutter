import 'package:flutter/material.dart';
import './inputText.dart';
import './List.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String inputTask = '';
  int countInputString = 0;
  List<Map<String, dynamic>> tasks = [
    {'taskName': 'Make 1', 'isDone': false},
    {'taskName': 'Make 2', 'isDone': false},
    {'taskName': 'Make 3', 'isDone': true},
    {'taskName': 'Make 4', 'isDone': true},
  ];
  void addTodo(String todo) {
    print('hryjj');
    setState(() {
      tasks.add({'taskName': todo, 'isDone': false});
    });
  }

  void deleteTodo(String todo) {
    print(todo);
    int index;
    for (var i = 0; i < tasks.length; i++) {
      if (tasks[i]['taskName'] == todo) {
        index = i;
      }
    }
    setState(() {
      tasks.removeAt(index);
    });
    print(index);
  }

  void toggleCheck(String todo) {
    int index;
    for (var i = 0; i < tasks.length; i++) {
      if (tasks[i]['taskName'] == todo) {
        index = i;
      }
    }
    setState(() {
      tasks[index]['isDone'] = !tasks[index]['isDone'];
    });
    print(tasks[index]['isDone']);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY TODO LIST'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
                alignment: Alignment.topCenter,
                child: CustomForm(
                  addTodo: addTodo,
                )),
            Container(
              height: 500,
              width: 345,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ...tasks
                      .map((task) => ListItem(task['taskName'], task['isDone'],
                          deleteTodo, toggleCheck))
                      .toList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
