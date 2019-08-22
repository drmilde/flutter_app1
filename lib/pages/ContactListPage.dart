import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/data/DataModel.dart';
import 'package:flutter_app1/helper/PermissionService.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({Key key}) : super(key: key);

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  Iterable<Contact> _contacts;

  Widget _buildRow(int index, Contact c) {
    return ListTile(
      leading: CircleAvatar(child: Text("$index")),
      title: Text(c.displayName),
      trailing: Icon(Icons.contacts),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    PermissionService ps = PermissionService();
    ps.requestContacts().then((result){
      setState(() {
        _contacts = result;
        DataModel.clear();

        for (Contact value in _contacts) {
          String dn = value.displayName;
          BirthdayData bd = BirthdayData(dn, "xxxx", DateTime(1996, 09, 28));
          DataModel.add(bd);
        }

        DataModel.doPrint();
      });
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    if (_contacts == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Contact List"),
        ),
        body: Center(
          child: Text("LOADING"),
        )
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _contacts.length,
          padding: EdgeInsets.all(16.0),
          itemBuilder: (context, idx) {
            return _buildRow(idx, _contacts.elementAt(idx));
          },
        ),
      ),
    );
  }
}
