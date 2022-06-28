import 'dart:html';

import 'package:flutter/material.dart';
import 'package:simpletodo/ui/screens/LandingPage/landing_page.dart';
import 'package:simpletodo/ui/screens/navbar/navbar.dart';

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Page',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Lobster'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //       begin: Alignment.centerLeft,
          //       end: Alignment.centerRight,
          //       colors: [
          //         Color.fromRGBO(77, 209, 172, 1.0),
          //         Color.fromRGBO(7, 84, 62, 1.0),
          //       ]),
          // ),
          child: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
              child: LandingPage(),
            )
          ],
        ),
      )),
    );
  }
}

// class MyHomePage extends StatelessWidget(
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
// body: Container(decoration: BoxDecoration(
//   gradient: LinearGradient(
//     begin: Alignment.centerLeft,
//     end: Alignment.centerRight,
//     colors: [Color.fromRGBO(195, 20, 50, 1.0),Color.fromRGBO(36, 11, 54, 1.0)]
//   ),
// ),
// child: Column(

// ),
// ),
//     );
//     ),
//   }
// )
