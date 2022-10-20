// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Text Widget"),
      ),body: Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Text.rich(TextSpan( 
      // ignore: prefer_const_literals_to_create_immutables
      children: <TextSpan>[ 
         TextSpan(text: "Hello ", style:  
         TextStyle(fontStyle: FontStyle.italic)),  
         TextSpan(text: "World", style: 
         TextStyle(fontWeight: FontWeight.bold)),  
      ], ),

      ),),

      ),
    );
  }
}