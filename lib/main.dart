import 'package:flutter/material.dart';
import 'package:simpletodo/ui/screens/front_page.dart';
import 'package:simpletodo/ui/screens/home_page.dart';
import 'package:simpletodo/ui/screens/login_page.dart';
import 'package:simpletodo/ui/screens/splashscreen_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'To Do';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: FrontPage(),
      );
}

class Myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
     decoration: BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
    ),
    ),
    );
  }
}
