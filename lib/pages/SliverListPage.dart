import 'package:flutter/material.dart';

class SliverListPage extends StatefulWidget {
  @override
  _SliverListPageState createState() => _SliverListPageState();
}

class _SliverListPageState extends State<SliverListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.deepOrange,
          floating: false,
          pinned: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("Hallo"),
            background: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: Colors.black26,
                width: 1.0,
              ))),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {},
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return (listItem(index.toString(), index));
          }),
        ),
      ]),
    );
  }

  // Helper to build the list item

  Widget listItem(String title, int index) {
    return Container(
      height: 50,
      color: (index % 2 == 0) ? Colors.lightBlue : Colors.blueGrey,
      child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
        children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(title),
            ),
            Expanded(
              flex: 1,
              child: Text(index.toString()),
            ),
            Expanded(
              flex: 1,
              child: Icon(Icons.cake),
            ),
        ],
      ),
          )),
    );
  }
}
