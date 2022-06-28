import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simpletodo/ui/screens/front_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, frontPageRoute);
  }

  frontPageRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => FrontPage()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF2b8269),
              gradient: LinearGradient(
                colors: [(new Color(0xFF1b8567)), (new Color(0xFF75c9b1))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/MyTd.gif'),
              ),
              // child: Image.asset(
              //   'assets/images/MyTd.gif',
              //   width: width,
              // ),
            ),
          ),
          // Image.asset('assets/images/MyTd.gif')
        ],
      ),
    );
  }
}
