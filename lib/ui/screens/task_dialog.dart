import 'package:flutter/material.dart';
import 'package:simpletodo/core/models/task.dart';

abstract class AddTaskDialog extends StatefulWidget {
  final Function(Task) addTask;

  AddTaskDialog(this.addTask);

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  @override
  Widget build(BuildContext context) {
    Widget buildTextfield(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    var taskController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(10),
      height: 350,
      width: 400,
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.teal,
            ),
          ),
          buildTextfield('My task', taskController),
          ElevatedButton(
            onPressed: () {
              final task = Task(taskController.text);

              widget.addTask(task);
            },
            child: Text('Add Task'),
          ),
        ],
      ),
    );
  }
}
