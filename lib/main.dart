import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:simpletodo/ui/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
=======
import 'package:simpletodo/ui/screens/front_page.dart';
import 'package:simpletodo/ui/screens/home_page.dart';
import 'package:simpletodo/ui/screens/login_page.dart';
import 'package:simpletodo/ui/screens/splashscreen_page.dart';
>>>>>>> 0f9057a47294c569cc24941a5b47e816608ef29b

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
          textTheme: GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme).apply(
            bodyColor: Colors.black,
          ),
          primarySwatch: Colors.teal,
        ),
<<<<<<< HEAD
        home: LoginPage(),
=======
        home: FrontPage(),
>>>>>>> 0f9057a47294c569cc24941a5b47e816608ef29b
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
