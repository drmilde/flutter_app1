import 'package:flutter/material.dart';

class ListCardPage extends StatefulWidget {
  const ListCardPage({Key key}) : super(key: key);

  @override
  _ListCardPageState createState() => _ListCardPageState();
}

class _ListCardPageState extends State<ListCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListCardPage"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          /*
          simpleCard(),
          simpleCard(),
          simpleCard(),
          simpleCard(),
          inkwellCard(),
          */
          complexCard(
            context,
            'res/images/products/tasche_00.png',
          ),
          complexCard(
            context,
            'res/images/products/tasche_01.png',
          ),
          complexCard(
            context,
            'res/images/products/tasche_02.png',
          ),
          complexCard(
            context,
            'res/images/products/tasche_03.png',
          ),
        ],
      ),
    );
  }

  Card simpleCard() {
    return Card(
      color: Colors.red,
      // The elevation determines shade.
      elevation: 10.0,
      child: Container(
        height: 100.0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text('Card 1'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget roundedCard() {
  return (Card(
    color: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.elliptical(40.0, 80.0),
      ),
    ),
    child: Container(
      height: 100.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text('Card 3 (with custom border radius)'),
          ),
        ],
      ),
    ),
  ));
}

Widget complexCard(context, String imageAssetPath) {
  return (Card(
    color: Colors.amberAccent,
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 180.0,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  child: Image.asset(
                    imageAssetPath,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Positioned(
                bottom: 16.0,
                left: 16.0,
                right: 16.0,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Card 4 (complex example)',
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('SHARE'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('EXPLORE'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  ));
}

Widget inkwellCard() {
  return (Card(
    color: Colors.green,
    margin: EdgeInsets.all(20.0),
    elevation: 0.0,
    child: Container(
      height: 100.0,
      child: InkWell(
        splashColor: Colors.deepOrange,
        onTap: () {},
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text('Card 2 (with Inkwell effect on tap)'),
            ),
          ],
        ),
      ),
    ),
  ));
}
