// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:simpletodo/core/models/task.dart';
import 'package:simpletodo/ui/screens/task_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoList(),
      title: 'TodoList',
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    List<Task> taskList = [];
    void AddTaskData(Task task) {
      setState(() {
        taskList.add(task);
      });
    }

    void showTaskDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: AddTaskDialog(AddTaskData),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showTaskDialog,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('To Do'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                title: Text(
                  taskList[index].task,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.teal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          },
          itemCount: taskList.length,
        ),
      ),
    );
  }
}
