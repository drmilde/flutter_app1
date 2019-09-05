import 'package:flutter/material.dart';
import 'package:flutter_app1/widgets/BoxWidget.dart';
import 'package:flutter_app1/widgets/BoxWidgetInkWell.dart';
import 'package:flutter_app1/widgets/FilledListViewWidget.dart';
import 'package:flutter_app1/widgets/PageSelectorWidget.dart';
import 'package:flutter_app1/widgets/SimpleCardRowWidget.dart';
import 'package:flutter_app1/widgets/SmallBoxWidget.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  final clickTiles = <Widget>[
    SimpleCardRowWidget(80.0, 80.0, Colors.green, Text("Simple")),
    SimpleCardRowWidget(80.0, 80.0, Colors.blue, Text("Simple")),
    SimpleCardRowWidget(80.0, 80.0, Colors.grey.shade200, Icon(Icons.person)),
    SimpleCardRowWidget(
        80.0, 80.0, Colors.grey.shade200, Icon(Icons.access_time)),
    SimpleCardRowWidget(80.0, 80.0, Colors.grey.shade200, Icon(Icons.backup)),
    SimpleCardRowWidget(80.0, 80.0, Colors.grey.shade200, Icon(Icons.clear)),
    SimpleCardRowWidget(80.0, 80.0, Colors.grey.shade200, Icon(Icons.delete)),
    SimpleCardRowWidget(
        80.0, 80.0, Colors.grey.shade200, Icon(Icons.edit_location)),
    SimpleCardRowWidget(
        80.0, 80.0, Colors.grey.shade200, Icon(Icons.favorite_border)),
    SimpleCardRowWidget(80.0, 80.0, Colors.grey.shade200, Icon(Icons.favorite))
  ];

  @override
  Widget build(BuildContext context) {
    print(clickTiles.length);
    return Scaffold(
        appBar: AppBar(
          title: Text("GridViewPage"),
        ),
        body: pageBody());
  }

  Row pageBody() {
    return Row(
      children: <Widget>[
        FilledListViewWidget(
            30, 100, Colors.grey.shade400, 70, 70, Colors.indigo),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    PageSelectorWidget(300, 200, 10),
                    PageSelectorWidget(300, 100, 5),
                    SmallBoxWidget(40, Colors.indigo),
                    SmallBoxWidget(40, Colors.indigo),
                    SmallBoxWidget(40, Colors.indigo),
                    SmallBoxWidget(40, Colors.indigo),
                    SmallBoxWidget(40, Colors.indigo),
                    SmallBoxWidget(40, Colors.indigo),
                    SmallBoxWidget(40, Colors.indigo),
                  ],
                )),
          ),
        )
        //createSecondaryList(),
      ],
    );
  }

  Expanded createSecondaryList() {
    return Expanded(
      child: Container(
        color: Colors.green,
        width: 100,
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.amber,
            ),
            Container(
              height: 500,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      color: Colors.green.shade100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      color: Colors.green.shade100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      color: Colors.green.shade100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      color: Colors.green.shade100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      color: Colors.green.shade100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      color: Colors.green.shade100,
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.grey.shade100,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue.shade100,
                  ),
                  Container(
                    height: 120,
                    color: Colors.red.shade100,
                  ),
                  Container(
                    height: 120,
                    color: Colors.grey.shade100,
                  ),
                  Container(
                    height: 20,
                    color: Colors.grey.shade100,
                  ),
                ],
              ),
            )
            //contentPageListViewBuilder(),
          ],
        ),
      ),
    );
  }

  ListView contentPageListViewBuilder() {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return (Text(index.toString()));
      },
    );
  }
}
