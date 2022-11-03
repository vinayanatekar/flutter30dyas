// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:convert';
import 'package:day1/models/catalog.dart';
//import 'package:day1/pages/utilities/routes.dart';
import 'package:day1/widget/drawer.dart';
import 'package:day1/widget/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    var encodedata = await rootBundle.loadString("assets/files/product.json");
    var decode = jsonDecode(encodedata);
    var finaldata = decode["products"];
    // ignore: unused_local_variable
    CatalogModel.items =
        List.from(finaldata).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
    // ignore: avoid_print
    //print(finaldata);
  }

  @override
  Widget build(BuildContext context) {
    // final dumylist = List.generate(20, ((index) => CatalogModel.items[0]));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        // ignore: unnecessary_null_comparison
        child:(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ):Center(child:CircularProgressIndicator()),
      ),
      drawer: const MyDrawer(),
    );
  }
}
