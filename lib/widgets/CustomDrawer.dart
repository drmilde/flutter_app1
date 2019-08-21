import 'package:flutter/material.dart';

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
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text("Custom Drawer"),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text("Erster Eintrag"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Zweiter Eintrag"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Close"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
