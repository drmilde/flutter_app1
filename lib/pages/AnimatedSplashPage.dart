import 'package:flutter/material.dart';

class AnimatedSplashPage extends StatefulWidget {
  @override
  _AnimatedSplashPageState createState() => _AnimatedSplashPageState();
}

class _AnimatedSplashPageState extends State<AnimatedSplashPage> {
  double _animatedWidth = 70;
  double _animatedHeight = 100.0;
  double _flutterLogoHeight = 180.0;
  double _flutterLogoWidth = 180.0;
  bool _AnimationState = true;

  var counterStream = Stream<double>.periodic(
      Duration(milliseconds: 100), (x) => (x * 2).toDouble()).take(101);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSplashPage"),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: Center(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: _animatedWidth,
                    height: _animatedHeight,
                    curve: Curves.easeInCubic,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.fastOutSlowIn,
                      height: _flutterLogoHeight,
                      width: _flutterLogoWidth,
                      child: FlutterLogo(
                        colors: Colors.amber,
                        textColor: Colors.deepOrange,
                      ),
                    ),
                  ),
                )),
            StreamBuilder (
              stream: counterStream,
              builder: (context, snapshot) {
                return Container(
                  width: snapshot.data,
                  height: snapshot.data,
                  color: Colors.brown,
                );
              },
            ),
            RaisedButton(
              child: Text("press me"),
              onPressed: () {
                setState(() {
                  if (_AnimationState) {
                    _animatedWidth = 170;
                    _animatedHeight = 190.0;
                    _flutterLogoHeight = 90.0;
                    _flutterLogoWidth = 90.0;

                    _AnimationState = false;
                  } else {
                    _animatedWidth = 70;
                    _animatedHeight = 100.0;
                    _flutterLogoHeight = 180.0;
                    _flutterLogoWidth = 180.0;

                    _AnimationState = true;
                  }
                  print(_AnimationState);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
