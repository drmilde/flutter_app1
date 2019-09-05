import 'package:flutter/material.dart';

import 'BoxWidget.dart';

class PageSelectorWidget extends StatelessWidget {
  double _height = 200.0;
  double _width = 300.0;
  int _numChildren = 4;

  int _currentColor = 0;

  var _colors = <Color>[
    Colors.amber,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.cyan,
    Colors.deepOrange,
    Colors.blueGrey,
    Colors.indigo,
  ];

  List<BoxWidget> _children = new List<BoxWidget>();

  PageSelectorWidget(double width, double height, numChildren) {
    _height = height;
    _width = width;
    _numChildren = numChildren;

    for (int i = 0; i < _numChildren; i++) {
      _children.add(new BoxWidget(100, 100, _colors[_currentColor]));
      _currentColor++;
      _currentColor = _currentColor % _colors.length;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      child: DefaultTabController(
        length: _numChildren,
        child: Builder(
          builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: IconTheme(
                      data: IconThemeData(
                        size: 128.0,
                        color: Colors.orange,
                      ),
                      child: TabBarView(
                        children: _children,
                      ),
                    ),
                  ),
                  TabPageSelector(),
                ],
              )),
        ),
      ),
    );
  }

  static const _kIcons = <Icon>[
    Icon(Icons.favorite),
    Icon(Icons.tab),
    Icon(Icons.satellite),
  ];
}
