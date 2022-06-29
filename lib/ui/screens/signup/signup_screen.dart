import 'package:flutter/material.dart';
import 'package:simpletodo/ui/screens/components/background.dart';
import 'package:simpletodo/ui/screens/signup/components/signup_to_top_image.dart';
import 'components/signup_form.dart';
import 'components/socal_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SignUpScreenTopImage(),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 8,
                  child: SignUpForm(),
                ),
                const Spacer(),
              ],
            ),
            SocalSignUp()
          ],
        ),
      ),
    );
  }
}
