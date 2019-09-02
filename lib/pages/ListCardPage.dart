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
      body: Container(child: createListeView()),
    );
  }

  ListView createListeView() {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        simpleCardRow(Colors.green, 80.0, 80.0, Text("Simple")),
        simpleCardRow(Colors.blue, 80.0, 80.0, Text("Simple")),
        simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.person)),
        simpleCardRow(
            Colors.grey.shade200, 80.0, 80.0, Icon(Icons.access_time)),
        simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.backup)),
        simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.clear)),
        simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.delete)),
        simpleCardRow(
            Colors.grey.shade200, 80.0, 80.0, Icon(Icons.edit_location)),
        simpleCardRow(
            Colors.grey.shade200, 80.0, 80.0, Icon(Icons.favorite_border)),
        simpleCardRow(Colors.grey.shade200, 80.0, 80.0, Icon(Icons.favorite)),
        /*
        inkwellCard(),
        planetCard(
          'res/images/fussball/logo/96x96/logo_bayer_04_leverkusen_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_borussia_moenchengladbach._96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_bvb_dortmund_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_fc_augsburg_96x96.png',
        ),

        planetCard(
          'res/images/fussball/logo/96x96/logo_fortuna_duesseldorf_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_fsv_mainz_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_fc_union_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_fc_schalke_04_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_fc_koeln_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_fc_bayern_96x96.png',
        ),

        planetCard(
          'res/images/fussball/logo/96x96/logo_hertha_bsc_berlin_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_rb_leipzig_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_sc_freiburg_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_sc_paderborn_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_SGE_frankfurt_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_sv_werder_bremen_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_tsg_hoffenheim_96x96.png',
        ),
        planetCard(
          'res/images/fussball/logo/96x96/logo_vfl_wolfsburg_96x96.png',
        ),
        */

        /*
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
        */
      ],
    );
  }

  Row simpleCardRow(color, width, height, content) {
    return Row(
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
