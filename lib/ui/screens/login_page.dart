import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpletodo/ui/screens/home_page.dart';
import 'package:simpletodo/ui/screens/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          Padding(padding: EdgeInsets.only(top: 70),
          ),
          Text(
            'Welcome user',
          style: GoogleFonts.merriweather(
          fontSize: 20,
          color: Color(0xFFafeddd)
          ),
          ),
          SizedBox(height: 10),
          Text('To Do Application',
          style: TextStyle(
          fontSize: 10,

          ),),
          SizedBox(height: 30),
          //textfield username
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFe6f5f1),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  style: TextStyle(
                  fontSize: 15,),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:'Username',
                    
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          //textfield password
      Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFe6f5f1),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                  fontSize: 15,),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:'Password',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          //login button
          // body: Container(
          //   alignment: Alignment.center,
          //   padding: EdgeInsets.all(32),
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(),
          //     child: Text('LogIn'),
          //     onPressed: () => ,
          //     ),

            
          // ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Center(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color: Color(0xFF04523d),
                borderRadius: BorderRadius.circular(12),),
                child: Text(
                  'Log In',
                style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold,
                fontSize: 15,
                ),
                ),
              ),
          ),
           ),
          SizedBox(height: 20),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Text('Dont have an account?', style: TextStyle(
                color: Colors.black, 
                fontWeight: FontWeight.bold
                ),
               ),

               Text('  Register Now', 
               style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold,

                ),
                ),
             ],
           )
        ],
        ),
      ),
      ),

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
                    fontSize: 20, color: Color(0xFFafeddd)
                    ),
              ),
          
              SizedBox(height: 10),
              Text(
                'To Do Application',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          
              SizedBox(height: 30),
              //textfield username
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFe6f5f1),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                      ),
                    ),
                  ),
                ),
              ),
          

              SizedBox(height: 20),
              //textfield password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFe6f5f1),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              //login button
              // body: Container(
              //   alignment: Alignment.center,
              //   padding: EdgeInsets.all(32),
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(),
              //     child: Text('LogIn'),
              //     onPressed: () => ,
              //     ),

              // ),

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
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Login'),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registration()),
                        );
                      },
                      child: Text('Register'),
                    ),
                  ),

                  // Text(
                  //   '  Register Now',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
