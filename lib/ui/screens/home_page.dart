import 'package:flutter/material.dart';
import 'package:simpletodo/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Container(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF046951),
        title: Text(MyApp.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF046951),
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Color(0xFF51e8d1),
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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
