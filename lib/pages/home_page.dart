// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:day1/models/catalog.dart';
//import 'package:day1/pages/utilities/routes.dart';
import 'package:day1/widget/drawer.dart';
import 'package:day1/widget/item_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final dumylist=List.generate(20,((index) => CatalogModel.items[0]));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: dumylist.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
            item: dumylist[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
