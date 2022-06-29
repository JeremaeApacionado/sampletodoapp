import 'package:flutter/material.dart';
import 'package:simpletodo/ui/screens/components/background.dart';
import 'package:simpletodo/ui/screens/responsive.dart';
import 'package:simpletodo/ui/screens/welcomepage/components/login_signup_btn.dart';
import 'package:simpletodo/ui/screens/welcomepage/components/welcome_image.dart';
// import '..';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            mobile: MobileWelcomePage(),
            desktop: Row(
              children: [
                Expanded(
                  child: WelcomeImage(),
                ),
                Expanded(child: LoginSignupBtn()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomePage extends StatelessWidget {
  const MobileWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WelcomeImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginSignupBtn(),
            ),
            Spacer()
          ],
        )
      ],
    );
  }
}
