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
          planetCard(
            'res/images/products/tasche_00.png',
          ),
          planetCard(
            'res/images/products/tasche_01.png',
          ),
          planetCard(
            'res/images/products/tasche_02.png',
          ),
          planetCard(
            'res/images/products/tasche_03.png',
          ),
          planetCard(
            'res/images/products/tasche_04.png',
          ),
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
  return Container(
    child: (Card(
      color: Colors.lime,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100.0,
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
                  bottom: 0.0,
                  left: 16.0,
                  right: 16.0,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Tasche',
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
    )),
  );
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

Widget planetCard(String imageAssetPath) {
  return Card(
    margin: EdgeInsets.all(5.0),
    child: Stack(
      children: <Widget>[
        Container(
          height: 124.0,
          margin: new EdgeInsets.only(left: 0.0),
          decoration: new BoxDecoration(
            gradient: LinearGradient(colors: [Colors.lime, Colors.deepOrange]),
            color: new Color(0xFF333366),
            shape: BoxShape.rectangle,
            borderRadius: new BorderRadius.circular(8.0),
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(0.0, 10.0),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Container(
            child: Image.asset(
              imageAssetPath,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    ),
  );
}
