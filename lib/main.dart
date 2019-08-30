import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/AnimatedSplashPage.dart';
import 'package:flutter_app1/widgets/CustomDrawer.dart';

import 'data/BirthdayList.dart';
import 'data/DataModel.dart';
import 'helper/PermissionService.dart';

void main() => runApp(BirthdayCalenderApp());

class BirthdayCalenderApp extends StatelessWidget {
  // This widget is the root of your application.
  DataModel GeburtagsListe = DataModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //themeMode: ThemeMode.system,
      title: 'Mach die Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Tolle Sache'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Get all contacts on device

  void _incrementCounter() {
    // increase counter
    setState(() {
      // was intelligentes machen
    });

    // request contacts
    PermissionService ps = PermissionService();
    ps.requestContacts();

    // open input page
    /*
    */
  }

  void _testJson() {
    DataModel dm = new DataModel();

    DataModel.add(new BirthdayData("Antonia", "Milde", new DateTime.now()));
    DataModel.add(new BirthdayData("Rebecca", "Milde", new DateTime.now()));
    DataModel.add(new BirthdayData("Rebecca", "Milde", new DateTime.now()));
    DataModel.add(new BirthdayData("Rebecca", "Milde", new DateTime.now()));

    String jsonString = DataModel.toJson();
    print(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: CustomDrawer(title: "toll"),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.scale(
              scale: 5.0,
              child: Icon(Icons.cake),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Die Geburtstags-App',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
        onPressed: _testJson,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
