import 'package:flutter/material.dart';
import 'package:simpletodo/main.dart';
import 'package:simpletodo/ui/widgets/add_todo_dialog_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final currentWith = MediaQuery.of(context).size.width;
    final tabs = [
      Container(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF19c28a),
        title: Text(MyApp.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF19c28a),
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.teal,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder, size: 28),
            label: 'Folder',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Color(0xFFdeab04),
        onPressed: () => showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AddTodoDialogWidget();
          },
        ),
        child: Icon(Icons.add),
      ),
    );
  }

//   Future openDialog() => showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text(
//             'Task',
//             style: TextStyle(color: Colors.black),
//           ),
//           content: TextField(
//             autofocus: true,
//             decoration: InputDecoration(hintText: 'Your task'),
//             controller: controller,
//           ),
//           actions: [
//             TextButton(
//               child: Text('ADD'),
//               onPressed: submit,
//             )
//           ],
//         ),
//       );
//   void submit() {
//     Navigator.of(context).pop(controller.text);
//   }
}
