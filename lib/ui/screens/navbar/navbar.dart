import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:matcher/matcher.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20,horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'MyTD',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(
                  'About Us',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
                Text(
                  'To do',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 30),
              MaterialButton(
                color: Colors.amber,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0),),
              ),
              onPressed: (){},
              child: Text('Get Started',style: TextStyle(color: Colors.white),),
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20,horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
              Text(
                'MyTD',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 30),
                    Text(
                      'About Us',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 30),
                    Text(
                      'To do',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }
}
