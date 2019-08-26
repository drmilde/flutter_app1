import 'package:flutter/material.dart';

class BirthdayHeaderPage extends StatefulWidget {
  @override
  _BirthdayHeaderPageState createState() => _BirthdayHeaderPageState();
}

class _BirthdayHeaderPageState extends State<BirthdayHeaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BirthdayHeader"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 500,
                height: 200,
                color: Colors.blue,
              ),
              Text("BirthdayHeader Liste"),
            ],
          ),
        ),
      ),
    );
  }
}
