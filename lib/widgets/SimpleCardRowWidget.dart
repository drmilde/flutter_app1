import 'package:flutter/material.dart';

class SimpleCardRowWidget extends StatelessWidget {
  double _width;
  double _height;
  Color _color;
  Widget _content;

  SimpleCardRowWidget(this._width, this._height, this._color, this._content);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          color: _color,
          // The elevation determines shade.
          elevation: 10.0,
          child: InkWell(
            splashColor: Colors.blue.shade100,
            onTap: () {},
            child: Container(
              constraints:
                  BoxConstraints.expand(width: _width, height: _height),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _content,
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
