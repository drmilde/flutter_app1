import 'package:flutter/material.dart';

class BirthdayListPage extends StatefulWidget {
  const BirthdayListPage({Key key}) : super(key: key);

  @override
  _BirthdayListPageState createState() => _BirthdayListPageState();
}

class _BirthdayListPageState extends State<BirthdayListPage> {
  Widget _buildRow(int index) {
    return ListTile(
      leading: CircleAvatar(child: Text("$index")),
      title: Text("Geburtstag $index"),
      trailing: Icon(Icons.contacts),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Birthday List"),
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
