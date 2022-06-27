import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Image.network(
            'https://raw.githubusercontent.com/JeremaeApacionado/sampletodoapp/main/lib/utils/assets/images/todo-logo.PNG',
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
