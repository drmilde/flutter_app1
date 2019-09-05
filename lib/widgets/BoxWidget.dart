import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  Color _color = Colors.blue;
  double _height = 100.0;
  double _width = 30.0;

  BoxWidget(
    this._width,
    this._height,
    this._color,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.black,
        onTap: () {},
        child: Container(
          color: _color,
          child: SizedBox(
            width: _width,
            height: _height,
          ),
        ),
      ),
    );
  }
}
