import 'package:flutter/material.dart';

import 'BoxWidgetInkWell.dart';

class FilledListViewWidget extends StatelessWidget {
  int _length;
  double _width;
  Color _background;
  double _tileWidth;
  double _tileHeight;
  Color _tileColor;

  FilledListViewWidget(this._length, this._width, this._background,
      this._tileWidth, this._tileHeight, this._tileColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _background,
      width: _width,
      child: ListView.builder(
          itemCount: _length,
          itemBuilder: (context, index) {
            return BoxWidgetInkWell(_tileWidth, _tileHeight, _tileColor, 8);
          }),
    );
  }
}
