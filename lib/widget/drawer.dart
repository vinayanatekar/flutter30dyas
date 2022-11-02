// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/utilities/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
   // final Imageurl =
     //   "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fpreviews%2F002%2F002%2F257%2Foriginal%2Fbeautiful-woman-avatar-character-icon-free-vector.jpg&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fwoman-avatar&tbnid=uIe5oF4gqyH1JM&vet=12ahUKEwjszrDgzYr7AhWV83MBHeZvDXAQMygBegUIARDTAQ..i&docid=f1cbKhpiGfpm5M&w=7973&h=7973&q=avatar%20image&ved=2ahUKEwjszrDgzYr7AhWV83MBHeZvDXAQMygBegUIARDTAQ";
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
                     // currentAccountPicture: CircleAvatar(
                      //  backgroundImage: NetworkImage(Imageurl),
                      //)
                      )),
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
              ),
               ListTile(
                onTap: () async {
                  await Navigator.pushNamed(context, MyRoutes.buttonRoute);
                },
                leading: Icon(CupertinoIcons.list_bullet_below_rectangle, color: Colors.white),
                title: Text(
                  "Elevated Button",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
      ),
    );
  }
}
