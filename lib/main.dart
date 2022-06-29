import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpletodo/core/providers/constants.dart';
import 'package:simpletodo/core/providers/user_provider.dart';
import 'package:simpletodo/ui/screens/login_page.dart';
import 'package:simpletodo/ui/screens/splashscreen_page.dart';
import 'package:simpletodo/ui/screens/welcomepage/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'To Do';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
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
        home: SplashScreen(),
      ),
    );
  }
}
//
// void main1() {
//   runApp(Myhomepage());
// }
//
// class Myhomepage extends StatelessWidget {
//   static final String title = 'To Do';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'MyTD',
//       theme: ThemeData(
//           primaryColor: kPrimaryColor,
//           scaffoldBackgroundColor: kPrimaryLightColor,
//           elevatedButtonTheme: ElevatedButtonThemeData(
//             style: ElevatedButton.styleFrom(
//               elevation: 0,
//               primary: kPrimaryColor,
//               shape: StadiumBorder(),
//               maximumSize: Size(double.infinity, 48),
//               minimumSize: Size(double.infinity, 48),
//             ),
//           ),
//           inputDecorationTheme: InputDecorationTheme(
//               filled: true,
//               fillColor: kPrimaryLightColor,
//               iconColor: kPrimaryColor,
//               prefixIconColor: kPrimaryColor,
//               contentPadding: EdgeInsets.symmetric(
//                   horizontal: defaultPadding, vertical: defaultPadding),
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                   borderSide: BorderSide.none))),
//       home: WelcomeScreen(),
//     );
//   }
// }
