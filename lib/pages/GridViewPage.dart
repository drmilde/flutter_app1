import 'package:flutter/material.dart';
import 'package:flutter_app1/widgets/PageSelectorExample.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  final clickTiles = <Widget>[
    simpleCardRow(Colors.green, 80.0, 80.0, Text("Simple")),
    simpleCardRow(Colors.blue, 80.0, 80.0, Text("Simple")),
    simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.person)),
    simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.access_time)),
    simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.backup)),
    simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.clear)),
    simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.delete)),
    simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.edit_location)),
    simpleCardRow(
        Colors.grey.shade200, 80.0, 80.0, Icon(Icons.favorite_border)),
    simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.favorite))
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
        Container(
          color: Colors.lime,
          width: 100,
          child: ListView.builder(
              itemCount: clickTiles.length,
              itemBuilder: (context, index) {
                return clickTiles[index];
              }),
        ),
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
                    PageSelectorExample(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                    smallPart(),
                  ],
                )),
          ),
        )
        //createSecondaryList(),
      ],
    );
  }

  Padding smallPart() {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        height: 50,
        color: Colors.grey,
      ),
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

  static Row simpleCardRow(color, width, height, content) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          color: color,
          // The elevation determines shade.
          elevation: 10.0,
          child: InkWell(
            splashColor: Colors.blue.shade100,
            onTap: () {},
            child: Container(
              constraints: BoxConstraints.expand(width: width, height: height),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    content,
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
