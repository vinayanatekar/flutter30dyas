// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'dart:async';

import 'package:day1/pages/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();
  moveToNext(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      // ignore: prefer_const_constructors
      await Future.delayed(Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            Image.asset(
              "assets/images/loginpage.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text("Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[300],
                  fontFamily: GoogleFonts.lato().fontFamily,
                )),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 35.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "User Name should not empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter User Password",
                      labelText: "User Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can not be empty";
                      } else if (value.length < 6) {
                        return "Password lenth should be at least 6";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Material(
                    // splashcolor
                    color: Colors.deepPurple,

                    // shape:changebutton? BoxShape.circle:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changebutton ? 50 : 10),
                    child: InkWell(
                      splashColor: Colors.green,
                      onHover: (value) {},
                      onTap: () => moveToNext(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changebutton ? 50 : 150,
                        alignment: Alignment.center,
                        //color: Colors.deepPurple,
                        child: changebutton
                            // ignore: prefer_const_constructors
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
