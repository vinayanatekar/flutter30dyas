// ignore_for_file: prefer_const_constructors

import 'package:day1/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  //var leading;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      //shape: StadiumBorder(),
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.productname),
        subtitle: Text(item.description),
        trailing: Text("\u{20B9}${item.price.toString()}",
        textScaleFactor: 1.3,
        style: TextStyle(
          color:Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
