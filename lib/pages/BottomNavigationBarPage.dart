import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Center(
          child: Icon(
        Icons.cake,
        size: 64,
        color: Colors.deepOrange,
      )),
      Center(
          child: Icon(
        Icons.person,
        size: 64,
        color: Colors.lightBlue,
      )),
      Center(
          child: Icon(
        Icons.calendar_view_day,
        size: 64,
        color: Colors.deepOrange,
      )),
    ];

    final _kBottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.cake),
        title: Text("cake"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text("person"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.view_day),
        title: Text("view"),
      ),
    ];


    // sollte gleich sein, sont knallt es :)
    assert(_kBottomNavBarItems.length == _kTabPages.length);

    final bottomNavBar = BottomNavigationBar (
      items: _kBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
         setState(() {
           _currentTabIndex = index;
         });
    },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBarPage"),
      ),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
