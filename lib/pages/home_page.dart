// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:day1/pages/utilities/routes.dart';
import 'package:day1/widget/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Catalog App"),
        
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(

            child: ElevatedButton(

          onPressed: () {
            // var myRoutes = MyRoutes();
            Navigator.pushNamed(context, MyRoutes.loginRoute);
          },
          child: Text("Login"),
          style: TextButton.styleFrom(maximumSize: Size(150, 40)),
          autofocus: true,
        )),
      ),
      drawer: const MyDrawer(),
    );
  }
}
