import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/AnimatedSplashPage.dart';
import 'package:flutter_app1/pages/BirthayListPage.dart';
import 'package:flutter_app1/pages/BirthdayHeaderPage.dart';
import 'package:flutter_app1/pages/BottomNavigationBarPage.dart';
import 'package:flutter_app1/pages/ContactListPage.dart';
import 'package:flutter_app1/pages/GridViewPage.dart';
import 'package:flutter_app1/pages/InputPage.dart';
import 'package:flutter_app1/pages/ListCardPage.dart';
import 'package:flutter_app1/pages/SliverListPage.dart';

class CustomDrawer extends StatefulWidget {
  final String title;

  CustomDrawer({Key key, this.title}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  void _incrementCounter() {
    setState(() {
      // mach was Sinnvolles hier
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Die Geburtstags-App"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Neuer Eintrag"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InputPage(
                              title: "Input, Baby",
                            )));
              },
            ),
            ListTile(
              title: Text("Kontakte übernehmen"),
              onTap: () {
                // open contacts page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactListPage()));
              },
            ),
            ListTile(
              title: Text("Geburtstagsliste"),
              onTap: () {
                // open contacts page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BirthdayListPage()));
              },
            ),
            ListTile(
              title: Text("BirthdayHeaderList"),
              onTap: () {
                // open contacts page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BirthdayHeaderPage()));
              },
            ),
            ListTile(
              title: Text("SliverListPage"),
              onTap: () {
                // open contacts page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SliverListPage()));
              },
            ),
            ListTile(
              title: Text("BottomNavigationBarPage"),
              onTap: () {
                // open contacts page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavigationBarPage()));
              },
            ),
            ListTile(
              title: Text("AnimatedSplashPage"),
              onTap: () {
                // open contacts page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnimatedSplashPage()));
              },
            ),
            ListTile(
              title: Text("ListCardPage"),
              onTap: () {
                // open contacts page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListCardPage()));
              },
            ),
            ListTile(
              title: Text("GridViewPage"),
              onTap: () {
                // open contacts page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridViewPage()));
              },
            ),
            ListTile(
              title: Text("Schliessen"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
