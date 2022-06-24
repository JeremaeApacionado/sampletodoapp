import 'package:flutter/material.dart';
import 'package:simpletodo/ui/screens/home_page.dart';

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
          scaffoldBackgroundColor: Color(0xFF73bfaf),
        ),
        home: HomePage(),
      );
}
