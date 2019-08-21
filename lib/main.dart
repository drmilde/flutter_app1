import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/InputPage.dart';
import 'package:flutter_app1/widgets/CustomDrawer.dart';

// Import package
import 'package:contacts_service/contacts_service.dart';

void main() => runApp(BirthdayCalenderApp());

class BirthdayCalenderApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
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
  int _counter = 0;

  // Get all contacts on device

  void doit() async {
    Iterable<Contact> _contacts = await ContactsService.getContacts();
    print(_contacts);
  }


  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    // doit();

    /*
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => InputPage(
                  title: "Input, Baby",
                )));
     */
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
            Text(
              'Na Toll: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
