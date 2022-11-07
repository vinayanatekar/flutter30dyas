// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:convert';
//import 'dart:js';
//import 'dart:html';
import 'package:day1/models/catalog.dart';
//import 'package:day1/pages/utilities/routes.dart';
//import 'package:day1/widget/drawer.dart';
//import 'package:day1/widget/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:velocity_x/velocity_x.dart";

// ignore: unused_import
import '../widget/item_widget.dart';

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
        // ignore: avoid_unnecessary_containers
        body: SafeArea(
      // ignore: avoid_unnecessary_containers
      child: Container(
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Myheader(),
            // ignore: unnecessary_null_comparison
            if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              MyCatalog().expand()
            else
              Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    ));
  }
}

class Myheader extends StatelessWidget {
  const Myheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.purple900.make(),
        "Latest Product".text.xl2.make()
      ],
    );
  }
}

class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return MyCatalogclass(catalog: catalog);
        },
        itemCount: CatalogModel.items.length);
  }
}

// ignore: use_key_in_widget_constructors
class MyCatalogclass extends StatelessWidget {
  final Item catalog;
  const MyCatalogclass({
    Key? key,
    required this.catalog,
    // ignore: unnecessary_null_comparison
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        MyImage(image: catalog.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.productname.text.lg.purple900.bold.make(),
            catalog.description.text
                .textStyle(context.captionStyle)
                .make()
                .py8(),
                SizedBox(height: 20),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: ["\u{20B9} ${catalog.price}".text.bold.xl.make(),
              ElevatedButton(onPressed: (() {
                
              }
              
              ),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(7, 10, 12, 26)),
              shape: MaterialStateProperty.all(StadiumBorder())),
               child: "Buy".text.make())
              ],


            ).pOnly(right: 14.0)
          ],
        ))
      ],
    )).gray100.roundedLg.square(150).make().py16();
  }
}

class MyImage extends StatelessWidget {
  final String image;
  const MyImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.rounded.p8.gray50.make().p16().w40(context);
  }
}
