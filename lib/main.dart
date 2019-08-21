import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/InputPage.dart';
import 'package:flutter_app1/pages/ContactListPage.dart';
import 'package:flutter_app1/widgets/CustomDrawer.dart';

// Import package
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  final PermissionHandler _permissionHandler = PermissionHandler();

  Future<bool> _requestPermission(PermissionGroup permission) async {
    var result = await _permissionHandler.requestPermissions([permission]);

    if (result[permission] == PermissionStatus.granted) {
      return true;
    }
    return false;
  }

  Future<bool> requestContactsPermission() async {
    return _requestPermission(PermissionGroup.contacts);
  }
}

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

  void requestContacts() async {
    PermissionService ps = PermissionService();

    var granted = await ps.requestContactsPermission();
    print("permission are {$granted}");

    if (granted) {
      Iterable<Contact> _contacts = await ContactsService.getContacts();

      for (Contact value in _contacts) {
        String dn = value.displayName;
        print("name ist {$dn} \n");
      }
    }
  }

  void _incrementCounter() {
    // increase counter
    setState(() {
      _counter++;
    });

    // request contacts
    requestContacts();

    // open input page
    /*
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => InputPage(
                  title: "Input, Baby",
                )));
    */

    // open contacts page
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ContactListPage()));
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
