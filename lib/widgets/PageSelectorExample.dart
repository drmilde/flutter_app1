import 'package:flutter/material.dart';

class PageSelectorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: DefaultTabController(
        length: 3,
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
                        children: <Widget>[
                          Container(
                            color: Colors.grey,
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Container(
                            color: Colors.green,
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Container(
                            color: Colors.blue,
                            child: SizedBox(
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ],
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
