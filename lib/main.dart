import 'package:day1/pages/home_page.dart';
import 'package:day1/pages/login.dart';
import 'package:day1/pages/text.dart';
import 'package:day1/pages/utilities/button.dart';
import 'package:day1/pages/utilities/routes.dart';
import 'package:day1/widget/theme.dart';
import 'package:flutter/material.dart';
//import 'pages/home_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    //int days = 30;
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: Mytheme.lighttheme(context),
      // home: Homepage(),
      // initialRoute:  Loginpage(),
      routes: {
        MyRoutes.loginRoute: (context) => const Loginpage(),
        MyRoutes.homeRoute: (context) => const Homepage(),
        MyRoutes.textRoute: (context) => const TextWidget(),
        MyRoutes.buttonRoute: (context) => const ButtonApp()
      },
    );
  }
}
