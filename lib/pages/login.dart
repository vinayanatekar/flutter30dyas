import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Text(
        "loginpage",
        style: TextStyle(
          fontSize: 20,
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 2.0,
      ),
    ));
  }
}
