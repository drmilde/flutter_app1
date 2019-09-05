import 'package:flutter/material.dart';

class SmallBoxWidget extends StatelessWidget {
  double _height;
  Color _color;

  SmallBoxWidget(this._height, this._color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue.shade100,
        child: Container(
          height: _height,
          color: _color,
        ),
      ),
    );
  }
}
