import 'package:flutter/material.dart';
import 'package:simpletodo/ui/screens/front_page.dart';
import 'package:simpletodo/ui/screens/home_page.dart';
import 'package:simpletodo/ui/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpletodo/ui/screens/splashscreen_page.dart';
import 'package:simpletodo/ui/screens/web_page.dart';

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
          textTheme:
              GoogleFonts.robotoCondensedTextTheme(Theme.of(context).textTheme)
                  .apply(
            bodyColor: Colors.black,
          ),
          primarySwatch: Colors.teal,
        ),
        home: HomePage(),
      );
}
