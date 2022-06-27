import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpletodo/ui/screens/login_page.dart';
import 'package:simpletodo/ui/screens/registration_page.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greetings
              Padding(
                padding: EdgeInsets.only(top: 70),
              ),
              Text(
                'Welcome user',
                style: GoogleFonts.merriweather(
                    fontSize: 20, color: Color(0xFFafeddd)),
              ),
              SizedBox(height: 10),
              Text(
                'To Do Application',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 30),
              //textfield username

              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFade0d4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text('Login'),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFade0d4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registration()),
                      );
                    },
                    child: Text('Register'),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
