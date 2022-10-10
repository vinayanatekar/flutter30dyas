import 'package:day1/pages/home_page.dart';
import 'package:day1/pages/login.dart';
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
    return MaterialApp(
      // home: Homepage(),

      routes: {
        "/": (context) => const Loginpage(),
        "/login": (context) => const Loginpage(),
      },
    );
  }
}
