import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({Key key}) : super(key: key);

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  Widget _buildRow(int index) {
    return ListTile(
      leading: CircleAvatar(child: Text("$index")),
      title: Text("Kontakt $index"),
      trailing: Icon(Icons.contacts),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          padding: EdgeInsets.all(16.0),
          itemBuilder: (context, idx) {
            return _buildRow(idx);
          },
        ),
      ),
    );
  }
}
