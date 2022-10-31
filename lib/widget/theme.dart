import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      );
  static ThemeData darktheme(BuildContext context) => ThemeData(
        // primarySwatch: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      );
}
