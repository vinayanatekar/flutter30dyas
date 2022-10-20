// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/utilities/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final Imageurl =
        "https://scontent.fblr22-1.fna.fbcdn.net/v/t39.30808-6/219585930_4302148243183997_1136725343579564325_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=cAkK66QVqlMAX8bmTch&_nc_ht=scontent.fblr22-1.fna&oh=00_AT9UAE9-xi-x62-pKVR4kkVgPADr5dDDjDGg8pxCNxWP_w&oe=6355095F";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(padding: EdgeInsets.zero,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountName: Text("Vinaya Natekar"),
                      accountEmail: Text("vinayanatekar@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(Imageurl),
                      ))),
              ListTile(
                onTap: () async {
                  await Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                leading: Icon(CupertinoIcons.home, color: Colors.white),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () async {
                  await Navigator.pushNamed(context, MyRoutes.loginRoute);
                },
                leading: Icon(CupertinoIcons.person, color: Colors.white),
                title: Text(
                  "Login",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                onTap: () async {
                  await Navigator.pushNamed(context, MyRoutes.textRoute);
                },
                leading: Icon(CupertinoIcons.text_cursor, color: Colors.white),
                title: Text(
                  "Text",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
      ),
    );
  }
}
