import 'package:flutter/material.dart';

class BoxWidgetInkWell extends StatelessWidget {
  double _width;
  double _height;
  Color _color;
  double _elevation;

  BoxWidgetInkWell(this._width, this._height, this._color, this._elevation);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Card(
          color: _color,
          elevation: _elevation,
          child: InkWell(
            onTap: () {},
            splashColor: Colors.white,
            child: Container(
              width: _width,
              height: _height,
            ),
          ),
        ),
      ),
    );
  }
}
